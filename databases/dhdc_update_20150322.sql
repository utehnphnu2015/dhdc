/*
Navicat MySQL Data Transfer

Source Server         : local-mariadb
Source Server Version : 50540
Source Host           : localhost:3309
Source Database       : dhdc_update

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2015-03-23 23:23:08
*/

SET FOREIGN_KEY_CHECKS=0;

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
-- Table structure for rpt_indiv_screen_report2
-- ----------------------------
DROP TABLE IF EXISTS `rpt_indiv_screen_report2`;
CREATE TABLE `rpt_indiv_screen_report2` (
  `selyear` varchar(4) NOT NULL,
  `hospcode` varchar(5) NOT NULL DEFAULT '',
  `pid` varchar(15) NOT NULL DEFAULT '',
  `fullname` varchar(151) DEFAULT NULL,
  `sex` varchar(4) DEFAULT '',
  `age_y` int(21) DEFAULT NULL,
  `result` varchar(1) DEFAULT '',
  PRIMARY KEY (`selyear`,`hospcode`,`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rpt_indiv_screen_report2
-- ----------------------------
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000005', 'นางประเทือง โตมา', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000024', 'นางพรทิพย์ บัณฑิต', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000036', 'น.ส.สำราญ พวงทอง', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000049', 'นางเฉลียว ขำน้ำคู้', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000063', 'นางเรียม อ้นคูเมือง', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000069', 'น.ส.วนิจดา มากจุ้ย', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000088', 'นางปรียาภรณ์ ซื่อแท้', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000091', 'นางสุณี ชุ่มใจ', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000094', 'น.ส.ลำยงค์ กาญจนะ', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000097', 'น.ส.ลำใย กาญจนะ', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000108', 'นางศรีอนันต์ มุงขุนการ', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000123', 'นางสุภาพร มากจุ้ย', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000142', 'น.ส.อ้อมใจ เสือบึงพร้าว', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000150', 'นางบังอร บัวอาจ', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000158', 'น.ส.วินิตรา การะเกตุ', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000170', 'นางชุติกาญจน์ น้อยศรี', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000186', 'น.ส.ศรีหยิน การะเกตุ', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000201', 'นางปิญากุล ยอดบุษดี', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000210', 'น.ส.สำรี ภูมิผล', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000217', 'น.ส.ประทวน ต๊กควรเฮง', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000219', 'นางยุพา การะเกตุ', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000228', 'นางประจวบ อ่อนสี', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000243', 'นางสมศรี กุจั่น', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000246', 'น.ส.บุญสม ขุนชัย', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000258', 'นางอุไรวรรณ ทองปรีชา', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000270', 'นางศรีสุดา บัวประชุม', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000273', 'นางบังอร เอมพิน', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000288', 'นางสมปอง ราชา', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000303', 'นางปราณี เกิดบ้านใหม่', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000352', 'นางเสมียน ยศเจริญ', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000355', 'นางกุหลาบ โพธิ์คง', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000361', 'นางลำพึง วงอาษา', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000363', 'นางปราณี เปรมกาศ', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000364', 'นางพนม คำโสภา', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000365', 'นางประทุมทิพย์ ยอดสงค์', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000367', 'นางจุฑามาศ ต๊กควรเฮง', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000383', 'นางฟิน ทองจุ้ย', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000384', 'นางกุลนิษฐ์ พิมพ์สุข', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000391', 'นางพเยาว์ มากจุ้ย', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000411', 'น.ส.สาหร่าย อุตมหาราช', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000412', 'น.ส.วรรณารัตน์ อู่ไทย', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000428', 'น.ส.นพรัตน์ โพธิ์คง', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000437', 'น.ส.หยิน เสือเปรม', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000447', 'นางกาญจนา จิอู๋', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000465', 'นางเสน่ห์ อู่ไทย', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000470', 'น.ส.สาวิตรี โตเหี้ยม', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000480', 'นางอุ่นเรือน มากอิ่ม', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000482', 'นางโสภา ดีอินทร์', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000496', 'นางจีรนันท์ ทิพมาศ', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000499', 'นางยุพิน สาดสี', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000511', 'น.ส.สุภัทรา พรมขำ', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000515', 'นางเยาวรัตน์ เรืองฉาย', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000521', 'น.ส.สังวาล พี่งสลุด', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000543', 'น.ส.นิตยา บางสี', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000544', 'นางดวงดาว มากจุ้ย', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000558', 'นางเพ็ญ มากจุ้ย', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000577', 'นางวรรณา ใจขันธ์', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000578', 'น.ส.อภิญญา เกิดทิม', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000590', 'นางสายพิณ พึ่งสีใส', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000622', 'น.ส.อาภรณ์ มั่นคง', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000667', 'นางประกอบ มากจุ้ย', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000681', 'น.ส.จำเรียง โตสิงห์', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000690', 'นางอุษณี คำจ่าง', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000697', 'นางดาหวัน อุตมหาราช', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000701', 'นางอำนวย มากจุ้ย', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000723', 'นางอุบล ภูมิผล', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000727', 'นางกัญญา บวบนา', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000733', 'น.ส.จรัญญา กาญจนะ', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000738', 'น.ส.ชรินทร์ ชำนาญต่าย', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000754', 'น.ส.ศิริวรรณ วงอาษา', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000759', 'นางวันเพ็ญ ราชา', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000764', 'น.ส.สายสุนีย์ โตเหี้ยม', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000773', 'นางสนัด สุดสลุด', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000802', 'นางสมพร พรมขำ', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000823', 'น.ส.นัชชา สาดสี', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000845', 'นางสังเวียน พระภักดี', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000869', 'น.ส.สนอง ทิวงษา', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000900', 'นางบังอร บัวประชุม', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000903', 'นางวัฒนา แก้วศรีทอง', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000908', 'นางชา โพธิ์ดง', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000918', 'นางอำนวยพร อ่อนนิ่ม', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000927', 'นางบังเอิญ เที่ยงอยู่', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000928', 'นางลำจวน ทองจุ้ย', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000929', 'นางทองสร้อย เม่นขาว', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000932', 'น.ส.อมราภรณ์ คุ้มบ่อ', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000934', 'นางวาสนา โพดง', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000966', 'น.ส.อนงค์ มากจุ้ย', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '000988', 'น.ส.วาสนา บัวศรี', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001008', 'น.ส.อุบล สุนทอง', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001021', 'น.ส.ลำยงค์ ทรงนาค', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001024', 'นางพยอม ภูมิผล', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001062', 'นางสังวาลย์ ภูมิผล', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001064', 'นางวน เขียวเจ๊ก', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001088', 'นางสมคิด แย้มมา', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001106', 'นางสมคิด รักแจ้ง', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001114', 'นางชนิตา โตกำแพง', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001128', 'นางแจ้ว รักแจ้ง', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001152', 'นางติ๋ม อินทรีย์', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001157', 'น.ส.เตือนตา เกิดทิม', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001168', 'นางสมจอน พุ่มมีจิตร', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001190', 'นางมาลัย อู่ไทย', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001195', 'น.ส.ศิริลักณ์ โพธิ์คง', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001196', 'นางประมวล ศรีปาน', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001206', 'นางวัชรี หนูประโคน', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001215', 'นางสังวรณ์ อู่ไทย', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001228', 'น.ส.จำนงค์ รักแจ้ง', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001244', 'นางเฟี้ยม กาญจนะ', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001263', 'นางเฉลียว ศรีปาน', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001281', 'นางวนิดา ขุนชัย', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001285', 'น.ส.ทองอยู่ ยอดคง', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001292', 'นางอรญา เพ็งสลุด', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001295', 'นางสมพร โตกำแพง', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001300', 'น.ส.กัลญา แนมสมบัติ', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001311', 'นางพา คำดา', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001312', 'นางนุชนาถ บัวอาจ', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001317', 'นางศุภสรณ์ สุขกล้า', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001323', 'น.ส.กาญจนา ช้างทอง', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001335', 'นางบังอร แนมสมบัติ', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001343', 'นางจินตนา หงษ์ทอง', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001347', 'นางสมจิตร์ เนียมจันทร์', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001355', 'นางหวัน มอญสลุด', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001364', 'นางยุพิน ขุนชัย', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001369', 'นางสมปอง เงินจันทร์', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001381', 'นางสำราญ สุกแก้ว', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001386', 'นางจีรพันธ์ ศรีน้อย', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001420', 'นางบรรจง พรมขำ', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001421', 'นางสำราญ อู่ไทย', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001446', 'น.ส.รัชนี รักสุข', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001447', 'น.ส.ลาวัลย์ ชื่นล้อม', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001455', 'นางสุพัฒน์ คงมี', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001465', 'นางเรณู โตมา', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001477', 'น.ส.แฉล้ม ทิวงษา', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001484', 'นางเสนอ ขุนชัย', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001502', 'นางรัตนา กลิ่นแย้ม', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001506', 'น.ส.นพรัตน์ พรมขำ', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001511', 'นางทองหยิบ อินทรีย์', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001515', 'น.ส.ประสิทธิ์ การะเกตุ', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001528', 'นางชญานิศ น้อยศรี', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001534', 'น.ส.กัญญารัตน์ สีชมพู', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001536', 'นางวรรณดี เพ็งสลุด', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001539', 'นางอำนวย ศรีน้อย', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001550', 'นางดาวเรือง กาญจนะ', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001553', 'นางจิรภา ภรรณชนะ', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001556', 'นางสายบัว บัวประชุม', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001569', 'นางจิราภรณ์ เย็นธรามาส', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001578', 'น.ส.เรียม ขุนชัย', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001582', 'นางเฉลิม ทองจุ้ย', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001585', 'นางเรียม ธรรมจักร์', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001590', 'นางน้ำอ้อย พึ่งสีใส', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001591', 'นางชะเม้ย อยู่ดี', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001694', 'นางนงนุช พรมสง่า', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001708', 'น.ส.ณัฐพร เรืองรำหัส', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001711', 'นางไย อุบาลี', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001720', 'นางศรัญญา การะเกตุ', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001732', 'นางสนิท กุจั่น', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001735', 'นางบุญตา ภู่เรือง', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001745', 'นางสังวาลย์ อู่ไทย', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001746', 'น.ส.กุหลาบ สีปาน', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001758', 'นางทองคำ จูสลุด', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001759', 'น.ส.บุญนาค สุขประกอบ', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001765', 'นางอริสา ภูมิผล', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001777', 'นางมัตศิกา มากมี', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001785', 'นางชลอ สวัสดิ์วิชัยโสภิต', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001792', 'นางสมควร โต๊ะโต', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001805', 'นางทุเรียน เรือนเงิน', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001809', 'นางสายหยุด สำเภาทอง', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001849', 'นางสมพิษ โพธิ์ดง', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001859', 'นางบังอร ล้อมจันทร์', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001906', 'นางสุมาลี ภูมิผล', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001914', 'น.ส.อำไพร โกสิงห์', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001939', 'นางบรรญัติ ตรงจริง', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001952', 'นางเรณู บัญญัติ', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001953', 'นางศรีนวล แก้วเรือง', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001961', 'นางสมปอง เจ็กน้อย', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '001962', 'นางสมพร ภูมิผล', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002005', 'นางเรณู ศรีปาน', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002008', 'นางทับทิม อ่อนศรี', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002011', 'นางดาวเรือง เรืองศิริ', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002024', 'นางสุมิตรา อู่ไทย', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002028', 'นางสำเริง เกตุสิงห์สร้อย', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002035', 'นางสนม ต๊กควรเฮง', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002041', 'น.ส.สมจิตร ศรีน้อย', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002052', 'นางอุดม ถ้ำห้อย', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002055', 'น.ส.สมศรี ลือเฟื่อง', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002093', 'น.ส.สังเวียน คงสัมฤทธิ์', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002104', 'นางเจริญ สาดสี', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002107', 'นางวิสุทธิ์ โพธิ์ดง', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002135', 'นางทองสุข มากจุ้ย', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002137', 'นางดาวน้อย โตกำแพง', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002138', 'นางสำเนียง น้อยศรี', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002139', 'นางกุหลาบ บุญพรังค์', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002151', 'น.ส.ลัคน์ระพี ศรีกระจ่าง', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002167', 'นางบุญเรือน ขันตี', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002182', 'นางอำนวย แซ่ด่าน', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002191', 'นางไพรินทร์ วงษ์ประเสริฐ', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002197', 'น.ส.ประไพ การะเกตุ', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002201', 'นางสีนวล เขียวแก้ว', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002216', 'นางโสภา คงเนียม', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002217', 'นางบุญมี บัวผัน', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002226', 'น.ส.นกแก้ว อู่ไทย', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002238', 'นางวีนัส ปทุมวัฒน์', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002240', 'นางแพนน้อย ขุนชัย', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002247', 'นางสำราญ น้อยศรี', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002250', 'นางจเร ศรีน้อย', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002252', 'น.ส.รักขนา เจริญวัย', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002270', 'น.ส.สุริสา คงนาค', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002279', 'น.ส.วาสนา บวบนา', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002296', 'นางรุ่งจรัสศรี ภูมิผล', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002300', 'น.ส.เสาวคนธ์ ภูมิผล', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002337', 'นางสมศรี พึ่งสีใส', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002341', 'น.ส.น้ำเงิน ปานสมบูรณ์', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002344', 'นางมณี อู่ไทย', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002346', 'น.ส.อำไพร ฑีฆะภรณ์', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002372', 'นางสมพร บางสี', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002373', 'นางกรรณิการ์ เปลื้องหน่าย', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002380', 'นางสีนวล บวบนา', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002386', 'นางปรานอม ธรรมชาติ', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002389', 'น.ส.สวยสด เกิดทิม', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002400', 'นางไพเราะ มากสลุด', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002426', 'น.ส.ไฉน เสือเปรม', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002436', 'น.ส.บรรจง สันทอง', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002440', 'นางโสภา บวบนา', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002452', 'นางสุรินทร์ คงนาค', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002462', 'น.ส.อัจจิดาทิพ ขันตี', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002469', 'น.ส.เพชรรัตน์ แซ่ด่าน', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002478', 'น.ส.นาถนารี พูลแสง', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002491', 'นางบุญรวม บวบนา', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002497', 'นางอำพร จันลี', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002509', 'น.ส.ณิภาภัคร นรินทร์', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002512', 'น.ส.สมคิด โต๊ะโต', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002513', 'นางน้ำค้าง การะเกตุ', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002515', 'นางพวน เสือเปรม', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002520', 'นางแหวด โคกพระปราง', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002521', 'นางกิมลี้ กุจั่น', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002522', 'น.ส.วัลยา ปิ่นแก้ว', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002530', 'น.ส.นาตยา จิตฤกษ์', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002531', 'นางสอิ้ง บุญมี', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002533', 'น.ส.วรรณชนก เจริญศิลป์', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002565', 'นางน้ำผึ้ง ยิ้มละมัย', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002566', 'นางสมพร พึ่งศรีศัย', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002569', 'น.ส.จรูญ ป้วนก้อม', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002571', 'นางสำรี เอกพิทักษ์ธน', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002583', 'น.ส.จำรัส ต๊กควรเฮง', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002587', 'นางน้อย วงศ์นุช', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002591', 'น.ส.จรินทร์ ภูมิผล', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002600', 'นางชลอ ทองก๊วย', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002627', 'น.ส.ลำพึง ขุนชัย', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002628', 'น.ส.สวาด ทับทิมทอง', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002631', 'น.ส.ทอน ต๊กควรเฮง', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002652', 'นางถวิล ดีอินทร์', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002653', 'นางจริญญา ทิวงษา', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002661', 'นางจำรัส ศิริกล้า', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002668', 'นางสมปอง โพธิ์คง', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002673', 'นางสิริวรรณ รอดเรือง', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002681', 'นางน้ำเงิน อ่อนสี', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002687', 'นางน้ำผึ้ง ภูมิผล', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002712', 'นางหยัน อู่ไทย', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002717', 'นางดอกดิน ปทุมวัฒน์', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002722', 'นางเฟื้อ การะเกตุ', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002724', 'นางนรินทร์ มีชัย', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002734', 'นางศิริกัลญา มากสลุด', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002756', 'น.ส.สุนิสา โพธิ์ดง', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002770', 'น.ส.อรณี รัศมี', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002779', 'น.ส.นงนุช น้อยศรี', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002805', 'นางฉัยลัย โตกำแพง', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002806', 'นางดาหวัน พึ่งสลุด', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002809', 'น.ส.กมลวรรณ ต๊กควรเฮง', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002825', 'นางกมลวรรณ อู่ไทย', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002830', 'น.ส.นันทินี ขำน้ำคู้', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002832', 'นางสมบูรณ แสงนิล', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002847', 'นางเรือน พึ่งสีใส', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002851', 'นางฟื้น สาดสี', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002872', 'นางชรินทร์ มากจุ้ย', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002894', 'นางสมหมาย ราชา', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002932', 'นางวรรเพ็ง รอดเรือง', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002939', 'นางคิด ขาวทรงธรรม', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002952', 'นางเรียม ขุนชัย', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '002958', 'นางวิรัช ปั้นชาวนา', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '003006', 'นางเพ็ชรี จิตตริด', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '003007', 'น.ส.สุนันท์ สมบูรณ์', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '003024', 'นางระเบียบ อินสุข', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '003026', 'นางสุพีรดา คุปตะนาวิน', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '003066', 'น.ส.นิตญา อินทรีย์', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '003067', 'น.ส.เสนาะ น้อยศรี', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '003072', 'น.ส.วรรณา ชำนาญต่าย', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '003080', 'นางอุดม พุ่มไพร', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '003098', 'นางวิลาวัลย์ ภูมิผล', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '003099', 'นางน้ำค้าง อินทรีย์', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '003102', 'นางเรณู เสือเปรม', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '003117', 'นางกนกวรรณ ทองจุ้ย', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '003135', 'น.ส.มณฑา แก้วเอี่ยม', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '003153', 'นางอุทัยวรรณ เรืองรำหัส', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '003180', 'นางประคอง น้ำดอกไม้', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '003183', 'นางแสวง การะเกตุ', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '003184', 'น.ส.นภาพร สังข์นาค', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '003185', 'นางยุพิน บัวขำ', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '003224', 'นางลำยงค์ ศรีน้อย', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '003235', 'นางบุญส่ง พรมขำ', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '003254', 'น.ส.มาลี กุจั่น', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '003272', 'นางสายทอง รอดเครือทอง', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '003279', 'นางวินิตร คล้ายอ่อง', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '003281', 'นางสำอางค์ สวัสดิ์วิชัยโสภิต', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '003311', 'น.ส.ลำเทียน ชำนาญต่าย', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '003319', 'นางปรานอม โกสิงห์', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '003354', 'นางศาศิญาภัส กี่ธนชัยวัฒน์', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '003363', 'นางลูกคิด กาญจนะ', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '003365', 'นางสุวรรณ อู่ไทย', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '003377', 'นางหลิ่ง บุญพูล', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '003392', 'นางรวีวรรณ ต๊กควรเฮง', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '003396', 'นางจงกล วงอาษา', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '003397', 'น.ส.นิพพาภรณ์ อู่ไทย', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '003411', 'นางเลี่ยม น้อยศรี', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '003420', 'นางลักขณา แขวกระทุ่ม', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '003433', 'น.ส.สุกัญญา พิมพ์สุข', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '003445', 'นางยุพาพร นาคเหล็ก', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '003476', 'น.ส.ทองดี โตกำแพง', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '003534', 'นางสายสิญจน์ อู่ไทย', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '003544', 'นางปราณี คำมาเมือง', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '003551', 'นางวรรณเพ็ญ สีมา', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '003556', 'น.ส.วาสนา โตชาวนา', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '003591', 'นางเพ็ญพยอม อินทร์กำแพง', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '003777', 'น.ส.อังคณา การะเกตุ', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '003787', 'น.ส.ชมัยพร แสงนิล', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '003795', 'น.ส.สาริศา การะเกตุ', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '003797', 'น.ส.ทุเรียน ป้วนก้อม', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '003805', 'นางสุวิมล สีปาน', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '003828', 'น.ส.กฤษณา การะเกตุ', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '003838', 'น.ส.เมธาวี พึ่งสีใส', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '003868', 'น.ส.ศรีเรือน โตกำแพง', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '003894', 'นางนิตย์ การะเกตุ', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '003989', 'นางอารรัตน์ ชมเชยวงศ์', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '004016', 'นางสุรินทร์ คำบาง', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '004137', 'น.ส.พัชรี ศรีคง', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '004225', 'นางจำเนียร กล่ำศรี', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '004226', 'นางวลิดา ศิริโรจน์', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '004228', 'น.ส.ปาณิสรา บุญจันทร์', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '004232', 'นางชนัญญา วีระเสถียร', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '004266', 'น.ส.สุญาณี สังข์วงค์', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07544', '004391', 'นางสุกัลยา บัญญัติ', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000005', 'นางประโลม สว่างวงศ์', 'หญิง', '51', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000013', 'น.ส.สำรวย ท้วมเพ็ง', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000017', 'น.ส.มาลัย ท้วมเพ็ง', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000024', 'นางอุบล ท้วมเพ็ง', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000026', 'นางดอกไม้ จูสลุด', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000034', 'นางประนอม เสือสมิง', 'หญิง', '55', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000042', 'น.ส.สูงเนิน ยกยิ่ง', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000043', 'นางกานดา ยกยิ่ง', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000045', 'นางพะเนือง พึ่งสีใส', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000053', 'น.ส.จำรอง จูสลุด', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000070', 'นางแป้งร่ำ เนตรสังข์', 'หญิง', '50', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000072', 'นางสายหยุด หมวกน้อย', 'หญิง', '45', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000075', 'นางสำรวย อยู่นิ่ม', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000088', 'น.ส.น้ำค้าง เพ็งสลุด', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000090', 'นางเผอิญ ดำจ่าง', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000094', 'น.ส.อมรรัตน์ ดำจ่าง', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000096', 'น.ส.สุกัญญา ไกรกรุง', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000108', 'น.ส.อัจจิมา อยู่นิ่ม', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000116', 'นางทองคำ เงินจันทร์', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000134', 'นางมาลัย ใจขันธ์', 'หญิง', '53', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000143', 'นางรินทร์ ขลัง', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000146', 'นางรำภา พวงทอง', 'หญิง', '51', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000152', 'นางชิด พันธ์มณี', 'หญิง', '52', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000157', 'นางณัฐพร อิ่มมาก', 'หญิง', '45', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000160', 'นางอัมพร ออมเงิน', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000168', 'น.ส.ทัศนีย์ บุญกล้า', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000188', 'นางศิริธร อยู่นิ่ม', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000206', 'นางปราณี ภู่ระหงษ์', 'หญิง', '53', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000212', 'นางนพคุณ ถาวรกูล', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000214', 'น.ส.มาลี เขียวนุ่ม', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000219', 'นางชลอ เขียวนุ่ม', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000229', 'นางจินดา พวงทอง', 'หญิง', '53', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000234', 'น.ส.มณีรัตน์ พวงทอง', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000242', 'น.ส.ประกอบ ใจขันธ์', 'หญิง', '57', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000265', 'นางประเทือง พวงทอง', 'หญิง', '55', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000286', 'น.ส.ศิริญา มีศรี', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000290', 'นางรุ่งรัตน์ นวาวัตน์', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000293', 'นางเกษม มีศรี', 'หญิง', '49', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000296', 'น.ส.จีรนุช แก้ววังน้ำ', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000301', 'นางมน๊อต แก้ววังน้ำ', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000309', 'นางจุฑามาศ ดำจ่าง', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000337', 'นางมานู เกตุทอง', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000340', 'นางรัชดาพร จันทร์โรจน์', 'หญิง', '43', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000346', 'นางกรรณิการ์ เงินกลั่น', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000360', 'นางประเสริฐ ถาวรกูล', 'หญิง', '57', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000368', 'น.ส.นวพร ท้วมเพ็ง', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000370', 'นางจันทร์เพ็ญ กล้าหาญ', 'หญิง', '39', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000371', 'นางมะยม มากร', 'หญิง', '60', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000387', 'นางบังอร ไกรกรุง', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000395', 'นางสำรวม คำชัง', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000406', 'นางวารินทร์ ถาวรกูล', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000421', 'นางบุญชู เกคุเทศ', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000448', 'น.ส.มณี จีนสลุด', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000511', 'นางทองดี กล่อมบาง', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000512', 'นางสำลี พรมแพร', 'หญิง', '42', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000547', 'นางวรวรรณ ดีวังยาง', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000565', 'นางวิชญาดา บุญศิริ', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000575', 'นางบังอร เรืองบ้านโคน', 'หญิง', '50', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000588', 'นางสุกัญญา โชติน้อย', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000592', 'นางเรณู บัญญัติ', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000594', 'น.ส.มาลี บัญญัติ', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000601', 'นางปราณีต การะเกตุ', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000603', 'นางบุญเลิ่ม พระเจริญ', 'หญิง', '53', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000604', 'นางประมวน เพ็งสลุด', 'หญิง', '53', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000610', 'นางส้มแป้น อู่ไทย', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000613', 'นางประทวน มีไชยโย', 'หญิง', '58', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000635', 'นางระวีวรรณ จงทอง', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000643', 'นางประเทือง มากอิ่ม', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000645', 'นางฉันทนา โพธิ์ดง', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000655', 'นางเฉลียว เรืองบ้านโคน', 'หญิง', '58', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000668', 'นางวาสนา ฤกษ์งาม', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000672', 'น.ส.นพรัตน์ จิตบำรุง', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000677', 'นางจรินทร์ ศรีปาน', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000707', 'น.ส.เรียม คำภีร์', 'หญิง', '50', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000711', 'นางสุธารัตน์ เอมพิณ', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000725', 'นางจำเนียร ย่วนพงษ์', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000740', 'นางอัจนารัตน์ นามวงศ์', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000749', 'นางนภาพร มั่นคง', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000752', 'นางมาลี พวงทอง', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000756', 'นางเฉลา สุทธิรัตน์', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000758', 'นางบัวเขียว สาทแก้ว', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000764', 'นางพุฒ ท้วมเพ็ง', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000772', 'นางช้อย เมฆทับ', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000780', 'นางรันทม มอญสลุด', 'หญิง', '47', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000783', 'นางวัญเพ็ญ สาทแก้ว', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000814', 'นางพยอม ภู่ระหงษ์', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000822', 'นางพลึง ขันเกษตร', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000825', 'นางยุพา ท้วมเพ็ง', 'หญิง', '58', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000833', 'นางศรีพรม เม่นขาว', 'หญิง', '38', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000840', 'นางลำยงค์ กลิ่นแย้ม', 'หญิง', '57', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000844', 'นางนงนุช จันทร์อิน', 'หญิง', '44', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000850', 'นางนพรัตน์ พ่วงบุใหญ่', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000851', 'นางธนพร สิทธิวรรณรัตน์', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000853', 'นางประนอม ป้วนก้อม', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000854', 'น.ส.สายฝน ป้วนก้อม', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000861', 'นางกุล ท้วมเพ็ง', 'หญิง', '47', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000863', 'นางอำไพ ขันตี', 'หญิง', '32', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000867', 'นางเย็น คงเดชา', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000871', 'น.ส.วันดี คงเดชา', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000880', 'นางพัฒนา อินทร์สลุด', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000885', 'นางสำลวย กลิ่นแย้ม', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000898', 'นางทิพมาศ รัตนมณี', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000909', 'นางเฉลียว โพธิโชติ', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000915', 'นางชลอ ส่งประเสริฐ', 'หญิง', '57', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000921', 'นางรัตนา ส่งประเสริฐ', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000924', 'นางบัวเผียน ส่งประเสริฐ', 'หญิง', '45', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000928', 'นางลูกชิ้น กล่ำอินทร์', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000933', 'นางคนึงนิตย์ กล่ำอินทร์', 'หญิง', '35', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000940', 'นางยุพิน อินทร์โน', 'หญิง', '44', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000969', 'น.ส.วันเพ็ญ พรมแพร', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000989', 'นางสาลินี ภู่ระหงษ์', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '000991', 'นางชลอ พานทวีป', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '001006', 'นางสุมาลี ทองปลิว', 'หญิง', '59', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '001012', 'นางสำเนียง พันธ์พัด', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '001020', 'น.ส.ปริญญา แผนนรินทร์', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '001021', 'นางรัชนีย์ กลิ่นแย้ม', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '001024', 'นางโนลี พูนแบน', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '001043', 'นางการะเกตุ มีดี', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '001051', 'น.ส.น้ำค้าง กลิ่นสวัสดิ์', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '001076', 'นางปั้น กุลสุข', 'หญิง', '48', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '001085', 'นางจินตนา อ่อนศรี', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '001133', 'น.ส.หล่อ พวงทอง', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '001157', 'นางวล อ้นแจ่ม', 'หญิง', '58', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '001178', 'นางทองชุบ มีดี', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '001181', 'นางสุมาลี ส่งประเสริฐ', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '001209', 'น.ส.นิดารัตน์ กลิ่นแย้ม', 'หญิง', '32', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '001216', 'นางรำพึง กลิ่นแย้ม', 'หญิง', '58', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '001222', 'นางน้ำค้าง ตะสูงเนิน', 'หญิง', '59', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '001239', 'นางบุญชู สังข์บัวแก้ว', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '001265', 'นางเฉลิม เงินกลั่น', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '001273', 'นางศรีนวล โลนุชิต', 'หญิง', '57', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '001285', 'นางสมพร กลิ่นแย้ม', 'หญิง', '57', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '001291', 'นางบุญลือ ศรีคง', 'หญิง', '57', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '001304', 'นางสมคิด ภู่ระหงษ์', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '001317', 'นางประทวน ขันสังข์', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '001320', 'นางเสน่ห์ โตนิ่ม', 'หญิง', '58', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '001325', 'นางประจวบ มีศรี', 'หญิง', '57', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '001337', 'นางยุพา มีศรี', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '001368', 'นางเชย อ่อนศรี', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '001375', 'นางจินตนา ดำจ่าง', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '001387', 'น.ส.สุนันท์ พวงทอง', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '001396', 'นางบุญมา ส่งประเสริฐ', 'หญิง', '44', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '001408', 'นางวาสนา บุญเกิด', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '001420', 'นางลักขณา ท้วมเพ็ง', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '001457', 'นางลำดวน สีสังข์', 'หญิง', '58', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '001472', 'นางสุรัตนา ภู่ระหงษ์', 'หญิง', '47', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '001493', 'นางผัน ราชาบุตร', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '001529', 'นางเชียร สว่างวงค์', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '001534', 'นางทัศนีย์ สวัสดี', 'หญิง', '41', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '001550', 'นางมะลิ มีกำเหนิด', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '001555', 'นางฉลวย ภูมิผล', 'หญิง', '59', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '001562', 'นางลัดดา พุ่มจันทร์', 'หญิง', '56', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '001583', 'นางกำลัย กลิ่นแย้ม', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '001586', 'นางน้ำย้วน คำสวัสดิ์', 'หญิง', '58', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '001629', 'นางสี ส่งประเสริฐ', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '001661', 'นางสุวรรณา จันทร์เนียม', 'หญิง', '33', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '001701', 'นางพรอนันต์ เกิดดี', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '001720', 'นางบุญธรรม สาดสี', 'หญิง', '53', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '001738', 'นางบุญเลือน พวงทอง', 'หญิง', '53', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '001758', 'น.ส.ลำพา เพ็งสลุด', 'หญิง', '58', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '001760', 'นางอำนวย เกิดดี', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '001776', 'นางสมใจ เงินกลั่น', 'หญิง', '50', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '001777', 'นางเกษร เกิดดี', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '001840', 'นางพรรณี สถานสุข', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '001848', 'นางน้อย พุ่มจันทร์', 'หญิง', '34', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '001849', 'นางบุญช่วย เกตุเทศ', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '001851', 'นางลมุล พวงทอง', 'หญิง', '46', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '001856', 'นางนงค์นุช สาดสี', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '001885', 'น.ส.เกตุ ใจขันธ์', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '001904', 'นางขวัญกมล โชติเนตร', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '001908', 'น.ส.เฉลียว ใจขันธ์', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '001962', 'น.ส.เจริญ มั่นคง', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '001991', 'นางอัมพร พวงทอง', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '001996', 'นางสมคิด สุขอร่าม', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '001999', 'นางจันทร์แรม เขียวจู', 'หญิง', '30', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '002000', 'นางอำพร กลิ่นแย้ม', 'หญิง', '55', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '002023', 'นางธนพร ศรีคง', 'หญิง', '41', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '002058', 'น.ส.จรูญ พรมแพร', 'หญิง', '34', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '002060', 'นางรัตน์ติกร ราชาบุตร', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '002072', 'นางจิราพร ราชา', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '002108', 'น.ส.นพปรียาณันม์ สรรเสริญ', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '002131', 'น.ส.อาลี เวชสวรรค์', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '002187', 'นางละม่อม กลิ่นแย้ม', 'หญิง', '50', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '002188', 'น.ส.สุมาลี ชัยพัฒ', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '002208', 'นางวิลาสินี แย้มสุข', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '002228', 'นางรัชชานนท์ ไชยเชษฐ์', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '002230', 'นางสุนันทา กล่ำจีน', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '002262', 'นางเพ็ญศรี อยู่นิ่ม', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '002339', 'น.ส.จำเริญ ภูมิผล', 'หญิง', '32', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '002377', 'น.ส.อารญา สัตวาที', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '002453', 'น.ส.รัตน์ดา พวงทอง', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '002454', 'นางคำมูล สีหาสุทธิ', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '002497', 'น.ส.ประกอบ มีชม', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '002507', 'น.ส.กัญญารัตน์ เรืองรำหัส', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '002582', 'นางสุดารัตน์ ไทยศรี', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '002607', 'นางมาลี นุ้ยเย็น', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '002650', 'นางสุภาภรณ์ สมานเขตกิจ', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '002687', 'นางสนิท ธูปกร', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '002691', 'นางกาญจนา วิสุทธิ์เสน', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07545', '002766', 'น.ส.สิริลักษณ์ อังกรูพิริยะ', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000000195', 'นางแพว ดีอินทร์', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000000887', 'นางปราณี ศรีปาน', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000001679', null, 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000002652', 'นางมลฑา สังข์ชา', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000002697', 'นางงาม อ่วมเพ็ชร', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000002714', 'น.ส.หทัยชนก เกตุโต', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000003', 'น.ส.มีนา อ้นแจ่ม', 'หญิง', '43', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000005229', null, 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000010', 'นางสุรินทร์ พึ่งสลุด', 'หญิง', '48', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000015', 'นางปราณี แย้มทัศน์', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000017', 'น.ส.กฤษณา แย้มทัศน์', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000021', 'น.ส.น้ำหวาน มันตะวัตร์', 'หญิง', '43', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000036', 'นางมณฑา น่วมด้วง', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000048', 'นางทองห่อ กล่ำจีน', 'หญิง', '54', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000081', 'น.ส.แป้งหอม พรมแพร', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000095', 'นางสมจิตร อ้นแจ่ม', 'หญิง', '44', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000101', 'น.ส.อินทร์ พรมแพร', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000129', 'นางสวาท กิจทะ', 'หญิง', '57', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000144', 'นางเรียม จันทรมงคล', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000154', 'น.ส.พรพิตร์ รุ่งโรจน์', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000165', 'น.ส.มลทิรา เล็งเนตร', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000170', 'น.ส.นิผล เนียมจันทร์', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000190', 'น.ส.สมาน จีนสลุด', 'หญิง', '48', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000212', 'นางจุลี จันทร์เกตุ', 'หญิง', '42', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000218', 'นางสมคิด โตนิ่ม', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000224', 'นางชิด ทับเอม', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000234', 'นางถวิล เจริญทิม', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000256', 'นางละเอียด โตนิ่ม', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000261', 'นางจำนงค์ โมรีรัตน์', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000272', 'นางอารีย์ ทองพ่อค้า', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000283', 'นางสุภัชนา สุวรรณเลิศ', 'หญิง', '40', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000289', 'นางอุดร ชมเมืองมิ่ง', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000299', 'นางเสน่ห์ คงเทศ', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000300', 'น.ส.เล็ก เทียนอยู่', 'หญิง', '56', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000304', 'นางเฉลียว จันทร์วงศ์', 'หญิง', '51', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000312', 'นางปลิ่น โตเฟื่อง', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000319', 'นางเป้า นุ้ยเย็น', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000323', 'นางเสริม เทียนอยู่', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000340', 'นางญาณิศา ดาด้วง', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000341', 'นางขาว เพ็ชรพลอย', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000352', 'น.ส.บังอร นาคคล้าย', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000362', 'นางสีนวล บัวจันทร์', 'หญิง', '55', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000374', 'นางมาลี บุญเกิดกูล', 'หญิง', '39', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000385', 'น.ส.จิรภัทร นาคคล้าย', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000393', 'นางรัชสิตา จันทร์เปีย', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000396', 'นางนิด อุ่นบุญ', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000409', 'น.ส.สีนวล บุญย่านยาว', 'หญิง', '50', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000416', 'นางวิไลวรรณ ใจภักดี', 'หญิง', '51', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000426', 'นางแฉล้ม พรมมา', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000433', 'นางอังชัน โตเมฆ', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000444', 'นางสำลี คงเจริญ', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000445', 'น.ส.จุฑารัตน์ คงเจริญ', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000446', 'น.ส.ทิพวรรณ คงเจริญ', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000452', 'นางบุญชู แก้วภู่', 'หญิง', '49', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000458', 'นางวิเชียร นุชมี', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000491', 'นางสมใจ หว่างเชนทร์', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000501', 'น.ส.เฉลย จันทร์อ่วม', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000502', 'นางจุฑามาศ จันทร์อ่วม', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000508', 'นางกัลยา ชมเมืองมิ่ง', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000531', 'น.ส.สมพร เก่าราชการ', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000533', 'นางอำพัน ปานสมบูรณ์', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000539', 'น.ส.วัชรี คชอ้น', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000548', 'นางบุญช่วย จันทร์อ่วม', 'หญิง', '50', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000555', 'นางสำราญ จันทร์อ่วม', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000558', 'นางคนึงนิจ ขำตั้ง', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000567', 'นางพรทิพย์ พวงทอง', 'หญิง', '51', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000570', 'นางกัญญา ทองพ่อค้า', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000576', 'นางมยุรี จีนสลุด', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000585', 'น.ส.อังขณา กฤษณปัณณะ', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000595', 'น.ส.ชิน โตเฟื่อง', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000607', 'นางสุทิน เอี่ยมสา', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000617', 'นางสุรีรัตน์ จันทร์อ่วม', 'หญิง', '41', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000619', 'นางสุชา ธนสัมปันน์', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000626', 'น.ส.ปวีนา ทองพ่อค้า', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000633', 'นางเชิง ทองพ่อค้า', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000638', 'นางจีรพา แปดี', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000650', 'นางทวน ปานรักษ์', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000672', 'นางลำเจียน ยอดบุษดี', 'หญิง', '38', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000675', 'น.ส.บุญธรรม น่วมด้วง', 'หญิง', '55', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000679', 'น.ส.ประทุม น่วมด้วง', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000684', 'นางสมนึก16/55 ยิ้มละมัย', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000689', 'น.ส.หัทยา มังสา', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000692', 'นางกลิ่น ภู่ระหงษ์', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000696', 'นางสังวาลย์ โทปุญญานนท์', 'หญิง', '56', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000697', 'น.ส.สุนันทา โทปุณญานนท์', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000702', 'นางกาหลง โพธิ์เงิน', 'หญิง', '48', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000707', 'นางอุ่นเรือน เอมพิมพ์', 'หญิง', '40', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000718', 'นางสุวรรณี เมฆอัพ', 'หญิง', '41', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000733', 'น.ส.จรูญ แสนพลับ', 'หญิง', '50', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000736', 'นางนิต ใจรัก', 'หญิง', '53', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000743', 'น.ส.ลำพึง แก้วกำเนิด', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000755', 'น.ส.ขจร แผนแก้ว', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000763', 'น.ส.บุญช่วย เอมพิมพ์', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000765', 'น.ส.ประหยัด เอมพิมพ์', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000771', 'นางบุญมา จันทร์อิน', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000790', 'นางปรียา สังข์ชา', 'หญิง', '56', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000805', 'นางสาย มีศิริ', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000812', 'นางจุน ฤทธิ์รื่น', 'หญิง', '54', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000822', 'นางอำพรรณ ศรีคง', 'หญิง', '48', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000837', 'นางอนงค์(มอญ) พรมแพร', 'หญิง', '44', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000848', 'น.ส.ปณัสยา พวงทอง', 'หญิง', '37', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000856', 'นางสมจิตร สุวรรณรัตนเวช', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000863', 'นางเจริญ เอมย่านยาว', 'หญิง', '50', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000871', 'น.ส.ปรานอม รอดมา', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000874', 'น.ส.บังอร แก้วน่วม', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000886', 'นางสุนทร ชีพธรรม', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000893', 'นางละออง ศิริกุลจรรยา(มีจุ้ย)', 'หญิง', '60', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000913', 'นางปราณี บุญเกิดกูล', 'หญิง', '48', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000914', 'น.ส.สุนิตา บุญราชแขวง', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000922', 'นางประทุม เกตุรวงศ์', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000932', 'น.ส.บังอร หลีสูน', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000937', 'นางเฉลี่ย สว่างเมฆ', 'หญิง', '58', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000939', 'นางวิไลลักษณ์ สว่างเมฆ', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000955', 'นางมนตรี โคตะวินนท์', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000956', 'นางดวงกมล โสมาบุตร', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000973', 'นางหยวก รักชาติ', 'หญิง', '36', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '000977', 'นางจันทร์ ทองมาก', 'หญิง', '57', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001001', 'น.ส.แป้งหล้ำ นุ่มอ่วม', 'หญิง', '50', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001006', 'นางสุวรรณ์ อ่วมเพ็ชร์', 'หญิง', '40', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001012', 'น.ส.เรณู หนองข่า', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001022', 'นางสาคร โพธิ์เงิน(บุญเกิดกูล)', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001029', 'นางอมรรัตน์ นุ่มอ่วม', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001049', 'นางทวี กล่ำจีน', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001050', 'นางมะลิวัลย์ ศรีบุพิมพา', 'หญิง', '33', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001075', 'นางราตรี ศรีสมบูรณ์', 'หญิง', '43', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001083', 'น.ส.วงศ์เดือน อุ้ยเจริญ', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001084', 'น.ส.ชนิดา อุ้ยเจริญ', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001090', 'น.ส.ประนอม สิงห์สลุด', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001092', 'นางปราณี เก่าราชการ', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001102', 'นางบุญทิพย์ ทองงาม', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001115', 'น.ส.อณารัตน์ ท้วมเพ็ง', 'หญิง', '40', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001118', 'นางสำเริง ทองมาก', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001127', 'นางวันนา   ปั้นคล้าย (ท้วมเพ็ง)', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001132', 'นางยุพิน อ่วมเพ็ชร', 'หญิง', '37', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001142', 'นางกอบแก้ว ยอดจับ(บุดดาหวัง)', 'หญิง', '40', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001154', 'นางสนิท ธูปกร', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001157', 'นางชูศรี ด่อนเจ็ก', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001171', 'น.ส.มานิตย์ จันทร์เนียม', 'หญิง', '60', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001176', 'น.ส.อัมพวัน บัวชุม', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001188', 'น.ส.ยุพิน จันทร์อิน', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001191', 'นางจำลอง ปั้นคล้าย', 'หญิง', '52', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001196', 'นางมาลัย ปั้นคล้าย', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001197', 'นางอรันยา ปั้นคล้าย', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001209', 'น.ส.สมคิด สุขผ่อง', 'หญิง', '31', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001217', 'นางอุบล บุญอาจ', 'หญิง', '47', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001225', 'นางแป้งล่ำ จุนเจิม', 'หญิง', '48', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001226', 'น.ส.วิภาดา จุนเจิม', 'หญิง', '32', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001259', 'นางแมว จันทร์ปาน', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001266', 'นางสุพรรณี เมฆทับ', 'หญิง', '45', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001271', 'นางสมศรี ภูมิดี', 'หญิง', '51', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001306', 'น.ส.จรูณ นุชบ้านป่า', 'หญิง', '52', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001311', 'นางบุญมา โมสลุด', 'หญิง', '53', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001316', 'นางทองก้อน โตมา', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001328', 'น.ส.กนกวรรณ คงกร่วม', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001333', 'นางกมลชนก บุญโสภา', 'หญิง', '47', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001338', 'นางกนกวรรณ(สายบัว) บุญโสภา', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001346', 'นางจรุณ บุญเจริญ', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001351', 'นางแฉล้ม ขำระหงษ์', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001358', 'น.ส.ไสว สาดสี', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001360', 'นางสนิท สังข์เที้ยม', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001372', 'นางขวัญใจ โตเฟื่อง', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001378', 'นางประจบ รักธรรม', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001379', 'นางขวัญใจ ทองเนื้ออ่อน', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001390', 'นางยุพิน ชัยพัฒ', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001399', 'นางฐิติมา คชพงษ์', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001401', 'น.ส.ฉลวย ชัยพัฒ', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001407', 'นางกาหลง บุญเจริญ', 'หญิง', '58', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001415', 'น.ส.สมคิด บุญคง', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001416', 'นางสมควร ทองจุ้ย', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001423', 'น.ส.สมัย กลิ่นแย้ม', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001425', 'น.ส.ศิริวรรณ กลิ่นแย้ม', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001448', 'นางนงลักษณ์ ปานสมบูรณ์', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001460', 'นางอุบล เนียมจันทร์', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001464', 'นางสมบัติ เนียมจันทร์', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001469', 'น.ส.ละอองทิพย์ ประภัสรางค์', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001470', 'น.ส.ชะบา สอนไผ่', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001477', 'นางสุริน ตุ้มสุข', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001489', 'น.ส.ทัศรินทร์ มากจุ้ย', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001500', 'นางประนอม พวงทอง', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001507', 'น.ส.ศิริดาวัลย์(วารี) ยิ้มละมัย', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001525', 'น.ส.ลำใย คุ้มเที่ยง', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001534', 'นางสมหวัง สีฉิม', 'หญิง', '55', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001563', 'นางพวงทอง นุ้ยเย็น', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001581', 'นางบุญเรือง เสมียนอ่ำ(มีจุ้ย)', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001595', 'นางสุมา อ้นเนียม', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001597', 'น.ส.ประสิทธิ์ พูนแบน', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001607', 'นางลำพูน เมฆทับ', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001620', 'นางยุพิน จันทร์อิน', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001624', 'นางวันเพ็ญ แสงสว่าง', 'หญิง', '53', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001632', 'นางบุญตา เก่าราชการ', 'หญิง', '53', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001637', 'นางฉลี ศรีปาน', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001646', 'น.ส.ฉันทนา เดชคำรนรัตน์', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001666', 'นางบรรหยัด ภู่ระหงษ์', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001669', 'นางวันเพ็ญ วงษ์สมุทร', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001682', 'นางสุด ตุ้มสุข', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001695', 'น.ส.บุญช่วย อ้นเนียม', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001704', 'นางจิตฆ์ณภา จันทร์เนียม', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001707', 'นางพิม สุดดี', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001712', 'นางเสถียร จันทร์เนียม', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001729', 'น.ส.เปราะ กล่ำจีน', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001732', 'นางสมคิด วงเมือง', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001748', 'นางละออ เสมียนอ่ำ', 'หญิง', '52', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001751', 'นางสายชล ศรีอินทร์', 'หญิง', '34', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001763', 'นางรัชนี สุวรรณปักษิณ(ชมเมืองมิ่ง)', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001778', 'น.ส.สมจิตร การะเกตุ', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001781', 'นางเสน่ห์ วัฒนไชย(สังข์ชา)', 'หญิง', '40', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001785', 'นางสมใจ ยอดบุษดี', 'หญิง', '42', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001795', 'นางละเอียด จันทร์เนียม', 'หญิง', '50', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001800', 'นางลำจวน จันทร์เนียม', 'หญิง', '58', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001802', 'น.ส.จริยา การะเกตุ', 'หญิง', '36', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001803', 'น.ส.สมใจ เนียมจันทร์', 'หญิง', '40', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001809', 'นางศิริรัตน์ เนียมจันทร์', 'หญิง', '44', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001816', 'นางจรูญ ฉิมทอง', 'หญิง', '55', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001824', 'น.ส.นนทิยา สุขสวัสดิ์ (เสมียนอ่ำ)', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001837', 'นางสังเวียน สุขสวัสดิ์', 'หญิง', '60', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001852', 'นางประพึง เสวิสิทธิ์', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001858', 'นางไพลิน จันทร์เนียม', 'หญิง', '34', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001861', 'นางถนอมพร อ่วมเพ็ชร', 'หญิง', '40', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001881', 'นางมะลิ โพธิ์ศรี', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001884', 'นางทองห่อ อุ้ยเจริญ', 'หญิง', '53', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001895', 'นางสุภาดา บุญโสภา', 'หญิง', '53', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001902', 'นางบรรเทิง เนียมจันทร์', 'หญิง', '49', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001916', 'นางสมพร คำจริง', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001935', 'นางนา เพ็งสลุด', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001937', 'นางวรรณา เปล่งกล่ำ', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001948', 'น.ส.รัตนา เวียงนนท์', 'หญิง', '53', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001955', 'นางจิรารัตน์ ณ ปานแก้ว', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001958', 'นางกมลพร หลวงราช', 'หญิง', '55', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001991', 'นางรัตนา ใสยาคม', 'หญิง', '46', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '001994', 'นางเมียด ฉิมทอง', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002007', 'น.ส.รัตนา จันทร์ศิริ', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002018', 'นางสายหยุด สุรสิทธิ์สิน', 'หญิง', '54', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002030', 'นางประภาพร อินทร์กำแพง', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002033', 'นางละเอียด โกสิงห์', 'หญิง', '54', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002046', 'นางทองสุก แพ่งนคร', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002051', 'นางสุวรรณ์ อินทร์กำแพง', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002052', 'นางจำรัส จันทร์ปาน', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002054', 'น.ส.ระวีวรรณ ภู่ระหงษ์', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002061', 'นางเรณู ยอดบุษดี', 'หญิง', '50', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002070', 'นางชัชมน เฮงประเสริฐ', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002072', 'น.ส.รัตนา อินทร์สลุด', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002076', 'น.ส.ประจวบ วงเมือง', 'หญิง', '57', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002078', 'นางอารีย์ หลวงราช', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002085', 'นางยุพิน พวงทอง', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002087', 'นางสำรวน แดงวังน้ำคู้', 'หญิง', '54', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002092', 'นางละออ ขำดำ', 'หญิง', '60', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002102', 'นางสำลี ปุ่มสันเทียะ', 'หญิง', '57', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002109', 'นางบุตรสลิน ใจตรงดี', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002113', 'น.ส.สวาท สังข์มณี', 'หญิง', '48', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002130', 'น.ส.น้ำค้าง เปล่งกล่ำ', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002141', 'นางทองอยู่ บำรุงไทย', 'หญิง', '53', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002142', 'นางจุไลรัตน์ ภู่ระหงษ์', 'หญิง', '34', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002169', 'น.ส.นิภา พุ่มมีจิตร', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002185', 'น.ส.สวงศ์ จันทร์อินทร์', 'หญิง', '51', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002199', 'นางสมพร เผือกพงษ์', 'หญิง', '50', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002235', 'น.ส.ศุภลักษณ์ ปานแย้ม', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002236', 'นางสิเรียม เทียนป้อม', 'หญิง', '43', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002239', 'นางปรารถนา มีสุข', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002247', 'น.ส.ชฎาภัทร์ บูรณพงศ์', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002250', 'นางสง่า วัฒนไชย', 'หญิง', '39', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002254', 'นางมานิต จำนงฟัก', 'หญิง', '51', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002268', 'น.ส.วิไล อ่อนสิงห์', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002277', 'น.ส.ปราณี กล่ำอินทร์', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002303', 'นางยุพิน อ่วมเพชร', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002316', 'น.ส.นิศานาถ ภู่เจริญ', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002332', 'นางประเทือง วงเมือง', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002335', 'น.ส.บุญทิวา มั่นฤทธิ์', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002343', 'นางปราณี คงประดิษฐ์', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002350', 'นางนงลักษณ์ ภู่ระหงษ์', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002368', 'นางเสน่ห์ นุ่มอ่วม', 'หญิง', '50', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002375', 'นางอัมพร หลวงราช', 'หญิง', '60', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002384', 'นางเรณู สุดดี', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002386', 'น.ส.มาลี เอี่ยมสนาม', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002392', 'น.ส.น้ำทิพย์ สารทไทย', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002398', 'น.ส.บุญเชิด เกตุศรี', 'หญิง', '54', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002407', 'นางต้อย สีกล่อม', 'หญิง', '57', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002420', 'น.ส.อัญชลี ผลเจริญ (น่วมด้วง)', 'หญิง', '34', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002424', 'นางปวีณา กลมประสิทธิ์', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002435', 'นางพัชรพร ขำไชโย', 'หญิง', '55', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002442', 'นางสอิ้ง นาคธูป', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002449', 'นางลำใย เกิดอ่วม', 'หญิง', '54', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002461', 'นางปราณี นุชเจ็ก', 'หญิง', '44', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002484', 'นางประเสริฐ เชยเดช', 'หญิง', '51', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002496', 'นางเนาวรัตน์ อินทร์กำแพง', 'หญิง', '50', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002504', 'น.ส.สุนิสา วงเมือง', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002507', 'น.ส.สาวิตรี วงเมือง', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002510', 'น.ส.จิรนัย แพนดี', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002530', 'นางนิด11/55 สุดวิลัย', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002532', 'น.ส.แสงเดือน สว่างเมฆ', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002538', 'นางรุ่งนภา นันทาเมฆ', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002557', 'นางวรรณเพ็ญ ชินวิมล', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002568', 'น.ส.ฉวี จันทร์อินทร์', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002572', 'นางละมาย นุ่มอ่วม', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002583', 'น.ส.ณิภารัตน์ สละผูกพันธน', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002587', 'น.ส.สุนันท์ สละ', 'หญิง', '43', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002599', 'น.ส.นิตยา ศิริรัตน์', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002618', 'นางสุภารัตน์ วงศ์มณี', 'หญิง', '44', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002621', 'นางวิไล บุญราชแขวง', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002624', 'น.ส.พัชรี สุวรรณเลิศ', 'หญิง', '36', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002632', 'นางสุชาดา ฉิมทอง', 'หญิง', '53', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002640', 'นางสุมิตรา ดาเอี่ยม', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002642', 'น.ส.สวง กลั่นหวาน', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002657', 'น.ส.ลำเพย นาคคล้าย', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002658', 'นางลำพึง ฉิมชาวนา', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002675', 'น.ส.นงลักษณ์ บุญคง', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002689', 'น.ส.ยุพิน ทับทิม', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002694', 'นางนิลุบล คุ่ยพ่วง', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002710', 'นางปรานอม คำจริง', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002719', 'นางเสงี่ยม สุดสลุด', 'หญิง', '41', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002721', 'นางลัดดา จันทร์จับ', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002733', 'นางหน่าย นาคคล้าย', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002746', 'น.ส.ลำใย นาคคล้าย', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002749', 'นางจุฑามาศ พงษ์พานิช', 'หญิง', '46', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002762', 'น.ส.เดือน เนียมจันทร์', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002765', 'น.ส.พัชรี เสมียนอ่ำ', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002768', 'น.ส.ทุเรียน ศรีปาน', 'หญิง', '53', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002769', 'นางปาริมา ขาวพลศรี', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002771', 'นางปัญญรัตน์  (ประจำ) ศรีปาน', 'หญิง', '56', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002777', 'น.ส.ศรีนวล ธรรมชาติ', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002783', 'นางนิภาพร เขียวบาง', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002810', 'นางผ่องอำไพ กล่ำจีน', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002811', 'นางเจียม กล่ำจีน', 'หญิง', '53', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '002824', 'น.ส.นงคราญ โพธิ์สาจันทร์', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '003649', 'น.ส.สุวรรณ์ กลิ่นจันทร์', 'หญิง', '44', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '004517', 'น.ส.ทองอยู่ จีนวงค์', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '004525', 'นางแวว คุ้มเที่ยง', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '004528', 'นางจันทร์ น่วมด้วง', 'หญิง', '57', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '004535', 'นางบังอร บุญเกิดกูล(หมอกมืด)', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '004558', 'นางทองคำ จันทร์เนียม', 'หญิง', '50', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '004569', 'น.ส.เจียม กลิ่นแย้ม', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '004572', 'นางฉลี ท้วมเพ็ง', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '004579', 'น.ส.ธยาจิต ใจภักดี', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '004588', 'น.ส.อริสรา มากจุ้ย', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '004599', 'นางมนัสนันท์ บุญอ้น', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '004609', 'นางวงแหวน คณิกา', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '004917', 'นางอำเพียน ปานแย้ม', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '004922', 'นางวันเพ็ญ ขันกสิกรรม', 'หญิง', '49', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '004928', 'นางยุพา ศรีน้อย', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '004929', 'นางไพลิน ศรีน้อย', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '004937', 'นางอรอนงค์ เปี่ยมบุญ(ปรางศรี)', 'หญิง', '39', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '004956', 'น.ส.รัตน์ติกาล  สุดดี (เล็งเนตร)', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '004962', 'น.ส.อรนุช โพธิ์เงิน', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '005507', 'นางวาหลิน จันทรคณา', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '005574', 'น.ส.รัตนา ฟักเงิน', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '005691', 'น.ส.เจียม คนคล่อง', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '005692', 'นางสุที สังข์ชา', 'หญิง', '56', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '006175', 'นางใกล้รุ่ง ศรีหอม', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '006207', 'นางสำเภา ขวัญคง', 'หญิง', '55', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '006239', 'น.ส.เสาวณีย์ ซองทอง', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '006240', 'น.ส.ลดาวรรณ์ เทือกตาถา', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '006374', 'นางกองทรัพย์   ภูมิดี (แสนป้อง)', 'หญิง', '30', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '006380', 'นางฉวีวรรณ ยิ้มละมัย', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '006389', 'น.ส.สุภา รักษ์ธรรม', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '006415', 'นางสมใจ พวงทอง', 'หญิง', '44', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '006418', null, 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '006429', 'น.ส.ณัฐกมล วงค์ขันตรี', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '006468', 'น.ส.พนิดา กลิ่นแย้ม', 'หญิง', '32', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '006491', 'นางศรีไพร แก้วทอง', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '006551', 'น.ส.ปราณี จันทร์อินทร์', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '006569', 'นางนภาพร เงินกลั่น', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '006576', 'นางภู คนึงวิริยะกุล', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '006606', 'น.ส.พัชรี แก้วทอง', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '006625', 'นางอุไร แสงหิรัญ', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '006627', 'นางศิริพร มีจุ้ย', 'หญิง', '51', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '006633', 'น.ส.ทองพัน สุทธิสาร', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '006635', 'น.ส.นภาพร กลั่นหวาน', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '006638', 'นางรุ่งนภา อำพันทอง', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '006681', 'นางถนอม เจริญมา', 'หญิง', '58', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '006687', 'นางสุวรรณ เมฆทับ', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '006726', 'น.ส.ลมัย มีนา', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '006772', 'นางรัตณา ศรีกระจ่าง', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '007105', 'นางลำดวน  เทียบทับ(อุปะนัน)', 'หญิง', '46', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '007123', 'นางชูศรี พูลสวัส', 'หญิง', '50', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '007323', 'นางหนูกัลย์ ชัยพัฒ', 'หญิง', '43', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '007380', 'นางดวงตา ทองเนื้ออ่อน', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '007385', 'นางการะเกต ท้วมเพ็ง', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '007405', 'น.ส.สกุลทิพย์ พลธสูร', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '007412', 'นางรัตนา ศรีกระจ่าง', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '007590', 'นางณัฏฐิชา ทองทัศน์', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '007623', 'น.ส.แสงเดือน คงเจริญ', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '007631', 'น.ส.เบญจวรรณ อ่ำพูล', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07546', '007633', 'นางโสภาพรรณ บุญอ้น', 'หญิง', '30', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000001', 'นางเฉลียว โยมยอด', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000031', 'นางจินดา คงเจริญ', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000033', 'นางประนอม เอมอิ่ม', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000036', 'นางเสน่ห์ อ่อนเกตุ', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000050', 'นางสมใจ แก้วกำพล', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000060', 'นางสมควร คงเนียม', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000062', 'นางอนุ คล้ายกล่ำ', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000067', 'นางบุญเลื่อน ไพศาล', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000074', 'นางพเยาว์ มาอินทร์', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000078', 'น.ส.สำราญ มากเจียม', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000080', 'นางฉลวย แก้วภู่', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000083', 'นางฉะหลำ แก้วภู่', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000087', 'นางจันทนา มากเจียม', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000105', 'นางสนิท ขำชาวนา', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000108', 'นางจันจิรา เก่าราชการ', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000116', 'นางสมนึก ทับเอม', 'หญิง', '58', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000120', 'นางจิราพร กมลเพชร', 'หญิง', '35', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000126', 'นางเสย บุญเจริญ', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000134', 'นางปาณิศา ยวนแมมะดัน', 'หญิง', '41', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000141', 'นางสุริวงค์ จันทา', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000146', 'นางสมบัติ จันทา', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000162', 'นางพิมพ์พร ด้วงทอง', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000172', 'นางบังอร ชีคงเนียม', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000178', 'นางบุญลือ อ่ำเอี่ยม', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000183', 'น.ส.น้องกุ้ง อ่ำเอี่ยม', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000189', 'นางกาหลง เกตุสิงห์สร้อย', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000197', 'น.ส.ศรีนวล ชุ่มเย็น', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000200', 'นางสุทิน อ่ำพ่วง', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000207', 'น.ส.ณัฐลี สุขสวัสดิ์', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000208', 'นางธัญญา ธารินันธ์ชานนท์', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000230', 'น.ส.สิริลักษณ์ จันทาทัพ', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000244', 'นางจำปี ราชอาษา', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000250', 'นางดวงแก้ว แก้วภู่', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000265', 'นางบุญเอี้ยง ติกะมาตย์', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000271', 'นางเผอิญ เกตุสิงห์สร้อย', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000276', 'นางสำลี ติกะมาตย์', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000278', 'นางจรูญ บุญอ่อน', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000288', 'นางทองอยู่ คำแก้ว', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000295', 'นางพิมพ์ ตุ้นทรัพย์', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000315', 'นางช้อย ศรีฉิม', 'หญิง', '50', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000319', 'นางสาคร จันทร์อินทร์', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000320', 'นางจิรนันท์ ดีสอน', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000335', 'น.ส.ทัศณี สุขาจารย์', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000338', 'นางลำใย สุขาจารย์', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000340', 'น.ส.บุญเรือง แก้วทองโต', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000344', 'นางยุพิน คำจริง', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000354', 'น.ส.ลูกคิด แก้วกำพล', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000388', 'น.ส.น้ำผึ้ง ตุ้มสุข', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000390', 'น.ส.ลำเพย ตุ้มสุข', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000397', 'นางพิมพ์ ศรีโสภณ', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000398', 'นางณัฏฐา ทองเทพ', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000402', 'นางเฉลย หนูท่านา', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000420', 'นางณิพาพร อ่อนเกตุ', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000428', 'นางทองสุข คำสวน', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000432', 'นางผ่องศรี สุดกรณ์', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000448', 'นางชลธิชา ฉิมศิริ', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000459', 'นางลำดวน ทับเอม', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000478', 'นางบุญชื่น เทียนอำไพ', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000516', 'นางเจียม คนคล่อง', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000519', 'นางธนวันต์ น้อยนอนเมือง', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000523', 'น.ส.สุวรรณ สุขกายะ', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000531', 'นางมนิดา อนันต์ก้านตง', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000552', 'นางอุไร นุ่มนิ่ม', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000555', 'นางรุ่งอรุณ เขียวงาม', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000556', 'นางสำรวย แสงโสด', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000561', 'นางอำนวย มาอินทร์', 'หญิง', '60', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000570', 'นางสมหวัง นุ้ยเย็น', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000576', 'นางสุพัตรา เกียรติสุระยานนท์', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000581', 'นางลำญวน ภู่ยิ้ม', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000599', 'นางศิริ เพ็ชรพลอย', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000626', 'นางประจวบ ติณะมาศ', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000634', 'นางสุจิน โพธิ์ประเสริฐ', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000642', 'นางณีรนุช โตเมศ', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000648', 'นางวัชรี โตเมศน์', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000653', 'นางยุพาวรรณ ขมินทกูล', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000658', 'น.ส.เจนจิรา ศรีเรือง', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000659', 'นางสุดใจ ศรีเรือง', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000660', 'นางประนอม ศรีเรือง', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000666', 'นางเฉลา คงเทศ', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000672', 'นางสมชาติ มาใบ', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000675', 'นางราตรี แก้วกำพล', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000694', 'นางสุรางค์ มวลชู', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000698', 'นางสุรินทร์ คล้ายกล่ำ', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000701', 'นางนิภา พัฒยม', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000706', 'นางปลั่ง สิงห์สลุด', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000710', 'นางรัตนวรรณ สุขสวัสดิ์', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000720', 'นางพยอม ฉิมทอง', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000728', 'นางวรรณา ช้างทอง', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000751', 'นางมลฤดี เงินแจ้ง', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000761', 'นางบุญรวม ศรีเรือง', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000771', 'น.ส.อารัน เพ็ชรพลอย', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000780', 'นางประทีป ศรีเรือง', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000794', 'นางขวัญเรือน สินประสิทธิ์', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000802', 'นางสอิ้ง อินทะรักษา', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000822', 'นางพัลลภา สมประสงค์', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000830', 'นางกนกรัตน์ โตกำแพง', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000832', 'นางมะลิ ทองดอนย้อย', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000840', 'นางนัฐติกา เรืองแย้ม', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000845', 'น.ส.ทักษิณา สว่างเมฆ', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000846', 'นางกุหลาบ สว่างเมฆ', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000849', 'นางเสาวนีย์ ห้วยหงษ์ทอง', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000851', 'นางจินตนา สว่างยิ่ง', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000859', 'นางชิต ลัยวงค์', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000870', 'นางอุดมพร สินชิต', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000873', 'นางฉลอง เผือกเขียว', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000878', 'น.ส.สุภาวดี เผือกเขียว', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000882', 'น.ส.นิภาพรรณ โรจน์สว่าง', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000883', 'นางเฉลย โรจน์สว่าง', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000888', 'นางมาลี เขียวสะอาด', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000890', 'นางบัวโรย คนิกา', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000891', 'นางละเอียด คงชู', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000896', 'นางวรรยา เพชรคง', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000903', 'นางอุษา เทศทาบ', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000911', 'นางสังวาลย์ จันทร์ปาน', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000913', 'น.ส.อุดม บุญคง', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000918', 'น.ส.นิลวรรณ ครุฑหลวง', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000926', 'น.ส.กมลจันทร์ คุณาจรัสชัยกุล', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000933', 'นางพรพรรณ เขียวสะอาด', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000936', 'นางสายทอง รอดโพธิ์', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000942', 'น.ส.ปรานอม เมฆอับ', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000947', 'น.ส.สุณีย์ เมฆอับ', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000951', 'นางสุมาลี เมฆอับ', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000968', 'นางเครือวัลย์ เขียวสอาด', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000975', 'นางเตือนตา โพธิ์เงิน', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000987', 'นางอารี สุวรรณปักษิณ', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000991', 'นางวิภา เกตุโต', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000992', 'นางพัชร์รมน พัฒนดลวัฒน์', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '000994', 'น.ส.ปลาลิน เพ็ชรพลอย', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001004', 'นางขวัญใจ โต๊ะโต', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001011', 'น.ส.เสงี่ยม แสนชิตร', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001018', 'นางลำเจียก มายัง', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001021', 'นางพเยา ทองดี', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001031', 'นางมะลิ สุขสวัสดิ์', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001035', 'นางพัชรี โพธิ์ทอน', 'หญิง', '59', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001041', 'นางบัวเผื่อน ปานสมบูรณ์', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001056', 'นางลำยวน โยมยอด', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001057', 'นางสุขศรี โยมยอด', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001063', 'นางลำยอง บุญเกิด', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001073', 'นางบัวลอย ตุ้มสุข', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001082', 'นางสมใจ พูลสาย', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001088', 'นางประเจียด สัจจะเดช', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001094', 'นางจำปา ครุฑจับนาค', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001116', 'นางกรรณิการ์ ถาวรกูล', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001145', 'น.ส.สุชาดา คงทน', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001157', 'นางวรรณา อ่อนเกตุ', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001160', 'นางสมคิด ถาวรกูล', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001166', 'นางประทวน เหมยต่อม', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001169', 'นางมณเฑียร เฟื่องปราง', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001173', 'นางแมะ วรสิงห์', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001196', 'นางสำเนียง โพธิ์พิษ', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001212', 'นางอุไร สุขขำ', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001215', 'นางแป้น โตนิ่ม', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001220', 'น.ส.จันทร์กีฬา บุญอ่อน', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001226', 'นางประเทือง แก้วกำพล', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001228', 'นางสวิง ช้างปาน', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001252', 'นางประทวน แย้มทัศน์', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001256', 'น.ส.ทิพากร แก้วภู่', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001271', 'นางวิภารัตน์ ไพรเพชรศักดิ์', 'หญิง', '34', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001272', 'นางสายพินธ เข็มทอง', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001273', 'นางเฉลา กาสีทอง', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001281', 'นางสำลี โต๊ะโต', 'หญิง', '55', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001297', 'นางอุทรณ์ คงเนียม', 'หญิง', '47', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001300', 'นางเฉลา ศรีสอาด', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001304', 'นางศรี จันทรา', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001309', 'นางอำพรรัตน์ พันธ์มณี', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001312', 'นางสมพร สารสมบูรณ์', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001317', 'น.ส.ทองชุบ แก้วกำเหนิด', 'หญิง', '50', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001321', 'นางเกื้อกูล บุญอ้น', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001326', 'นางบุญยัง จีนวงค์', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001337', 'นางมัทนา แขวงกระทุ่ม', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001342', 'นางเสวย แขวงกระทุ่ม', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001344', 'น.ส.วิไลพร สังข์เปรม', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001348', 'นางฑิชญาวัลย์ สังข์เปรม', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001352', 'นางมลเทียน สังข์เปรม', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001362', 'นางปราณี อ่อนเกตุ', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001363', 'นางสิรินรัตน์ อ่อนเกตุ', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001368', 'นางสมบุญ สังข์เปรม', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001370', 'น.ส.ปัทมา สังข์เปรม', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001380', 'นางกาญจนา ตุ้มสุข', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001396', 'น.ส.บังเอิญ คล้ายฉิม', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001397', 'นางกลิ้ง คล้ายฉิม', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001401', 'นางฉลวย ทองจันเทา', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001408', 'นางจำเริญ ปั้นน้ำคู้', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001411', 'นางวิเชียร นาคสิงห์', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001418', 'น.ส.พยุง คล้ายกล่ำ', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001426', 'นางบัญชา คงรอด', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001430', 'นางเยาวลักษณ์ ทองพงษ์เนียม', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001433', 'นางชุติกาญจน์ ทองพงษ์เนียม', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001445', 'นางอาภรณ์ โตบางพรม', 'หญิง', '49', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001447', 'น.ส.กลอย ต้วนยี่', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001452', 'นางสุรัตนา ทรัพย์แฝง', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001458', 'นางปิ่นจันทร์ ชมชื่น', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001459', 'นางพิตรานันท์ สายไธสง', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001474', 'นางสุนีย์ โตสนามคลี', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001485', 'นางสมพร นูนอ้น', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001494', 'นางสุทิน จันทร์อ่อง', 'หญิง', '53', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001500', 'นางจำลอง จันทร์อ่อง', 'หญิง', '59', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001505', 'นางบัวเผื่อน รักษาพล', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001512', 'นางทัศนีย์ สายทอง', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001522', 'นางอัมพร กาสร', 'หญิง', '59', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001532', 'นางสำเรียง ศรีเรือง', 'หญิง', '49', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001541', 'นางเปีย สุขดี', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001570', 'นางทองหล่อ เหมือนมี', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001581', 'นางทวี บุญเจริญ', 'หญิง', '47', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001591', 'นางทองชุบ ชูประสาท', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001594', 'นางยุพยงค์ โพธิ์นวม', 'หญิง', '56', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001628', 'นางวรรณา สุขาจารย์', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001630', 'นางรัตน์ สุขาจารย์', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001644', 'นางปาริชาติ นาคคล้าย', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001655', 'นางไฉน ทองพ่อค้า', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001669', 'นางประเทือง ชื่นกลิ่น', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001674', 'นางเฉลิมพันธ์ ครบุรี', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001678', 'น.ส.บุปผา มาอินทร์', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001679', 'นางสานิตย์ สุดดี', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001688', 'นางวรรณี นาคคล้าย', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001692', 'นางศรีจันทร์ ตุ้มสุข', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001694', 'น.ส.ผ่องศรี ตุ้มสุข', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001699', 'นางพรรษา ใจชื้น', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001707', 'น.ส.เมธิณี ชมเมืองมิ่ง', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001711', 'นางกิจจา ปู่เกิด', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001746', 'น.ส.วีนับ เครือสา', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001749', 'นางทองเนียบ ยุรมาตย์', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001763', 'นางสวนีย์ แก้วภู่', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001765', 'นางเจริญ อ่ำเอี่ยม', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001778', 'นางชุติมา อ่ำเอี่ยม', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001785', 'นางเสมียน เอี่ยมสนาม', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001786', 'นางมัทนา เอี่ยมสนาม', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001791', 'นางวาสนา อ่วมเพ็ชร์', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001793', 'น.ส.สุปราณี อ่วมเพ็ชร', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001797', 'นางศรีวิภา บุญราชแขวง', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001798', 'นางศิราลักษณ์ ศรีโสภณ', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001803', 'นางปริศนา สุดดี', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001809', 'นางทองสุข กี่เอี่ยน', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001811', 'น.ส.แสวง กี่เอี่ยน', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001818', 'นางอุไร ละอองเภา', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001820', 'นางจำริน พูพุ่ม', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001836', 'นางสุนิสา ยุรมาตย์', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001846', 'น.ส.วิจิตรา พลับพลา', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001850', 'น.ส.บุญเตือน พลับพลา', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001858', 'นางจุฑาทิพย์ ยุรมาตย์', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001862', 'น.ส.วัชรินทร์ อ่อนเกตุ', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001868', 'นางสมควร จันทร์อิน', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001870', 'นางเนาวรัตน์ โตจาด', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001883', 'นางแคธลียา มาอินทร์', 'หญิง', '49', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001889', 'นางวิลัยวรรณ ปั้นจั่น', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001891', 'นางวิลา บุญเจริญ', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001910', 'นางสนอง จันทา', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001914', 'นางสุนี สิงหเดช', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001916', 'นางจำเรียง เงินมณี', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001925', 'นางวันวิษา อินหาดกรวด', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001949', 'น.ส.เจนจีรา ช้างนาค', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001963', 'นางจิตตรา บุญราชแขวง', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001967', 'นางบุญเติม ชมขำ', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001972', 'นางเยาว์บุษตรี ทับทิมหิน', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001984', 'นางประไพ เทียนอำไพ', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001985', 'นางน้อย ปานแสง', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '001988', 'น.ส.ลินลา ปานแสง', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002003', 'นางสุจิตรา ป้องคำพันธ์', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002008', 'นางจอมขวัญ แฃ่กัง', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002012', 'นางจำรวน อยู่เจริญ', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002025', 'นางเอมอร ยุรมาตย์', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002031', 'น.ส.ศรีสุดา วิไลรัตน์', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002038', 'นางทม วิไลรัตน์', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002042', 'นางเครือวัลย์ สว่างเมฆ', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002062', 'นางบังอร จันทราทัพ', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002069', 'นางปัทมา ภู่ระหงษ์', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002073', 'นางชิด สุวรรณปักษิณ', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002085', 'นางหยัน ปิ่นทอง', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002089', 'นางระย่อม สรรพรอด', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002109', 'นางหนึ่งน้อง สว่างเมฆ', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002117', 'น.ส.ชูศรี เพ็ชรพลอย', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002133', 'นางยวน ชาวอบทม', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002140', 'น.ส.น้อย มัทธุจัด', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002159', 'นางสำรวม เถื่อนทองดี', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002166', 'นางเปลื้อง เถือนทองดี', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002175', 'นางส้มลิ้ม เที่ยงพร', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002177', 'นางสังวาลย์ จันทร์ปาน', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002185', 'นางลูกนก เที่ยงพร', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002192', 'นางกิมลี้ ภักดี', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002195', 'นางประจบ สุวรรณเชษฐ์', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002204', 'นางประดัง ขำเมือง', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002206', 'นางกัญญาณัฐ โตกำแพง', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002210', 'นางน้ำผึ้ง อินทะรักษา', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002216', 'นางจรูญ ต้วนยี่', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002217', 'น.ส.วันชุลี เกตุแก้ว', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002218', 'นางสุภาพ เกตุแก้ว', 'หญิง', '48', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002223', 'น.ส.เฉลิม เกตุแก้ว', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002228', 'นางบุญมา แสงปรางค์', 'หญิง', '40', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002233', 'นางนุชน้อง โพธิ์ทอน', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002241', 'น.ส.กาหลง ศรีวิชัยไตรรักษ์', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002243', 'นางบำรุง แสงฤทธิ์', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002247', 'นางจันทร์แรม รัตนาพร', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002259', 'นางปราณีต อาจบัว', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002263', 'นางวรรณดี แก้วภู่', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002274', 'นางลัดดา ติระมาศ', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002276', 'นางเกษร จันทร์ดิษฐ์', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002283', 'นางวิษา จันทร์แดง', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002287', 'น.ส.พยุง สุดยอด', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002294', 'นางเย็น สุดยอด', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002299', 'นางสายสร้อย ห้วยหงษ์ทอง', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002314', 'นางแสงดิอร เที่ยงพร', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002320', 'น.ส.บังอร จูบ้านไร่', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002339', 'นางอุทัย จูบ้านไร่', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002340', 'นางน้ำทิพย์ แสงปรางค์', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002344', 'นางน้ำอ้อย พวงทอง', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002346', 'นางสำอาง ศรีเรือง', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002359', 'นางชะเอม ชื่นใจชน', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002366', 'นางบังเอิญ สีคร้าม', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002372', 'นางอมรรัตน์ อ่ำพ่วง', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002378', 'นางสัจจา อำพ่วง', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002385', 'นางสมพร คงดี', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002387', 'นางลำเจียร เขียวชะอุ่ม', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002391', 'นางจำนงค์ พลสิงห์', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002395', 'นางสำเริง แพรพยอม', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002398', 'น.ส.สมศรี เขียวสอาด', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002406', 'นางวันเพ็ญ ไชยพัธน', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002415', 'น.ส.ชูศรี สุขสวัสดิ์', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002434', 'นางธนัชพร ห้วยหงษ์ทอง', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002445', 'นางเสมอ ศรีเรือง', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002447', 'นางเย็น ช้างทอง', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002451', 'นางสายหยุด ชมเทศ', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002457', 'นางกนกพร เงินกลั่น', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002459', 'น.ส.รัชณี สุขสวัสดิ์', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002462', 'นางลัดดา กรุดอินทร์', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002464', 'นางขวัญเรือน แสงปรางค์', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002467', 'นางทองดำ ช้างทอง', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002473', 'น.ส.สีทอง ทองดี', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002474', 'นางน้อย ทองดี', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002484', 'นางวันณา สังข์เปรม', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002511', 'นางพรศรี ศรีประเทศ', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002517', 'นางปราณี พันธ์มณี', 'หญิง', '36', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002519', 'นางรุ่งเรือง คำสอน', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002552', 'นางยุพิน มีจุ้ย', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002592', 'นางเพียงใจ อ่อนเกตุ', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002629', 'น.ส.วรรณเพ็ญ ชัยโย', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002635', 'น.ส.ลัคนา ตุ้มสุข', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002651', 'นางวันชัย นุ้ยเย็น', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002655', 'นางรุ่งนภา เพ็ชรวงษ์', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002665', 'นางสมบัติ ตรงจริง', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002746', 'น.ส.อนงค์ สุวรรณเชษฐ์', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002750', 'น.ส.อุมาพร รวมผล', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002758', 'นางมลิวัลย์ โต๊ะโต', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002777', 'น.ส.วรรณดี จันทร์ปาน', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002831', 'นางบุญนำ แก้วกำทอง', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002856', 'นางสมควร ภูมิดี', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '002891', 'นางสังเวียน เจนดง', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '003016', 'นางรัชดา ตุ้มสุข', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '003049', 'นางสายหยุด ทองเชื้อ', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '003171', 'นางสายหยุด บุญย่านยาว', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '003190', 'นางน้ำตาล อ่อนเกตุ', 'หญิง', '57', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '003204', 'นางรัศมี วลัยการ', 'หญิง', '34', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '003266', 'นางมะยม ทับเอม', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '003454', 'นางฉลอม ห้วยโหงทอง', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '003498', 'นางเจี๊ยบ มายัง', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '003502', 'นางชมภู ห้วยหงษ์ทอง', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '003504', 'น.ส.วิมังสา ขันสังข์', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '003515', 'น.ส.ปริศนา คำฤทธิ์', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '003546', 'นางวรรณนิภา เครือสา', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '003682', 'นางทองคำ คนิกา', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '003685', 'นางเฉลียว แก้วภู่', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '003687', 'นางสมบูรณ์ แก้วสอาด', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '003704', 'น.ส.เครือฟ้า ทองบุรี', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '003751', 'นางบุญส่ง มีสกุล', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '003761', 'นางทุเรียน ตุ้มสุข', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '003777', 'น.ส.ทวี ตามระเบียบ', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '003808', 'นางมาลัย สังข์เปรม', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '003890', 'นางสมผัด ผาสุข', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '003905', 'นางสำรวย ทิพย์คูนอก', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '003921', 'นางหอม ภู่ยิ้ม', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '003942', 'น.ส.ณัฏฐา สดาวงศ์', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '003960', 'น.ส.รัตนาพร คล้ายฉิม', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '004032', 'นางสุนันท์ นูนอ้น', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '004048', 'นางบุญเตือน ทองดี', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '004072', 'นางมณี ศรีสมบุญ', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '004075', 'นางกัญญาภัค คงมาศ', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '004111', 'น.ส.นิสา สินชิต', 'หญิง', '36', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '004179', 'นางเฉลียว เขียวคำปัน', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '004184', 'นางชลอ นูนอ้น', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '004207', 'นางยุพิน แก้วเขียวเหลือง', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '004338', 'นางมณีวรรณ สินชิต', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '004344', 'นางทองสุข บุญอ้น', 'หญิง', '51', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '004347', 'นางอุทัย ชูประสาท', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '004349', 'นางบุญยัง จูบ้านไร่', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '004357', 'นางสุทิน สุขขำ', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '004402', 'นางมณีรัตน์ ฝอยกลาง', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '004426', 'นางรำพัน ขวัญอ่างทอง', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '004435', 'น.ส.ทอง ชัยโย', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '004437', 'น.ส.จำเนียร ชัยโย', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '004445', 'น.ส.ยุพา สิงห์สาย', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '004449', 'น.ส.ประไพ พัฒยม', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '004452', 'น.ส.ณฐภัค เทียนอำไพร', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '004488', 'นางราตรี ตุ้มสุข', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '004526', 'น.ส.กาญจ์รวี สังข์เปรม', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '004551', 'น.ส.ทับทิม ครุฑหลวง', 'หญิง', '38', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '004555', 'น.ส.สุนันทา เมฆอับ', 'หญิง', '53', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '004561', 'น.ส.อำไพ อินหาดกรวด', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '004574', 'น.ส.ช่อชบา นาคย่านยาว', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '004609', 'นางกานต์มณี ศรีสง่า', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '004619', 'นางหนูไป่ วงษ์คำหาญ', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '004630', 'นางวันดี ทับทองหลาง', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '004633', 'น.ส.รัชนี เครือสา', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '004634', 'นางสมนึก คงรอด', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '004640', 'น.ส.จำเริญ กี่เอี่ยน', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '004650', 'น.ส.สุมาลี แก้วกำเนิด', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '004660', 'นางสุรีรัชน์ แดงคำหล้า', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '004664', 'น.ส.หนึ่งฤทัย ผ่องโต', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '004694', 'นางบรรหยัด ทองดี', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '004701', 'น.ส.เนตรนภา จันทร์อินทร์', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '004710', 'นางน้ำทิพย์ ปรีรอด', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '004716', 'น.ส.กนกรัตน์ เกตุสิงห์สร้อย', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '004722', 'น.ส.เนียม บุญอ้น', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '004730', 'นางทิพวัลย์ พุ่มประพัฒน์', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '004736', 'น.ส.อุไรวรรณ จิราพงษ์', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '004760', 'นางพัชราภรณ์ โชคค้า', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '004761', 'นางบรรจง คุ้มเวช', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '004765', 'นางรัชฎาภรณ์ สังข์เปรม', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '004775', 'น.ส.สิริพร บุตรทิพย์', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '004871', 'น.ส.เดือนเพ็ญ ปั้นเอี่ยม', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '004875', 'นางสายรุ้ง บัวจันทร์', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '004887', 'นางสมนึก ตุ้มสุข', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '004901', 'นางศิริรัตน์ จำนงฟัก', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '004939', 'น.ส.สุจิตรา คำทวี', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '005030', 'นางสมใจ คำจริง', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '005245', 'นางประเทือง บุญรักษา', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '005295', 'น.ส.สายสุนีย์ พรหมขัติแก้ว', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '005326', 'นางพยุง แปดี', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '005372', 'น.ส.ขำ วงสาริกิจ', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '005374', 'น.ส.วรรณเพ็ญ จันทร์อินทร์', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '005483', 'น.ส.ธนิสา ยาวสูงเนิน', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '005536', 'นางนิภา สัตยธรรม', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '005616', 'น.ส.พวง เวชกามา', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '005621', 'นางวิภาพร พวงงาม', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07547', '005643', 'นางอัจฉรา ภูผา', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000000994', 'นางฉลวย เล็กกุล', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000008019', 'นางสุชาดา กำพล', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000032', 'นางวันนา แสงสุวรรณ', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000046', 'นางไสว มหาเรือนขวัญ', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000058', 'นางนิภาวรรณ พลสว่าง', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000059', 'นางแสงเดือน รุ่งอินทร์', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000066', 'นางน้ำหวาน พลสว่าง', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000068', 'น.ส.กนกพร พลสว่าง', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000070', 'น.ส.สมนึก พลสว่าง', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000079', 'นางทองดี พลสว่าง', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000087', 'นางอุระสา พลสว่าง', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000099', 'นางน้ำค้าง มีแก้ว', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000103', 'น.ส.ศศินา มีแก้ว', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000104', 'นางประนอม มีแก้ว', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000116', 'นางสวาท มีแก้ว', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000127', 'น.ส.วา ทองมาก', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000130', 'นางศรีวรรณ อู่ไทย', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000135', 'นางมนัส คุ้มศิริ', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000144', 'น.ส.สุกัญญา พูลยิ้ม', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000147', 'นางยุพิน หลวงศิริ', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000150', 'นางสวาท ฉํ่าบุตร', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000158', 'นางปัทมพร วันรักชาติ', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000159', 'นางสุภาพ นาคชาวนา', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000162', 'นางอุ่นเรือน สีทิม', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000171', 'นางจำเนียร นาคชาวนา', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000175', 'น.ส.สุชาดา นาคชาวนา', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000178', 'นางพยอม คุ้มสุพรรณ', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000194', 'นางประเทือง คุ้มสุพรรณ', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000196', 'นางลำยงค์ คุ้มสุพรรณ', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000202', 'น.ส.พเยาว์ คุ้มสุพรรณ', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000208', 'นางนิดานุช คุ้มสุพรรณ', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000217', 'นางสุดา บัวศรี', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000244', 'นางอำพร หมุนชาวนา', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000249', 'น.ส.วัลภา คุ้มสุพรรณ', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000257', 'นางส้มแป้น แป้นชาวนา', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000261', 'นางอำนวย จอยวงษ์', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000269', 'นางพนมไพร อินทร์ขำวงค์', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000272', 'นางพิณนัด เล็กพานิช', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000284', 'นางกมล ใบประดู่', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000287', 'นางขวัญเรือน มาโพธิ์ชัย', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000300', 'นางมะเหมี่ยว พลสว่าง', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000341', 'นางสำอางค์ อู่ไทย', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000344', 'นางปราณี เม่นไพร', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000357', 'นางทองอยู่ อู่ไทย', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000372', 'น.ส.วันเพ็ญ แกล้วกล้า', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000377', 'นางปราณี บุญจันทร์', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000396', 'น.ส.อรอนงค์ ทิมกลำ', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000407', 'น.ส.อำนวย ฉัตรพันธ์', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000419', 'นางนที แป้นชาวนา', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000420', 'นางสุนันทา แป้นชาวนา', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000427', 'นางปราณี จูชาวนา', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000445', 'นางสุริยา คนหลัก', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000446', 'นางวรรณา ต๊กควรเฮง', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000449', 'น.ส.บุญเมือง ต่ายชาวนา', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000457', 'นางสว่าง หันเชื้อจีน', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000458', 'นางสมนึก อยู่พรหมชาติ', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000472', 'น.ส.ปราณี แสงสำลี', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000478', 'นางสุนัน ฉัตรพันธ์', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000481', 'นางนงนุช บัวน้อย', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000499', 'นางสำอาง บางท่าโรง', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000501', 'นางฌานิศา พรหมสมบูรณ์', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000504', 'นางพิศมัย บางท่าโรง', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000524', 'น.ส.สุปราณี ม่วงศิริกุล', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000538', 'นางสมพงษ์ ภูมิณรินทร์', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000549', 'น.ส.ฉลอง ต่ายชาวนา', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000568', 'นางเกียว เครือมี', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000570', 'นางจรูญ คงเนียม', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000576', 'นางวรรณา สุวรรณโต', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000579', 'นางรัตนาภรณ์ มังคะโชติ', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000580', 'น.ส.ลัดดาวัลย์ เอี่ยมคง', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000590', 'น.ส.สมบูรณ์ อยู่พรหมชาติ', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000597', 'น.ส.คมคาย นาคชาวนา', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000606', 'นางคนึง ก้อนทิพย์', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000628', 'นางต้อย ศรีสังวร', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000633', 'นางสมพร แย้มทัศน์', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000641', 'น.ส.สำราญ บางท่าโรง', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000644', 'นางรุ้งกานต์ จันทร์ขาว', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000647', 'นางสุพิชชา น้อยด้วง', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000655', 'นางฟักทอง บางท่าโรง', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000657', 'น.ส.ทองหยิบ จันทร์จำรัส', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000674', 'น.ส.มนทิรา แย้มขะมัง', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000679', 'นางเล็ก อาจบัว', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000680', 'นางเรลัย ธรรมทันตา', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000681', 'นางเฉลียว ธูปชาวนา', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000684', 'น.ส.สุดารัตน์ อึ่งเรือง', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000708', 'นางกิตติยา จันทร์แก้ว', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000711', 'นางวนิดา โยประพันธ์', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000717', 'นางทองชุบ แย้มขะมัง', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000738', 'นางปราณี ดอกจันทร', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000744', 'นางระชา แย้มขะมัง', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000745', 'นางเป้า โพธิ์งาม', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000746', 'นางหวน แย้มขะมัง', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000753', 'นางสมจิตร ศรีละออ', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000766', 'นางอำนวย พรมอ่อน', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000786', 'น.ส.สายย่อน จันทวงค์', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000792', 'นางสมพร ปั้นท่าหลวง', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000793', 'นางลำยงค์ ปั้นท่าหลวง', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000797', 'น.ส.บุญสิตา อํ่ากำเหนิด', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000823', 'นางสุกัลยา สูงสุด', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000826', 'น.ส.เรืองรอง ต๊กควรเฮง', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000829', 'นางหนูเล็ก ต๊กควรเฮง', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000840', 'นางเฉลิม นุชทัพ', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000842', 'นางทัศนีย์ ลาวิน', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000849', 'น.ส.สุชาดา พลสว่าง', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000858', 'นางจิรนันท์ พลสว่าง', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000866', 'นางกวย จันทะเกตุ', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000883', 'นางละเอียด แสนราษฎร', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000895', 'น.ส.ณัฐนลี นิ่มเอนก', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000896', 'นางจรรยา ครุฑธาโรจน์', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000902', 'นางจริยา นิ่มเอนก', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000903', 'น.ส.ยุคลธรณ์ เบญจวรณ์', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000904', 'นางจารุณี ดวงสังข์', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000907', 'นางวันเพ็ญ สุถินยินดี', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000919', 'นางเรณู จันทร์ชาวนา', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000926', 'นางบังอร จอยวงษ์', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000929', 'น.ส.กฤตยา จันทร์จำรัส', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000932', 'นางนิตยา บุญแท้', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000944', 'น.ส.แป้ง อาจบัว', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000948', 'นางน้อย อาจบัว', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000958', 'นางหนูจันทร์ พิพวนสุข', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000967', 'น.ส.ทิพวรรณ บุญส่ง', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000968', 'นางลำพึง บุญส่ง', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000976', 'นางสะกินนา พลสว่าง', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000985', 'นางอำพร แย้มขะมัง', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '000995', 'นางสมคิด แดงชาวนา', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001006', 'นางประมวล แดงชาวนา', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001010', 'นางทองใบ ใชยเหล็ก', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001020', 'นางดอกไม้ ทับผึ้ง', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001030', 'นางชไมพร หันเชื้อจีน', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001039', 'นางกรกมล ขำน้ำคู้', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001045', 'นางพรมลิม น้อยใจมั่น', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001052', 'นางสำรวย วาทยานนท์', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001061', 'นางสุวลักษณ์ น้อยใจมั่น', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001063', 'นางสวรรค์ น้อยใจมั่น', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001064', 'นางชนาภา ทองแท้', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001070', 'นางวลินดา น้อยใจมั่น', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001083', 'นางภัทรกร หมีบ้านใหม่', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001097', 'นางสุธีรา รอดเครือวัลย์', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001099', 'นางถาวรีย์ ขำน้ำคู้', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001112', 'นางสายทอง บุญช่วย', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001115', 'นางสุมาลี ช่วงชา', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001129', 'นางประจบ พุ่มรส', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001133', 'น.ส.จุฑารัตน์ พุ่มรส', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001142', 'น.ส.ประจวบ ขำนํ้าคู้', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001153', 'นางลำยงค์ ผิวเงิน', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001160', 'นางคำนึง ทองแท้', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001166', 'นางจรัสพร บุญเพ็ชร์', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001177', 'น.ส.สุทธิชา น้อยใจมั่น', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001233', 'นางสวาท มีเงินทอง', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001251', 'นางรัชนี เสนานุช', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001254', 'นางสุมาลี เสนานุช', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001256', 'นางสมควร แสงเดือน', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001259', 'นางจินดา ยืนยาว', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001261', 'น.ส.บังเอิน โอชะ', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001265', 'นางจำลอง โอชะ', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001273', 'นางทิพย์ พงษ์พานิชย์', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001277', 'นางบูชา น้อยใจมั่น', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001279', 'น.ส.พรพิมล คำชุน', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001281', 'น.ส.ไพลิน คำขุน', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001285', 'น.ส.ประหยัด แสงกูล', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001295', 'นางทองแดง เสือบึงพร้าว', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001299', 'น.ส.อ้อมใจ เสือบึงพร้าว', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001304', 'นางนิชาภา ทองใจบุญ', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001314', 'น.ส.ประภัสสร เกิดทิม', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001322', 'นางมณี บัวประชุม', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001324', 'นางสมหมาย บัวประชุม', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001329', 'นางนิศารัตน์ คงวุฒิ', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001338', 'นางยุพิน อ่ำเนินกุ่ม', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001348', 'นางญาณิน ค้ำเลิศ', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001362', 'นางมะนบ คงใจมั่น', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001368', 'นางจำเนียร ขำนํ้าคู้', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001372', 'นางจันทร์ มาโพธิ์ชัย', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001374', 'นางสุมารี มั่นชาวนา', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001398', 'นางสุมาลี แก้วมี', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001410', 'นางสมจิตร แก้วชาวนา', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001417', 'นางบังอร ดีประเสริฐ', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001421', 'นางวรรณา จอยวงษ์', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001428', 'น.ส.ชณิตา น้อยใจมั่น', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001431', 'นางทองดี บัวประชุม', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001433', 'น.ส.ทับทิม บัวประชุม', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001437', 'น.ส.นันทยา พุ่มรส', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001438', 'นางหยด พุ่มรส', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001441', 'นางยุวดี มีเงินทอง', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001443', 'นางบุญชู มีเงินทอง', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001445', 'นางสุภา ไชยสงค์', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001449', 'น.ส.พศวีร์ อํ่ากำเนิด', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001457', 'นางลัดดา อํ่ากำเนิด', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001473', 'นางมาลิน จอยวงษ์', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001478', 'นางพิมพ์ สารสมบูรณ์', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001489', 'นางสมมาตร์ ภู่ยางโทน', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001507', 'น.ส.สมปอง เมืองชาวนา', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001511', 'น.ส.ขันทอง มังคะโชติ', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001517', 'น.ส.ชนิตา อินทรีย์', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001519', 'น.ส.กฤติมา พุ่มรส', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001522', 'น.ส.ณภัทร พุ่มรส', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001530', 'นางสำราญ เมืองชาวนา', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001535', 'นางทับทิม ภูมิผล', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001538', 'น.ส.มาลัย เมืองชาวนา', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001551', 'นางเนตร์ เมืองชาวนา', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001557', 'นางสุมาลี คงเนียม', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001565', 'นางขวัญตา เมืองชาวนา', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001574', 'น.ส.ชูลี เสือขำ', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001579', 'นางโชติกา คชฤทธิ์', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001617', 'น.ส.ธนกร เนียนตุ๊', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001618', 'นางลันทม ทับผึ้ง', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001624', 'นางถาวรีย์ ทิมกล่ำ', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001633', 'นางกัณหา เมฆประดับ', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001640', 'นางศุภาวิชฌ์ ลาวิล', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001644', 'น.ส.กฤติมา น้อยใจมั่น', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001645', 'นางชเอม น้อยใจมั่น', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001646', 'น.ส.สุวรรณี พาเมอร์', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001652', 'นางสรชา จันทร์จำรัส', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001654', 'นางพัทธนันท์ พรหมสูงวงษ์', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001664', 'นางพันธ์วริศน์ แย้มขะมัง', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001674', 'นางสัมฤทธิ์ วงษ์ไทย', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001692', 'นางสุนัน ศรีเดช', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001695', 'นางน้ำต้อย สูงสุด', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001704', 'นางเสนาะ วิกิจการโกศล', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001708', 'นางสนิท สุวรรณชาติ', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001710', 'นางเข็มทอง แสงเดือน', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001717', 'นางสุรินทร์ ทองใจบุญ', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001726', 'นางณรงค์ บัวประชุม', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001727', 'นางขวัญเรือน ทองศักดิ์', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001733', 'น.ส.ชลธิชา บัวประชุม', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001742', 'นางบรรจง เสือชาวนา', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001745', 'น.ส.กัญญาพร เสือชาวนา', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001760', 'นางปรารถนา แซ่โล้ว', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001776', 'นางชลลัดดา ชัยสุนทรโยธิน', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001783', 'นางชูศรี ทิมกลํ่า', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001789', 'น.ส.กิมวา สายประทุม', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001797', 'น.ส.รันทม คำศรี', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001812', 'น.ส.สุภาพ ใจผ่อง', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001818', 'นางตะวัน ทองใจบุญ', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001819', 'นางจันทรา ทองใจบุญ', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001824', 'นางธวัลรัตน์ สัจจะดิระภักดิ์', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001835', 'นางยุวภา เกตุเพ็ชร', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001837', 'นางธันวา บัวเกิด', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001840', 'นางปราณี มากรณ์', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001848', 'นางเกษร อํ่ากำเนิด', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001861', 'น.ส.ยุพา อํ่ากำเนิด', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001862', 'น.ส.สิริมนต์ อํ่ากำเนิด', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001868', 'น.ส.ณัฐวรา อํ่ากำเนิด', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001880', 'นางสนิท บุญมั่น', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001883', 'นางพวงเพชร มากจุ้ย', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001892', 'นางสมจิตร อํ่าเนินกุ่ม', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001894', 'นางน้ำฝน อ่ำเนินกุ่ม', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001900', 'นางเหมือนฝัน อํ่ากำเนิด', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001912', 'นางปาลิดา ขำนํ้าคู้', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001917', 'นางจันทิรา โพนามาศ', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001941', 'นางลำพูล ทองแท้', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001945', 'นางรัชพรรณ ใจบำรุง', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001950', 'นางพรรษชล พงษ์พานิช', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001970', 'นางชูชาติ ทองย้อย', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001979', 'นางมณีรัตน์ แก้วศรีทัศน์', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001984', 'น.ส.พรทิพย์ บัวผัน', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '001995', 'น.ส.ฐาปณี แจ่มทิม', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002004', 'นางคูณ มั่นชาวนา', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002009', 'นางนํ้าหวาน สุขสวัสดิ์', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002014', 'นางสมคิด ศรีคง', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002017', 'นางทับทิม ศรีคง', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002027', 'นางชวน แจ่มทิม', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002033', 'นางบุญช่วย ศักดิ์ดี', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002042', 'นางณัฐกานต์ กูลเล็ก', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002044', 'นางสุรินทร์ กูลเล็ก', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002070', 'น.ส.พนมวรรณ กูลเล็ก', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002073', 'นางเยาวรัตน์ ทองแท้', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002076', 'นางบุญธรรม จันทร์หวัง', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002079', 'นางลำพอง ปู่เกิด', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002082', 'นางสำราญ อ่ำกำเนิด', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002087', 'นางสำรวย สุขสวัสดิ์', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002097', 'นางบุญเรือน สังข์พาพันธ์', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002106', 'นางฉัตรฑริกา เกิดจันทึก', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002107', 'นางกาญจนา สุวรรณ์ชัย', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002118', 'น.ส.สุพรรณี แก้วบางทราย', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002119', 'นางสมคิด แก้วบางทราย', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002122', 'นางติ๋ม วงษ์ไทย', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002135', 'นางบุญเพิ่ม มั่นชาวนา', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002155', 'นางบุญเรือน ชมโลก', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002163', 'น.ส.ปาริชาติ ทองแท้', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002168', 'นางวิรัศ มุลตรีบุตร', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002186', 'นางโอเลี้ยง ทองแท้', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002191', 'นางจันทร์ลอน ต๊วนพานิช', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002195', 'นางเฉลิม บัวประชุม', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002199', 'นางชิด สุวรรณชัย', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002200', 'นางชาติ พันธุ์ขุนทด', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002207', 'นางเรณู แก้วบางทราย', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002212', 'น.ส.นุชจรีย์ สุวรรณชัย', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002221', 'น.ส.ประกอบ กำพร้า', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002223', 'น.ส.นิภาพร โอยา', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002227', 'นางมณฑา มิ่งสมร', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002231', 'นางสำเภา ชอบสวย', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002232', 'นางทิชา ชอบสวย', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002235', 'น.ส.สุรีรัตน์ พ่วงบุใหญ่', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002236', 'นางลำเพย พ่วงบุใหญ่', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002238', 'น.ส.เพชร พ่วงบุใหญ่', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002242', 'นางสนอง พ่วงบุใหญ่', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002243', 'นางเจริญ ควรสำโรง', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002255', 'นางทองย้อย โตกำแพง', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002268', 'น.ส.ย้า บัวประชุม', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002275', 'น.ส.กาญจนา คีบสูงเนิน', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002284', 'นางยิ้ม บัวประชุม', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002291', 'นางสกุนา บัวประชุม', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002298', 'นางละเอียด วรรณเกตุ', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002305', 'นางพยอม แก้วบางทราย', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002308', 'นางเฉลียว เอี่ยมสมบูรณ์', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002317', 'นางน้ำวุ้น เมืองชาวนา', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002327', 'นางวงษ์ ทิมเหลย', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002339', 'นางเพียร จันทร', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002348', 'นางทัศวรรณ ด้วงจันโท', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002351', 'นางมาลัย จันทร', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002355', 'นางอนันต์ ศิลธรรม', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002371', 'นางปัญญา แก้วบางทราย', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002373', 'นางสมปอง แก้วบางทราย', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002390', 'น.ส.อัญชลี กลํ่าพันธ์ดี', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002391', 'น.ส.อำภาพร บู่อ้น', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002394', 'นางวารี หงษ์เวียงจันทร์', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002406', 'นางละมัย กล่ำพันธ์ดี', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002411', 'นางแย้ม บัวประชุม', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002412', 'น.ส.ธิดา อํ่าเนินกุ่ม', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002413', 'น.ส.จันทร์งาม เต่าทองคำ', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002416', 'นางเอี่ยม ฤทธิ์บำรุง', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002419', 'นางสายัญ ม่วงทอง', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002433', 'น.ส.ทัศดาว ต๊วนพานิช', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002437', 'นางลำยง พันธุเมน', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002449', 'นางชอุ่ม ต๊วนพานิช', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002454', 'นางดวงกมล กล่ำพันธ์ดี', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002460', 'นางประจวบ กลํ่าพันธ์ดี', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002470', 'น.ส.นํ้าทิพย์ กองกิจ', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002473', 'นางยุพิน กลํ่าพันธ์ดี', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002479', 'นางครอง โตชาวนา', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002483', 'นางทองแดง ยกยิ่ง', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002490', 'นางทุเรียน โชติวงศ์ชาคร', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002493', 'นางสำลี ทองย้อย', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002494', 'น.ส.สำรวย เอี่ยมสมบูรณ์', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002499', 'น.ส.แวว แสงสว่าง', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002515', 'นางรั่นทม พ่วงบุใหญ่', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002538', 'นางสังเวียน พ่วงบุใหญ่', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002540', 'นางวาสนา กวยทวิมล', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002562', 'นางชุบ มั่นชาวนา', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002575', 'น.ส.ประนอม ต๊วนพานิช', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002583', 'นางเกษร ชนะภัย', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002584', 'นางลัดดา แก้วบางทราย', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002593', 'นางชลอ พุ่มเล็ก', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002613', 'นางลัดดา เขมรแดง', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002622', 'นางบุญสร้าง ปู่เกิด', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002630', 'นางพิสมัย ด้วงประดับ', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002635', 'นางตุ๊ดตู่ บัวผัน', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002641', 'นางผิน บัวผัน', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002642', 'นางทองหล่อ บัวผัน', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002650', 'นางลำพรวน บัวผัน', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002652', 'น.ส.ศุทธินี ดีอินทร์', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002676', 'นางนํ้าทิพย์ บัวผัน', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002685', 'นางจันทร วงษ์ไทย', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002691', 'นางรั่นทม โพธิ์ทอง', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002696', 'นางบรรจง แก้วบางทราย', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002699', 'นางน้ำฝน วงษ์ไทย', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002707', 'นางจันทร์เพ็ญ บัวผัน', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002717', 'นางสนอง เข็มเพชร', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002722', 'นางบุญล้อม พรายงาม', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002726', 'นางวาส แสงสวรรณ์', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002732', 'นางประกอบ เสนานุช', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002738', 'นางมนทา ชมเมืองมิ่ง', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002739', 'นางประภา มั่นชาวนา', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002753', 'นางพิมพร ปั้นคุ่ย', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002759', 'นางแสงเดือน พรมบึงลำ', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002764', 'น.ส.สุพัตตรา พรมบึงลำ', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002768', 'น.ส.สวาท วันรักชาติ', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002770', 'น.ส.นิยม วันรักชาติ', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002780', 'น.ส.ถนอม พระอุ้ย', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002785', 'นางพยอม น้อยใจมั่น', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002789', 'นางมยุรี น้อยใจมั่น', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002796', 'นางบุญส่ง กูลเล็ก', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002801', 'นางบรรจง น้อยบ้านใหม่', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002804', 'นางกิ่งดาว น้อยศรี', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002806', 'นางลัดดา สุวรรณชัย', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002807', 'นางสุนัน สุขสวัสดิ์', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002810', 'น.ส.ประนอม ทองแท้', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002818', 'นางนุชนาฏ ศาสนอง', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002825', 'นางจีรวรรณ วงษ์ไทย', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002828', 'นางสุพัชชา จันทร', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002830', 'นางชั้น จันทร', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002842', 'นางสุทิน แต้อุ้ย', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002845', 'นางหทัยรัตน์ พ่วงบุใหญ่', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002859', 'นางวรรณา ทับปะนานนท์', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002868', 'นางพินทอง แก้วบางทราย', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002881', 'นางจันทร์เพ็ญ โตแจ่ม', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002883', 'นางนิยม โตแจ่ม', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002886', 'นางติ๋ม ขุนโต', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002887', 'นางทองเริ่ม ตะโกภู่', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002907', 'นางละเอียด ชุ่มวิเศษ', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002908', 'น.ส.อนงค์ลักษณ์ ชุ่มวิเศษ', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002909', 'น.ส.ณัฐหทัย ปู่วงษ์เกิด', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002968', 'นางกิมไล้ บัวประชุม', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002974', 'นางละออง สร้อยจิตร', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002990', 'นางกาลดา จันทร', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '002994', 'นางผิน เหมฤดี', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003000', 'นางสมมาตร แสนสุขไสย', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003006', 'นางประมวล บุญมาก', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003018', 'นางสวรรค์ อาสกูร', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003023', 'น.ส.พิน ตอบกลาง', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003032', 'นางลำใย คงปราโมทย์', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003033', 'น.ส.ถวิล คงปราโมทย์', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003036', 'นางจำปี พันธ์ประโคตร', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003041', 'น.ส.ยวน น้อยลา', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003056', 'น.ส.ทองหล่อ ทองไสว', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003069', 'นางประทวน กันทา', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003074', 'นางปุ่น เต็งโล่ง', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003075', 'น.ส.สุนันทา เต็งโล่ง', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003082', 'นางกัลยาณี ชมยวง', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003103', 'นางจั่น สวัสดี', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003108', 'น.ส.ทองสุข อินทร์พันธ์', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003109', 'นางไข อินทร์พันธ์', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003121', 'นางสาคร ศรีสมัย', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003143', 'นางทิพวรรณ บัวประชุม', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003149', 'นางจันทรา คชพงค์', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003154', 'นางบุญมา จันทร', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003169', 'น.ส.ซ่อนกลิ่น สังข์ทอง', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003171', 'นางญาณี สังข์ทอง', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003173', 'น.ส.ศรีจันทร์ สังข์ทอง', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003182', 'น.ส.ปราณี อินทร์ภู่', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003187', 'นางติ๋ม สีตาแสง', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003215', 'น.ส.อุลัย กิมหนู', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003223', 'นางบุญสม รอดรักษา', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003245', 'นางสุทันต์ ประทุมศิริ', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003258', 'นางวรรณา แก้วบุตร', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003263', 'น.ส.สาวิตรี นัดกิ่ง', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003267', 'นางวันนา ราชเดช', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003269', 'นางสุมาลี บัวคำ', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003275', 'นางรำแพน บัวประชุม', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003280', 'นางสมศักดิ์ มีสุขแสงจันทร์', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003286', 'นางนงคราญ พงศ์สิงห์', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003301', 'นางพเยาว์ เดชเดชา', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003313', 'นางกิตติยา พ่วงบุใหญ่', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003328', 'นางศรีนวน ธูปขำ', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003337', 'นางสมหวัง แผงมณี', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003342', 'นางคล้าย เสือกล้า', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003347', 'น.ส.บุญเรือน เสือกล้า', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003355', 'นางสุนันท์ เสือกล้า', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003359', 'นางประหยัด อบเชย', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003364', 'นางสายหยุด แป้นทับ', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003367', 'นางสายสุนีย์ อบเชย', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003372', 'นางวันเพ็ญ มีพร้อม', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003374', 'นางจำปี สีพุฒ', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003377', 'นางทองคำ เสือกล้า', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003387', 'นางแตงไทย รอดรักษา', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003389', 'นางรัชนีกร แก่นมาก', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003397', 'นางจีม แก่นมาก', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003400', 'น.ส.จันทิมา แก่นมาก', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003404', 'นางดวงใจ แก่นมาก', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003406', 'นางอโนชา สายหยุด', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003407', 'นางชุติมณฑน์ แก่นมาก', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003410', 'นางสิริกร สุมาลา', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003412', 'นางสัมฤทธิ์ ดีรักษา', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003426', 'น.ส.กุหลาบ ชัยดา', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003427', 'นางน้อย รัตนา', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003443', 'นางโสภา ศรีโพธิ์', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003449', 'น.ส.ประเทือง ศรีโพธิ์', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003455', 'น.ส.กำลัย ศรีโพธิ์', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003468', 'นางอำนวย ภู่พันธ์', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003470', 'นางแช่ม ภู่พันธ์', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003475', 'นางสมนึก ชุ่มสถิตย์', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003482', 'นางเด็ด โพธิ์ทอง', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003483', 'นางมณี โปร่งจันทึก', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003494', 'นางลำเพย กล้าไพรินทร์', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003508', 'นางสุดใจ ภู่ยางโทน', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003515', 'นางสำเนียง อํ่าพุธ', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003525', 'นางพิมพา จอยวงษ์', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003533', 'นางติ๋ม โพธิ์ทอง', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003536', 'นางอนันต์ อาสกรู', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003538', 'นางอำนวย อาสกรู', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003545', 'น.ส.รัก กะตะสิลา', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003553', 'นางสมพิศ กะตะสิลา', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003555', 'นางแวว พึ่งพา', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003566', 'นางพิกุลแก้ว พึ่งพาสมบูรณ์สุข', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003575', 'นางอำพร ชมยวง', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003577', 'นางลำเพย แก้วกรี', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003589', 'นางเอมอร สว่างสุวรรณ', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003590', 'น.ส.พรนภา ส่องแสน', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003592', 'นางสุชาดา สว่างสุวรรณ', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003599', 'นางบุญไล้ สุคนธานุรักษ์', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003602', 'นางกิมลี้ ลาชาวนา', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003607', 'นางบุญเลิศ สายหยุด', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003610', 'นางลำพวง แหบคงเหล็ก', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003611', 'นางวันเพ็ญ แหบคงเหล็ก', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003619', 'น.ส.สุนิษา แหบคงเหล็ก', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003636', 'น.ส.วิทยา พ่วงชาวนา', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003637', 'นางรำพรวน เครือมี', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003657', 'นางจิรวดี เอกธำรงกิจการ', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003659', 'นางแหม่ม พ่วงชาวนา', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003683', 'นางภาทูน เรืองศรี', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003697', 'น.ส.สำเภา ภู่ยางโทน', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003700', 'นางประสงค์ เรืองศรี', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003709', 'นางชั้น จันทร์พิริยะพร', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003722', 'นางพานิชย์ พลกระจาย', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003726', 'นางตุ่น พลกระจาย', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003732', 'นางเพ็ญศรี ดิษฐอักษร', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003764', 'นางจรุญ ฉิมพลี', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003776', 'นางสมัย วงษ์ไทย', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003790', 'นางสังวาล จันทะกูล', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003798', 'นางประนอม ภู่พันธ์', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003818', 'นางเม้ย มิตรขุนทศ', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003827', 'นางภัสรา มณีท่าโพธิ์', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003834', 'นางสุนันทา ขันกสิกรรม', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003845', 'น.ส.เสาวลักษณ์ คมขำ', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003847', 'นางจำปา อบเชย', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003854', 'นางวิไลวัน แสนสุขไสย', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003872', 'นางสมจิตร ราชอ่อนศรี', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003875', 'นางพัชรี ปัญญาแถลง', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003883', 'นางน้อม ล้านคำทูล', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003884', 'นางบุญมี ปัญญาแถลง', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003914', 'นางสุภาพ โพธิ์ทอง', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003916', 'นางวรรณนา อาบคำ', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003922', 'นางสมมาตร จันทร', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003931', 'นางสมัย สายหยุด', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003936', 'นางนกแก้ว เกิดจันทึก', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003939', 'นางเตือนใจ ศรีโชติ', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003954', 'นางวิมล สมบูรณ์', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003958', 'น.ส.สมพร จันทร', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003960', 'นางพเยาว์ บุญศิริ', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003969', 'นางสุดใจ จันทร', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003970', 'นางดวงใจ อํ่าพุฒ', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003986', 'น.ส.พนม มณีใหม่', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '003994', 'นางอโนทัย มัตรถุจักร', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004029', 'น.ส.ละเมียด หาวิชา', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004037', 'นางประเสริฐ กองอำไพ', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004039', 'นางสมคิด จันขะ', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004043', 'นางจิราภรณ์ โนนทิง', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004046', 'น.ส.นกแก้ว สายหยุด', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004049', 'นางทิม เฉยชาวนา', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004050', 'นางทวี กันเกิด', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004064', 'น.ส.สมปอง จันขะ', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004071', 'นางวรรณา จันขะ', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004080', 'นางถวิล แซ่ตั่น', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004090', 'น.ส.บุญทิ้ง บัวคำ', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004099', 'นางมัลลิกา บุญมาก', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004100', 'น.ส.กรกมล บุญมาก', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004103', 'นางโสน ไทยอู่', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004108', 'น.ส.สมพอง คชพงษ์', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004109', 'น.ส.ยุพยง คชพงษ์', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004111', 'นางมาลัย คชพงษ์', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004114', 'นางยุพา คชพงษ์', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004120', 'นางสวิง คชพงษ์', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004122', 'น.ส.ฐิติมา คชพงษ์', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004126', 'นางลออง จันนอก', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004128', 'น.ส.สร้อยสุดา ทิศสุข', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004129', 'นางบุญเลี้ยง ทิศสุข', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004138', 'นางสังวาลย์ ทิศสุข', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004146', 'นางจันทรา ไซโต้', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004156', 'นางเกษมสุข อิ่มรอย', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004161', 'นางน้อย สนิทนอก', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004169', 'นางสังวาลย์ เสือกล้า', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004179', 'นางกิ่งกมล นาชอน', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004190', 'น.ส.บุหง่า พิชเชอร์', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004193', 'นางเฉลิมขวัญ อู่ไทย', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004196', 'น.ส.อารีย์วรรณ บุญประสาร', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004199', 'น.ส.สุพันธ์ แหลมทอง', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004200', 'น.ส.สังวาลย์ แหลมทอง', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004206', 'นางจตุพร มิ่งสมร', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004219', 'น.ส.ทองสุก เฮมกระโทก', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004239', 'นางรัตนาวดี เปรมศรี', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004248', 'นางแว่น แสนสุขใส', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004254', 'นางระยอง ภู่ชาวนา', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004275', 'นางประมวล ต๊วนพานิช', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004279', 'นางพรทิพย์ บัวประชุม', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004302', 'นางจำเนียน สายหยุด', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004316', 'น.ส.ยุพิน ร้ายสูงเนิน', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004319', 'น.ส.แก้วมณี ร้านสูงเนิน', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004326', 'นางวันเพ็ญ ร้ายสูงเนิน', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004329', 'น.ส.ประเทือง ร้ายสูงเนิน', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004336', 'น.ส.เนาวรัตน์ หินนอก', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004342', 'นางละออ ชมมิ', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004343', 'นางวิภา เกิดเปี่ยม', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004349', 'นางพรชนก หาญชาวนา', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004352', 'นางสำรวย เต็งโล่ง', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004358', 'นางสำราญ หาญชาวนา', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004369', 'นางลับ ฉาดจันทึก', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004375', 'น.ส.สุนัน ประสิทธิ์สุวรรณ', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004395', 'นางเปร่ง ประสิทธิ์สุวรรณ', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004403', 'นางบุญรอด บัวผัน', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004407', 'น.ส.พัด ดวงอินทร์', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004409', 'นางทองสุข หินนอก', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004418', 'นางเมียด บุญมาก', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004427', 'นางกวีวัลย์ แก้วกำเนิด', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004428', 'นางบุญส่ง วิลาไล', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004455', 'นางสีจันทร์ ประทุมศิริ', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004475', 'นางราตรี ชาญกูล', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004482', 'นางขวัญเมือง หวยสูงเนิน', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004489', 'นางเชื้อ รุ่งภาษา', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004495', 'นางหลวง ชาญสูงเนิน', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004504', 'นางหลง จันแดง', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004506', 'นางนิลวรรณ ศรีวรรณา', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004515', 'นางศิริกุล ธูปขุนทด', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004517', 'นางลำพวน พ่วงบุใหญ่', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004525', 'นางประจอง สุวรรณชัย', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004529', 'น.ส.วรรณา อาจสูงเนิน', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004533', 'นางอุไร เดียงสระน้อย', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004544', 'นางสมจิตร์ สบกระโทก', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004557', 'นางขวัญใจ ฮวดกระโทก', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004567', 'นางประทวน ขุนชาวนา', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004575', 'นางปราณีต ทองเพ็ง', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004582', 'นางปราณี พรมภู่น้อย', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004584', 'น.ส.สมปอง พรมภู่น้อย', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004585', 'น.ส.สุเนตร์ พรมภู่น้อย', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004606', 'น.ส.นุชนารถ ดิษฐ์ทอง', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004612', 'น.ส.ประจิม จำปาแดง', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004618', 'น.ส.เทวา ตันวันดี', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004620', 'น.ส.จุรีรัตน์ แจ่มเดชะศักดิ์', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004623', 'นางประคอง ผวยสูงเนิน', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004638', 'นางสมหมาย จวนสูงเนิน', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004639', 'นางนภาพร พลอยงาม', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004642', 'นางวันเพ็ญ จวนสูงเนิน', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004652', 'น.ส.สุวรรณ พลอยฉิมพารี', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004661', 'น.ส.นิยดา พุฒิชาวนา', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004680', 'นางกัญยานี ภู่ชาวนา', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004697', 'นางวาสนา มาลัยทิพย์', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004707', 'นางสมปอง ขัดตระกูล', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004714', 'นางอุไรวรรณ ขัดตระกูล', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004720', 'นางพรทิพย์ ขัดตระกูล', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004728', 'นางเฉลิม ขัดตระกูล', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004730', 'นางน้ำผึ้ง ขัดตระกูล', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004746', 'นางจิราภา พุฒิชาวนา', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004750', 'น.ส.สายฝน พุฒิชาวนา', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004753', 'นางตุ๊ วิชฉิมพาลี', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004755', 'น.ส.จันจิรา พุฒิชาวนา', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004756', 'นางนกแก้ว แสงเดือน', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004757', 'น.ส.อัญชลี แสงเดือน', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004764', 'นางเอื้อย กํ่าจีน', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004769', 'นางสุพันธ์ ช่อสูงเนิน', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004790', 'นางจันทา ฝางแก้ว', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004795', 'นางบุญช่วย กลํ่าสระน้อย', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004802', 'นางกัลยารัตน์ ขัดตระกูล', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004824', 'นางวันเพ็ญ โพธิ์ศรี', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004833', 'น.ส.สกุลทิพย์ ขำสาธร', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004838', 'น.ส.กรรณิการ์ มิตรสูงเนิน', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004851', 'นางจินตนา แก้วบางทราย', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004859', 'นางตุ้งหริ่ง เล่าสูงเนิน', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004868', 'นางดวงพร ดีรักษา', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004871', 'น.ส.สมภรณ์ ดีรักษา', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004881', 'นางสาคร ธูปพรมราช', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004885', 'นางสมบูรณ์ ดุขุนทด', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004887', 'นางอนุกูล ดุขุนทด', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004896', 'นางอำลี้ อาจสูงเนิน', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004897', 'น.ส.วัชรี อาจสูงเนิน', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004900', 'นางวศินา ชอบฉิมพาลี', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004908', 'นางบังอร จันขะ', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004912', 'น.ส.อรณี จันขะ', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004917', 'นางมานพ จุเรศ', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004922', 'นางกัญญานัฐ ปานเงิน', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004924', 'นางสุพัฒน์ ใจทน', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004931', 'นางสมปอง พรสมชัย', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004949', 'น.ส.แสวง โขลนกระโทก', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004959', 'น.ส.ทวี พ่วงชาวนา', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004973', 'น.ส.ศรีแพร คำนํ้าแดง', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004977', 'นางเกิด หวยสูงเนิน', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004985', 'นางสมศรี บุษดาจันทร์', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004986', 'น.ส.ซ้อยสุดา บุญมา', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004989', 'นางลำดวน มาลัยทิพย์', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004993', 'นางสมถวิล เรืองมี', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '004998', 'นางคำนึง ฉายยางโทน', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005001', 'นางศรีสมพร มณีท่าโพธิ์', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005005', 'นางสมจิตร ศุกรตุลธร', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005007', 'น.ส.เสาวคนธ์ เรียบสูงเนิน', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005021', 'น.ส.พิมลพร นวลสุธา', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005034', 'น.ส.วิลัย อยู่คง', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005035', 'น.ส.พัชราภรณ์ อยู่คง', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005039', 'นางนิลบล รัตน์วิจิตร', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005057', 'นางน้อม ครามสระน้อย', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005064', 'น.ส.สมบุญ ครามสระน้อย', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005065', 'น.ส.ไพรฑูลย์ ครามสระน้อย', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005070', 'นางสมปอง ฉายยางโทน', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005076', 'นางสำรวย ภูแข', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005086', 'นางลำพึง ปลายกระโทก', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005097', 'นางสมพิษ โสงขุนทด', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005102', 'นางแสงจันทร์ พัฒนพันธ์', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005109', 'นางวันเพ็ญ โสงขุนทด', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005111', 'นางไฉน บุษดาจันทร์', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005125', 'นางพนม เล็กกุล', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005131', 'นางลำพอง โสงขุนทด', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005138', 'น.ส.อุไรวรรณ โสงขุนทด', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005141', 'นางยุพา ปลายกระโทก', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005147', 'นางสังวาลย์ ลึงพรมราช', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005153', 'น.ส.สีม่วง ศิริโชติ', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005155', 'น.ส.อำไพร เล็กกระโทก', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005156', 'นางหนูจันทร์ ธูปขุนทด', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005161', 'นางอริสา ฮวดกระโทก', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005165', 'นางแม้น ฮวดกระโทก', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005169', 'นางบุญรอด เม่นชาวนา', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005171', 'นางประกอบ เกิดจันทึก', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005187', 'นางประทุม พานิช', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005213', 'น.ส.ขวัญเรือน เทียนเฉลิม', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005223', 'น.ส.เย็น วิชฉิมพลี', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005224', 'น.ส.สายัน วิชฉิมพลี', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005229', 'นางขวัญยืน ยอดรัก', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005236', 'น.ส.ต้อย ครู่กระโทก', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005240', 'นางส้มเกลี้ยง ครู่กระโทก', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005245', 'นางทีป ชอบฉิมพลี', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005251', 'นางประเทือง สงวนสิน', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005257', 'นางจำรัส คำพุฒ', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005261', 'นางบุญเตียง ข่มอารมณ์', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005275', 'น.ส.จรรยา วิชฉิมพาลี', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005282', 'น.ส.อัญชลี คู่กระโทก', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005298', 'นางปราณี ทั่วสูงเนิน', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005303', 'นางสนิท พ่วงชาวนา', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005309', 'นางวรรณา วิชฉิมพาลี', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005312', 'น.ส.ติ่ง ฮวดกระโทก', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005337', 'นางวรรณนิภา เรืองมี', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005339', 'นางนวล ทองทิม', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005356', 'นางพยอม บุญจันทึก', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005361', 'นางพยุง ทองเอก', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005364', 'นางวันเพ็ญ อินทร์อักษร', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005381', 'น.ส.อัจฉรา ชาญสูงเนิน', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005384', 'นางสมศรี จันทร', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005397', 'นางนพร ช่อสูงเนิน', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005404', 'น.ส.วิไลวรรณ พลฉิมพลี', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005406', 'นางสังวาลย์ พลฉิมพลี', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005412', 'นางทุเรียน ขัดตระกูล', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005422', 'นางเรไร ธัมโคตร์', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005430', 'นางหนูพิน กลุ่มค้างพลู', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005432', 'น.ส.ประทิน เลาะสูงเนิน', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005434', 'นางสุนทร กุนมล', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005442', 'นางอารีย์วัลย์ เอิบอิ่ม', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005447', 'นางขวัญเมือง อบเชย', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005450', 'นางสังวาลย์ เกิดเทวา', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005462', 'นางกัลยา แสงทอง', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005466', 'น.ส.รจนา คู่กระโทก', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005467', 'นางอัจฉรา คู่กระโทก', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005468', 'นางโสน คู่กระโทก', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005479', 'นางลูกชิ้น ชอบฉิมพลี', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005485', 'นางบัวผัน อาจสูงเนิน', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005500', 'น.ส.นํ้าผึ้ง วิชฉิมพาลี', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005502', 'น.ส.กนกวรรณ รัตนา', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005505', 'นางบุญนาค รัตนา', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005513', 'นางสมปอง ครามสระน้อย', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005526', 'น.ส.ภาชิตา ใหญ่จันทึก', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005528', 'น.ส.ละมัย ชนะสูงเนิน', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005536', 'นางมะลิ ด้วงสูงเนิน', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005538', 'น.ส.พิมพ์วรัญ ภูแข', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005552', 'นางประมาณ อำนวย', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005555', 'นางนิภารัตน์ ชอบฉิมพาลี', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005564', 'นางมาลัย ทั่วสูงเนิน', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005568', 'นางสุภาพร คำเหล็ก', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005577', 'นางจำปา เล็กกระโทก', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005582', 'นางนงลักษณ์ จันทร์แจ้ง', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005595', 'นางทองคำ โคกสูงเนิน', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005598', 'นางนํ้าทิพย์ โคกสูงเนิน', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005600', 'น.ส.นิตยา โคกสูงเนิน', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005604', 'นางยุพิน เฮียงจันทึก', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005609', 'นางสุเนตร เฮียงจันทึก', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005615', 'นางนํ้าเชื่อม ดอกรัก', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005621', 'นางอารีวรรณ บัวผัน', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005629', 'นางจาริการ์ บัวผัน', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005631', 'นางจำเนียร ทับสอน', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005636', 'นางลำพึง แก้วเพ็ญ', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005642', 'นางยุพิน เรืองรักษ์', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005643', 'นางประไพ เรืองรักษ์', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005653', 'นางดวง เอื้อนยศ', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005657', 'นางอำไพ กลิ่นอาจ', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005658', 'นางเตือนใจ พ่วงชาวนา', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005660', 'น.ส.พิลัยวรรณ พ่วงชาวนา', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005669', 'นางละมัย พรมจันทึก', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005671', 'นางบุญตา โสวรส', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005673', 'นางสุทิน ประหยัดทรัพย์', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005680', 'น.ส.ลัดดา นาคสูงเนิน', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005690', 'นางทองคำ แคล้วสูงเนิน', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005696', 'นางทับทิม เคลิ้มกระโทก', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005698', 'นางปิ่นแก้ว ม่วงขวัญ', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005701', 'นางฉลอง แคล้วสูงเนิน', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005706', 'นางทองย้อย แคล้วสูงเนิน', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005711', 'นางกฤษณา ขำทองดี', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005714', 'นางระเอียด แคล้วสูงเนิน', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005717', 'นางฟองเมฆ เรียงสันเที๊ยะ', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005720', 'นางคะแนน เรียงสันเที๊ยะ', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005727', 'น.ส.อทิตยา โปร่งจันทร์ทึก', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005732', 'นางจันทร์เพ็ญ เรียงสันเที๊ยะ', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005738', 'น.ส.บรรเทิง โปร่งจันทึก', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005754', 'นางละม่อม ทั่วสูงเนิน', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005765', 'น.ส.นํ้าค้าง ทั่วสูงเนิน', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005770', 'นางอุบล ทั่วสูงเนิน', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005771', 'น.ส.สำราญ พานโถม', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005773', 'น.ส.ชูชีพ ใหญ่จันทึก', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005774', 'นางพิมพา ใหญ่จันทึก', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005783', 'น.ส.พนม ขัดตระกุล', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005787', 'นางจำเนียร พุฒจันทึก', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005788', 'น.ส.รุ่งรัตน์ พุฒจันทึก', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005791', 'นางประเทือง จันทร์นอก', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005810', 'นางสุนีย์ ไทรย้อย', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005843', 'นางประครอง อ่อนสะเดา', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005848', 'น.ส.ศศิธร นิลจารนัย', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005852', 'นางทองคำ ขำสาธร', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005853', 'น.ส.ผานิด วิชฉิมพาลี', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005864', 'นางมาลี สารีทัศ', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005875', 'น.ส.กชกร สินพรหมราช', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005877', 'น.ส.ไพรรินทร์ สินพรหมราช', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005884', 'นางลำดวน เพียรทอง', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005911', 'นางอุทัย ประทุมศิริ', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005920', 'นางสมัย บุญช่วย', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005928', 'นางมะลิวัลย์ ศรีบุตรดา', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005938', 'นางเสงี่ยม เจริญสุข', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005940', 'น.ส.ทิพย์ภาพรรณ์ ตาลงาม', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005956', 'นางสง่า บุญช่วย', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005960', 'นางไสว กรวดนอก', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005967', 'นางรจนา โสทะกะพันธ์', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005971', 'นางมณี โพธิศาสตร์', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005988', 'นางจำปา มีพร้อม', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005990', 'นางบุษบง สาลีศูนย์', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005994', 'นางจำปี สายทอง', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '005999', 'นางเชียร สิงหฤทธิ์', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006001', 'นางยุพิน บุญช่วย', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006018', 'นางพิมพา เรืองรักษ์', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006020', 'น.ส.สุพัตรา เรืองรักษ์', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006038', 'นางพิมพ์ ตาลงาม', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006039', 'น.ส.นันทิดา ตาลงาม', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006043', 'นางประกวด สินพรหมราช', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006051', 'นางอัมพร ยุคสูงเนิน', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006056', 'นางรัตนา ปานมงคล', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006058', 'นางศิริพร ชมศรี', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006061', 'น.ส.ยุพา แซ่ลี้', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006084', 'นางสำเนียง แบนไทย', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006117', 'นางมาลัย ยุดสูงเนิน', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006123', 'นางอุ่นเรือน กริตะคุ', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006124', 'น.ส.สาลี่ กริตะคุ', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006125', 'น.ส.อัญชลี เปพันดุง', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006130', 'นางปรานอม ทรัพย์เกิด', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006140', 'น.ส.นิตยา ทับทิมจันทร์', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006141', 'นางละม่อม จวนสูงเนิน', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006144', 'นางสมบูรณ์ โฉสูงเนิน', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006145', 'นางวิภาพร โฉสูงเนิน', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006155', 'นางสมจิต เขียมสุวรรณ์', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006165', 'นางถนอม เขียมสุวรรณ์', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006169', 'นางนกเล็ก เขียมสุวรรณ์', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006178', 'นางทวีวรรณ เขียมสุวรรณ์', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006181', 'น.ส.หวั่น จำปาแก้ว', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006188', 'นางสังวร มีดอนไพร', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006190', 'นางนิภา พรมจันทึก', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006193', 'นางมณี พรมจันทึก', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006202', 'นางยุพิณ บัวผัน', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006211', 'นางลำพวน พระอุ้ย', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006218', 'นางยุพา ดอนไพร', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006224', 'นางเพชรไทย์ เอื้อนยศ', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006227', 'นางสงวน เอื้อนยศ', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006262', 'นางประจวบ พ่วงชาวนา', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006271', 'นางเรณู พ่วงชาวนา', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006277', 'น.ส.ทรายทอง เดสูงเนิน', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006282', 'นางประนอม ดอนไพร', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006286', 'นางตอน กาสูงเนิน', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006293', 'นางราวรรณ์ ลาชาวนา', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006297', 'นางสายชล ดอนไพร', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006300', 'น.ส.สุภาพ มุสันเที๊ยะ', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006303', 'น.ส.ยุวภา มุสันเที๊ยะ', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006307', 'นางประจบ เล็กกุล', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006308', 'นางบุญจอง ทั่วสูงเนิน', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006316', 'นางหวล เหล็กสูงเนิน', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006324', 'นางเวียง ด่านขุนทศ', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006327', 'น.ส.วิไลวรรณ ด่านขุนทศ', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006346', 'นางลำจวน มณีจันทร์', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006356', 'นางลำยงค์ โฉสุงเนิน', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006365', 'นางสายบัว สุขพงษ์', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006366', 'น.ส.นิภาพร สุขพงษ์', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006368', 'นางทองคำ เอื้อนยศ', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006379', 'นางเรณู จันทร์วิชัย', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006384', 'น.ส.สุมาลี บุญทา', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006397', 'น.ส.สมใจ เพียผาบ', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006426', 'นางสำริต ดาสี', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006436', 'น.ส.พัชรินทร์ ทับทอง', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006445', 'นางสาหร่าย บุตรโพธิ์', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006449', 'นางวาสนา จวนสูงเนิน', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006454', 'นางนิรมล จวนสูงเนิน', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006461', 'น.ส.นุรี เหล็กสูงเนิน', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006462', 'น.ส.ระรื่น เหล็กสูงเนิน', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006466', 'นางนิตย์ ขาวขมิ้น', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006473', 'นางศรีอนันต์ พ่วงชาวนา', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006480', 'น.ส.เข็มทราย พ่วงชาวนา', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006486', 'นางปักเป้า เอื้อนยศ', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006510', 'นางพัน เอื้อนยศ', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006519', 'นางกลม เอื้อนยศ', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006521', 'น.ส.สำเนียง น่วมบุใหญ่', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006525', 'นางวาด ทิมใจตรง', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006543', 'นางยุพิน เสือกล้า', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006545', 'นางสวา คล้ายท่าโรง', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006551', 'นางประคอง อ่อนแย้ม', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006557', 'นางมาลัย หมีบ้านใหม่', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006558', 'นางอานัน ศรีละออ', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006561', 'นางสมคิด ไพริด', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006566', 'น.ส.เมตตา หมีบ้านใหม่', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006567', 'นางอติพร มงคลคำซาว', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006579', 'นางยุพิน ไรยวงษ์', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006584', 'น.ส.อัญชลี สมบัติใหม่', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006596', 'นางทองอยู่ พ่วงพี', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006599', 'น.ส.ปรียา ภูมิผล', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006610', 'นางเง็ก หมีบ้านใหม่', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006615', 'นางสุนทร น่วมบุใหญ่', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006634', 'น.ส.พอตา ซื่อสกุลรัตน์', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006636', 'น.ส.สนใจ ซื่อสกุลรัตน์', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006649', 'นางทองหยิบ เสนานุช', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006651', 'นางปราการ สีซอ', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006653', 'นางอำพร พรหมสมบูรณ์', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006655', 'นางสายหยุด จุปุ', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006661', 'นางสุ่น บุญมีมา', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006663', 'น.ส.พิน ตามขมิ้น', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006671', 'นางทิพย์รัตน์ ภูมิผล', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006677', 'นางสมคิด ภูมิผล', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006693', 'น.ส.ปภาดา โตเฟื่อง', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006700', 'นางบุญสม กำพล', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006703', 'นางคำนึง กำพล', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006707', 'นางน้ำค้าง ป่าเกลือ', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006710', 'นางเสนอ วรรณ์ทิ', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006724', 'นางสุวรรณ์ หมีบ้านใหม่', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006727', 'นางอินทิรา ฤทธิมั่น', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006729', 'นางสำเนียง เสนานุช', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006736', 'นางปัทมา เสือชาวนา', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006746', 'นางถาวรณ์ ภูมิผล', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006751', 'นางนาที หมีบ้านใหม่', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006755', 'นางสำเนียง หมีบ้านใหม่', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006766', 'นางสนม พุ่มทับทิม', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006770', 'นางบุญเยือน ถาวรกุล', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006773', 'นางสำเริง มากจุ้ย', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006782', 'น.ส.มธุริน รอดเครือวัลย์', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006787', 'นางอารี รอดเครือวัลย์', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006788', 'น.ส.พวงเพ็ญ รอดเครือวัลย์', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006797', 'นางสังเวียน สุนทรชัย', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006804', 'นางน้ำค้าง ศรีผึ้งทอง', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006807', 'น.ส.สมจิตร ไพริด', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006809', 'นางสมบุญ ไพริด', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006833', 'นางทองสุข ภูมิผล', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006841', 'นางน้ำค้าง รอดเครือวัลย์', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006879', 'นางฮิม ศรีบ้านแกร', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006883', 'นางมาลัย รอดเครือวัลย์', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006886', 'นางสำอาง สาแช', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006908', 'น.ส.ขวัญเวียง รอดเครือวัลย์', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006916', 'นางสำเนา โพธิ์เงิน', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006932', 'นางกรกต ยอดสุวรรณ์', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006936', 'น.ส.สิณาวรรณ ทิมกลํ่า', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006937', 'นางสุวรรณ์ ทิมกลํ่า', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006942', 'นางมนุ มีเงินทอง', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006952', 'นางแสงเดือน อํ่าเนินกุ่ม', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006959', 'นางรัชชิน โพธิ์เงิน', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006982', 'นางประมวล ทับทอง', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006995', 'นางดวงดี เหมฤดี', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '006999', 'น.ส.กาญจนา นาชอน', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007006', 'นางทองเปลว นาชอน', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007008', 'นางมะปราง พยัฆษี', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007015', 'นางปรียานุช มีเดช', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007020', 'นางจรูญ เดชห้วยไผ่', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007029', 'นางสายหยุด สุขนวน', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007030', 'นางสงบ ก้อนจ้าย', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007031', 'นางสงัด ศิริ', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007035', 'นางทองคำ ภูมิผล', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007041', 'นางสุภาภรณ์ ภูมิผล', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007060', 'นางบุญช่วย บุญมีมา', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007064', 'นางกรกมล ป้อมสาหร่าย', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007073', 'นางลันทม กันสาด', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007086', 'นางเนาวรัตน์ ป้อมสาหร่าย', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007091', 'นางประทุม ป้อมสาหร่าย', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007100', 'นางฉวี เดชห้วยไผ่', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007105', 'นางมณู นันทเดช', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007116', 'นางสม วรรณาคำ', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007126', 'นางธนพร ป้อมสาหร่าย', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007131', 'นางรั่นทม มณีท่าโพธิ์', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007136', 'นางใช้ จันดา', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007138', 'นางแสงดาว สงจันทร์', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007140', 'นางวาสนา จันดา', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007152', 'นางทอน เก่าราชการ', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007155', 'นางสมพร เก่าราชการ', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007166', 'นางละเอียด หงษ์หิน', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007175', 'น.ส.ปาน คล้ายท่าโรง', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007177', 'นางวันเสาร์ คล้ายท่าโรง', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007178', 'นางเจียม คล้ายท่าโรง', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007179', 'นางทับทิม กัลเกตุ', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007182', 'นางอ่อม โพธิ์ทอง', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007191', 'น.ส.ลูกชิ้น ศรีบ้านแกร', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007197', 'นางสมจิตร เก่าราชการ', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007202', 'นางสำเนาว์ ป้อมสาหร่าย', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007205', 'นางลำพึง เก่าราชการ', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007207', 'น.ส.มาลัย อ่ำชาวนา', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007210', 'นางสยา เซาะดี', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007217', 'นางทองย้อย มีเงินทอง', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007229', 'นางปิยพร หมีบ้านใหม่', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007247', 'น.ส.ฐิติพร บุญมีมา', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007248', 'นางธง บุญมีมา', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007253', 'นางสมจิตร เทียนสมจิตร', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007259', 'นางจันทนา ศรีสอาด', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007266', 'น.ส.คิน กำพล', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007273', 'นางบุญนำ ขำบางโพธิ์', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007275', 'นางศรีวรรณ แต่งผล', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007279', 'นางวาสนา ทัศนะ', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007288', 'นางทุเรียน ทัศนะ', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007291', 'นางสุทิ ขำบางโพธิ์', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007299', 'นางเตือนใจ ทับทิมทอง', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007300', 'น.ส.นภาพร ทับทิมทอง', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007310', 'นางบุญธรรม โพธิ์ทอง', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007315', 'น.ส.สมควร โพธิ์ทอง', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007324', 'นางรุ่งทิพย์ ศรีสวัสดิ์', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007334', 'นางสายยัน รักอ่อน', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007358', 'น.ส.ญาณิชากาญจน์ บุญมีมาชินภัค', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007370', 'นางบุญนำ ฤกษ์พิชัย', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007372', 'น.ส.นภัสสร โตชาวนา', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007381', 'นางใต้ร่ม สุขเมือง', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007383', 'นางกิมหล่วน วังสัจจา', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007385', 'นางนิลาวัณย์ วงศรีจันทร์', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007395', 'นางนุคทา ศรีบ้านแกร', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007399', 'นางสมหวัง ฤกษ์พิชัย', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007403', 'นางเพยาว์ โพธิ์ทอง', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007412', 'นางวันเพ็ญ ขำบางโพธิ์', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007415', 'นางลำยงค์ ฉิมศิริ', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007420', 'นางเสนาะ พงษ์พานิช', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007431', 'นางอัญชรี ขำบางโพธิ์', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007439', 'นางกิมหลวน ศรีสวัสดิ์', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007445', 'นางประทวน เทียนสมจิตร', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007459', 'นางสำเนียง นุ้ยเย็น', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007464', 'นางถวิล เก่าราชการ', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007485', 'นางจำลอง หลวงภักดี', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007486', 'นางจรุณ หลวงภักดี', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007502', 'นางฉวี เก่าราชการ', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007506', 'นางสำเนียง จันดา', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007509', 'นางวาลี จันดา', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007515', 'นางประสาร์ ทับทิมทอง', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007519', 'น.ส.เนตรนภา ราชอ่อนศรี', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007521', 'นางมาเนียด ทองเกิด', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007526', 'นางบุญนำ กัณภักตร์', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007528', 'นางเยือน ทองเกิด', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007529', 'นางนภัสสร ทองเกิด', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007546', 'นางเลียม ขำบางโพธิ์', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007554', 'นางสมถวิล ขำบางโพธิ์', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007557', 'นางติ๋ม ขำนํ้าคู้', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007559', 'นางพิกุล พันธ์เรือง', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007573', 'นางประทุม พลับพลา', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007574', 'นางกุหลาบ พันธ์ประโคตร', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007579', 'นางอำ รันระติยา', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007584', 'นางทองหล่อ ขำบางโพธิ์', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007587', 'น.ส.สุมาลี ขำบางโพธิ์', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007591', 'นางจำเริญ คงปราโมทย์', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007602', 'นางณัฐชนก คงปราโมทย์', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007611', 'นางวิยะดา ทองเฟื้อง', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007621', 'นางปวีณา สุขไกร', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007636', 'นางแอ๊ด แทนงิ้ว', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007658', 'นางลำใย มณีใหม่', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007659', 'นางนิโลบล มณีใหม่', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007677', 'นางมณเฑียร เทียนสมจิตร', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007685', 'นางลัดดา เทียนสมจิตร', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007689', 'นางประทวล เทียนสมจิตร', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007692', 'นางบุญส่ง อ่อนสี', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007694', 'นางอุษา กำพล', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007698', 'นางบุญช่วย อ่อนสี', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007704', 'น.ส.สมปอง ถาวรกูล', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007713', 'นางสอิ้ง ถาวรกูล', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007716', 'นางบาหยัน สังข์ทอง', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007718', 'นางสำเนียง หล้ามี', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007733', 'นางวนิดา บัวประชุม', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007735', 'นางวิไลรัตน์ พระอุ้ย', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007742', 'นางกุลปรียาพร แสงภูติ', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007745', 'นางณภัทร บัวประชุม', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007754', 'นางกรกานต์ มงคล', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007771', 'นางณัชชา ไชยวิเศษ', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007783', 'นางวันชาติ มีเงินทอง', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007792', 'นางลำใย สูงสุด', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007795', 'น.ส.ชุติมันต์ สูงสุด', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007799', 'นางจำรูญ ท้วมประดิษฐ์', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007801', 'น.ส.นิชาภา ท้วมประดิษฐ์', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007804', 'นางกิมลี้ บัวประชุม', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007810', 'นางพา เพ็งเรือนงาม', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007817', 'นางณัฐกาน เที่ยงประสาทพร', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007824', 'นางวริศรา น้อยใจมั่น', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007831', 'นางจาก ภู่ชาวนา', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007834', 'นางรัตนา ภู่ชาวนา', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007839', 'นางสำลี แสงเดือน', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007842', 'นางมณี น้อยใจมั่น', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007847', 'นางประไพร บัวประชุม', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007849', 'นางกิม จันสารคาม', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007859', 'นางบุญเหลือ ใจรัก', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007864', 'นางลวาย จอยวงษ์', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007866', 'นางสงัด สมตัว', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007869', 'นางติ๋ม น้อยบ้านใหม่', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007872', 'น.ส.จันทนา น้อยบ้านใหม่', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007875', 'นางประจักษ์ บัวประชุม', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007880', 'นางเสริม บัวประชุม', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007886', 'นางยุพิน ป้อมสาหร่าย', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007893', 'นางส้มเช้า จอยวงษ์', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007898', 'น.ส.อักษร กันสาด', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007901', 'นางลำพูน กันสาด', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007908', 'นางกิมฮวย แสงเดือน', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007916', 'นางอมรรัตน์ ปู่เกิด', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007920', 'น.ส.ถวิล จอยวงษ์', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007930', 'นางนารี จอยวงษ์', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007937', 'นางกิมเฮง บัวประชุม', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007944', 'นางประชุม นาคอินทร์', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007945', 'นางลาวัณย์ฉวี จอยวงษ์', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007951', 'น.ส.ณัฐชิดา บัวประชุม', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007953', 'นางรันทม จอยวงษ์', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007957', 'นางยุพิน จอยวงษ์', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007972', 'นางรำแพน จอยวงษ์', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007977', 'นางพิชญาภา นุมัติ', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007978', 'นางลำใย ภู่ชาวนา', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007979', 'นางเบญจมาส เรืองทอง', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007984', 'นางล้วน พรหมบึงลำ', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '007997', 'นางทองเปลว แจ้งชุ่ม', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '008009', 'นางกล้าน พรหมบึงลำ', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '008011', 'น.ส.ยลดา พรหมบึงลำ', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '008022', 'นางจันดา จินดามัง', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '008026', 'นางพัด จอยวงษ์', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '008035', 'นางนงค์นุช จอยวงษ์', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '008036', 'น.ส.อุไรวรรณ จอยวงษ์', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '008047', 'นางมันทนา จอยวงศ์', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '008054', 'นางไพวัลย์ พึ่งสลุด', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '008060', 'นางจาริยา แสงสำลี', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '008067', 'นางอำนวย พิศพร', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '008071', 'นางสมควร มงคล', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '008076', 'นางไข่ สว่างวงศ์', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '008080', 'นางกฤชกร ท่าโพธิ์', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '008083', 'นางสมัย มงคล', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '008085', 'น.ส.จันทร์ยาลักษณ์ มงคล', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '008087', 'นางสงวนศรี มงคล', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '008096', 'น.ส.กชพรรณ บัวประชุม', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '008104', 'นางกิตติกานต์ สังข์นวล', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '008128', 'นางสุนทร อินทร์สอน', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '008140', 'นางสมปอง บัวผัน', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '008182', 'นางน้ำเชื่อม พระอุ้ย', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '008189', 'นางบังอร เกิดเปี่ยม', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '008237', 'นางเพชรี แย้มพลาย', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '008239', 'นางทวีป ประหยัดทรัพย์', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '008255', 'นางสังเวียน นุ้ยวังทอง', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '008264', 'น.ส.ทิพรัตน์ สุคนธานุรักษ์', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '008287', 'นางเยาวลักษณ์ ผลดี', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '008300', 'น.ส.บุญยืน เขียวขำ', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '008301', 'นางบุญมา บัวประชุม', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '008327', 'นางอารยา คล้ายท่าโรง', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '008334', 'นางวรรณา เอื้อนยศ', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '008439', 'นางนาที อํ่าเนินกุ่ม', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '008477', 'นางทวาย เขียวแก้ว', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '008481', 'นางราษี โปร่งจันทึก', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '008492', 'น.ส.จุไรรัตน์ จันทศรี', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '008534', 'นางธิดารัตน์ นำพา', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '008539', 'นางกฤตพร มหาเรือนขวัญ', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '008557', 'นางสำลี อึ่งกุล', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '008575', 'นางทองพูน ไร่สูงเนิน', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '008621', 'นางกาหลง บัววังโปร่ง', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '008714', 'นางส้มแป้น เล่าสูงเนิน', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '008716', 'นางชัญญากร พลสว่าง', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '008739', 'นางส้มเลียง จันทวงค์', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '008764', 'นางสำเนียง ฉายยางโทน', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '008791', 'นางหอม พิมพ์มีลาย', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '008809', 'นางสำรวย ใจรัก', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '008823', 'น.ส.พัชรินทร์ โขลนกระโทก', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '008826', 'น.ส.ประภาศรี โฮริกูชิ', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '008846', 'นางธูป จงมีสุข', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '008939', 'นางประทิน ทองไสว', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '009003', 'นางอุดม ขำบางโพธิ์', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '009011', 'นางชัยรัตน์ ขำนํ้าคู้', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '009030', 'นางอุ่นเรือน นิ่มเอนก', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '009041', 'นางบุผา ทองย้อย', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '009070', 'นางมณีรัตน์ วิเชียรแสน', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '009103', 'นางแววดาว ทานา', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '009105', 'นางติ๋ม มีสุขแสงจันทร์', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '009138', 'นางอำพร โฉสูงเนิน', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '009148', 'นางสงบ พระอุ้ย', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '009155', 'นางจู้ชาน ภู่ชาวนา', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '009201', 'น.ส.สุมณฑา พันธุ์เผือก', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '009204', 'นางประจิ๋ม ประเวศจำนงค์สังข์', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '009209', 'น.ส.ชเรียม อํ่ากำเนิด', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '009225', 'นางทองหยด บัวคำ', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '009247', 'นางปราณี คงปราโมทย์', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '009280', 'นางทองคำ บุญแท้', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '009287', 'นางอินณะรี ทองคำ', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '009340', 'นางลำใย ชัยดา', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '009348', 'นางชญานนท์ ศรีหอม', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '009388', 'นางศิริกัลยา แสงจันทร์', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '009390', 'นางจันดี ทานา', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '009409', 'นางอนงค์ เพชรแก้ว', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '009414', 'นางสมพงษ์ แปวขุขันธ์', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '009456', 'นางทองกัน สมปล้อง', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '009477', 'นางเสาวนีย์ เทียนโสภา', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '009478', 'นางบุญรอด เทพทองดี', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '009501', 'นางวิเชียร เทียนเงิน', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '009522', 'นางอำพันธุ์ บุญมาก', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '009546', 'นางศิริกรานต์ แย้มขะมัง', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '009640', 'น.ส.ชัญญาลักษณ์ รัตนธันยาพร', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '009753', 'นางวิไลพร จันทร์หวัง', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '009834', 'นางสาคร ต่ายจันทร์', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '009836', 'นางอลิษา พุ่มรส', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '009839', 'นางสมใจ เรืองทิม', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '009844', 'นางชรินรัตน์ พ่วงชาวนา', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '010048', 'นางไพโรจน์ ขำน้ำคู้', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '010067', 'นางสุรัตน์ รั้วสำราญ', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '010091', 'นางคำจูณ แสนสุขไสย', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '010143', 'นางสำรวย เมืองขวา', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '010223', 'นางเจียว กริมหนู', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '010245', 'นางวาสนา ขำนํ้าคู้', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '010247', 'นางหัทยา พรหมบึงลำ', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '010299', 'น.ส.ยุพิน อ่ำพุธ', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '010365', 'นางเพลินพิศ บุญส่ง', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '010400', 'นางจง สุขพงษ์', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '010406', 'นางมาลัย พวงมะเดื่อ', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '010427', 'นางมาลัย น้อยใจมั่น', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '010435', 'นางสำรอง รัตนกำเนิด', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '010443', 'นางพัด จอยวงษ์', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '010444', 'นางปราถนา หล่อตระกูล', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '010445', 'น.ส.คนึง คีบสูงเนิน', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '010450', 'นางน้ำตาล มีสุขแสงจันทร์', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '010461', 'นางเพชรรุ่ง เสือกล้า', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '010485', 'นางอุบล ป้อมส่าหร่าย', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '010488', 'นางหยิน คชพงษ์', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '010502', 'นางกัญญาพร สุขนวล', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '010517', 'นางระเบียบ อินทิปปัญญา', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '010524', 'นางเสน่ห์ สวัสดี', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '010544', 'นางสุรางค์ แย้มทัศน์', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '010549', 'นางทองใบ ทรัพย์ประเสริฐ', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '010631', 'น.ส.สายฝน มุดสูงเนิน', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '010684', 'นางรุ่งรุจี ลันขุนทด', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '010699', 'นางไสว ฉัตรพันธ์', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '010714', 'น.ส.ปราณี เสาร์เพ็ชร', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '010777', 'น.ส.น้ำหวาน มีสุขแสงจันทร์', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '010794', 'นางน้ำฝน นุชเจ็ก', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '010816', 'นางสมพงษ์ แย้มขะมัง', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '010866', 'นางโสภิดา ตาทอง', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '010913', 'นางนุจรี ภู่ชาวนา', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '010920', 'น.ส.วิลัยวรรณ์ ฟักเงิน', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '010948', 'นางสมศรี โปร่งจันทึก', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '010998', 'นางสมพงษ์ เพ็ชรอำไพ', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '011011', 'นางศุภวรรณ โพธิ์ดง', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '011022', 'นางแตง มาโพธิ์ชัย', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '011040', 'น.ส.กัลยา แย้มทัด', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '011042', 'นางพะเนียง แย้มพลาย', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '011072', 'นางสมปอง ศรีจันทร์', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '011089', 'นางประนอม โพธิ์ทอง', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '011104', 'นางใหม รอดรักษา', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '011144', 'นางนกแก้ว พุฒิชาวนา', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '011145', 'นางสุนันท์ ศรีละออ', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '011152', 'นางรสริน พงษ์พานิช', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '011155', 'นางพิมพิลาไลย อ่อนสะเดา', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '011173', 'นางอรุณ ปลายกระโทก', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '011181', 'นางจริยา กำพล', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '011238', 'นางสำเภา สมบูรณ์', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '011261', 'นางนิต ธูปขุนทด', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '011274', 'นางบุญส่ง พนมไพร', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '011318', 'นางอัมพรรณ แย้มพลาย', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '011343', 'นางนาที มีชาวนา', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '011347', 'นางทวี เชยเดช', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '011383', 'น.ส.กรองแก้ว สุนทรชัย', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '011385', 'น.ส.สิริลภัส วงษ์ไทย', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '011389', 'นางศรีนวล สังข์นวล', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '011419', 'นางจำ เดชห้วยไผ่', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '011446', 'นางสอด เพ็ญสุข', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '011453', 'นางนวลจันทร์ พุฒิชาวนา', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '011475', 'นางอัมพร ลึงพรมราช', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '011498', 'นางสำเภา อํ่าพุธ', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '011511', 'นางณัฐพิชญ์ สูงสุด', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '011521', 'นางสมคิด สิงหาพันธ์', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '011524', 'นางมาลี ปลายกระโทก', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '011530', 'นางวัฒนา อินทรพาณิชย์', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '011569', 'นางยุพิน พันงา', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '011598', 'นางสุวรรณา วงษ์ไทย', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '011614', 'นางปราณี พัสกุล', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '011620', 'นางพนมวรรณ พ่วงบุใหญ่', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '011624', 'นางวน ขำนํ้าคู้', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '011648', 'นางอำนวย คงใจมั่น', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '011661', 'นางไพรวัลย์ พิศพร', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '011668', 'น.ส.อรุณี นิลคช', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '011670', 'นางจำเนียร โตโต๊ะ', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '011732', 'น.ส.วาสนา โพธิ์ทอง', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '011743', 'นางขวัญเรือน พ่วงชาวนา', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '011747', 'นางวันดี ปานคะเชนทร์', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '011786', 'นางลำเพย อู่ไทย', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '011792', 'นางสุภาพ อินหันต์', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '011815', 'นางสำอาง ภู่ชาวนา', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '011824', 'นางพิศมัย บุษดาจันทร์', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '011847', 'น.ส.ปทุมวดี ชัยดา', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '011848', 'นางบุญช่วย พึ่งพา', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '011865', 'นางสังวาล บุญมีมา', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '011866', 'นางปราโมทย์ ขัดเกลา', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '011898', 'นางพิมพ์ณภัส โพธิ์อยู่', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '012022', 'นางสุนีย์ ช่อสูงเนิน', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '012024', 'นางวิวา เหมจันทึก', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '012039', 'นางสมฤดี อินทร์ภู่', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '012067', 'นางประเก็บ กำพร้า', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '012069', 'นางเฉลา โอษฐ์ฉิมพลี', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '012077', 'น.ส.พัชรินทร์ วิชฉิมพาลี', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '012085', 'นางสุทิศา คงคิรินทร์', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '012091', 'น.ส.หวัน กลมสี', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '012105', 'นางองุ่น คงคิรินทร์', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '012184', 'น.ส.สุคนธ์ทิพย์ นุ้ยวังทอง', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '012231', 'น.ส.อนงค์ แย้มขะมัง', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '012232', 'นางวันทนีย์ ใสเขียนวงศ์', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '012237', 'น.ส.จิตรลัดดา คงเนียม', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '012260', 'นางโฉมเฉลา เดชวงศ์ษา', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '012261', 'น.ส.สาริศา กันสิน', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '012285', 'นางพิศมัย ต่ายชาวนา', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '012291', 'นางบุษบา มณีธรรม', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '012294', 'นางสายบัว ขำแป้น', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '012303', 'น.ส.กาญจนา บวบนา', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '012309', 'น.ส.วิจิตรา ขุนโต', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '012317', 'นางโสพิดา สิงห์ลอ', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '012342', 'นางทองรุ่ง พ่วงชาวนา', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '012369', 'นางสุดใจ บัวประชุม', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '012372', 'นางจันทร์แรม พ่วงบุใหญ่', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '012374', 'น.ส.ชุลี ทองคำดี', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '012384', 'น.ส.อมรรัตน์ ดงคำ', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '012392', 'น.ส.สังวาล พันธุเมน', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '012395', 'นางลำพึง หลวงภักดี', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '012397', 'น.ส.จำปา พ่วงบุใหญ่', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '012427', 'น.ส.ขนิษฐา ด้วงประดับ', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '012437', 'น.ส.ชุติกาญจน์ มีแสง', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '012448', 'น.ส.คำพอง จันทร์แดง', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '012467', 'นางนิสา ตะโกภู่', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '012488', 'นางเพ็ญนิภา ยอดสุวรรณ์', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '012512', 'น.ส.สมบัติ คำหงษา', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '012527', 'นางอรวรรณ พ่วงชาวนา', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '012582', 'น.ส.ปรั่ง ประสิทธิ์สุวรรณ', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '012584', 'นางทรงวัฒน์ ประสงค์', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '012615', 'นางวรรณพร คูณสว่าง', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '012616', 'นางจุฑาทิพย์ ยิ้มพัชน์', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '012617', 'นางสำเนียง ขันแข็ง', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '012667', 'นางปรีดี ทูเรา', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '012686', 'น.ส.ส่องใจ ชมยวง', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '012704', 'น.ส.เหรียญทอง ทองไสว', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '012721', 'นางใกล้รุ่ง ชมโลก', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '012741', 'นางจันทิมา ปลายกระโทก', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '012743', 'นางนกน้อย ทานิครบุรี', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '012793', 'น.ส.สำอางค์ สราญ', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '012825', 'นางสมจิตร รวดเร็ว', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '012839', 'น.ส.นกน้อย ปั้นงาม', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '012842', 'นางณัฐาวรรณ ทองแท้', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '012853', 'นางนัฎชนก อ่ำกำเนิด', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '012865', 'นางน้ำฝน บุญมี', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '012870', 'นางสำลี พ่วงชาวนา', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '012883', 'นางสมเกียรติ นิตยะประภา', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '012890', 'นางแจ่มจรัส ดอกรัก', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '012909', 'นางเบญจมาศ โพธิ์เอม', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '012911', 'นางปติมา ชอบการกิจ', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '012921', 'นางนภัสสร อบเชย', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '012922', 'น.ส.วรวลัย ทองคำ', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '012925', 'นางทวาย แก้วหมอ', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '012951', 'น.ส.ประดับ ชนะทรัพย์', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '012966', 'นางยินดี แก้วกำพล', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '013008', 'นางจริงใจ ซื่อสกุลรัตน์', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '013043', 'นางจิ๋ว แย้มทัศน์', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '013180', 'นางธัญรัตน์ เทพทองดี', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '013200', 'นางชนิสรา เมืองชาวนา', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '013263', 'น.ส.สุดใจ หงษ์ประสิทธิ์', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '013293', 'นางภัทราพร แก้วบางทราย', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '013322', 'น.ส.สนอง โรจะนันท์', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '013336', 'น.ส.สุพัตรา คำเพ็ญ', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '013378', 'น.ส.วาสนา ป้อมปลั่ง', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '013404', 'นางจุรีพร บัวทอง', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '013567', 'น.ส.สมพร แพรสุรินทร์', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '013613', 'น.ส.เอราวัลย์ พรมอ่อน', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '013645', 'นางบุญยืน(ลาว) พรมบึงลำ', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '013654', 'นางนุชรัตน์ ทองลิ่มสุด', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '013657', 'นางค้าง พรมจันทึก', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '013691', 'นางสการัตน์ ชะนะมาร', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '013795', 'นางสุมิตรา บัวประชุม', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '013845', 'น.ส.ณัฐริกา ทัศนะ', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '013893', 'นางบุญเจียม สารสมบูรณ์', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '013906', 'นางแพรวพรรณ ทองสนธิ', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '013912', 'น.ส.ณัฐญา เร็วจันทึก', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '013924', 'น.ส.มาลี เมฆสุวรรณ', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '013971', 'น.ส.ธวัลรัตน์ หาชัย', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '013989', 'น.ส.วรารัตน์ พันธุ์ทอง', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '014040', 'น.ส.เสงี่ยม เกิดกุล', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '014050', 'นางแพงศรี ต้นวงศ์', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '014089', 'นางอนงค์ ปานทอง', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '014092', 'นางสุมลทา แสงเดือน', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '014122', 'น.ส.นิภาพร บุญชู', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '014160', 'นางเบญจมาตร นาชอน', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '014226', 'น.ส.พรพรหม ถิตย์ไชย', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07548', '014246', 'นางอัมพร แย้มขะมัง', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000003124', 'นางสำเริง อ้นเนียม', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000020', 'นางอำนวย หอมเจริญ', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000074', 'น.ส.วงเดือน เทียนเงิน', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000078', 'นางพรพิมล หอมเจริญ', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000081', 'น.ส.บุญเลี้ยง ศรีสวัสดิ์', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000093', 'นางอมรรัตน์ ทศพร', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000100', 'นางเกษม บุญเรศ', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000104', 'นางน้ำผึ้ง เทียนเงิน', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000109', 'น.ส.บุญเลี้ยง ยืนยาว', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000111', 'น.ส.กาญจนา อ่ำบางราย', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000115', 'นางปราณี เผือกภู่', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000119', 'น.ส.ลำพึง ใจดี', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000124', 'นางประทุม เรืองบ้านโคน', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000133', 'นางบุบผา พงษ์พานิช', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000140', 'นางกิมไล้ ศรีสะอาด', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000143', 'นางบุญธรรม ศรีสะอาด', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000144', 'น.ส.อมรรัตน์ ศรีสะอาด', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000150', 'นางไพวรรณ ศรีสะอาด', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000156', 'นางวรรณา แซ่เจียม', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000179', 'นางสมหมาย ทิมหงิม', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000185', 'นางอารมณ์ พุ่มเพชรสา', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000188', 'นางมาลี เชาะดี', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000201', 'นางประนอม ทองท่าโพธิ์', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000205', 'น.ส.นันตพร ทองท่าโพธิ์', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000210', 'นางแสงเดือน คงน่วม', 'หญิง', '45', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000216', 'น.ส.สายหยุด ขวัญมล', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000222', 'นางยินดี เอมโคกสลุด', 'หญิง', '46', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000229', 'นางสุดใจ บุญรอด', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000237', 'น.ส.อรวรรณ อ่ำบางราย', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000241', 'นางขันทอง อ่ำบางราย', 'หญิง', '48', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000243', 'นางหัน อ่ำบางราย', 'หญิง', '53', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000249', 'น.ส.กฤษณา แก้วบุญขุน', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000254', 'นางทวี ธรรมชาติ', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000264', 'นางสมศรี ท่าสาคร', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000267', 'นางสมคิด เปรมชาวนา', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000270', 'น.ส.สุรินทร์ แดงชาวนา', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000273', 'นางบุญรวม แดงชาวนา', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000276', 'นางคนึง แดงชาวนา', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000295', 'นางบังเอิญ ตาลเยื้อน', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000299', 'นางบังอร สุขหนุน', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000304', 'นางรำพึง พัศกุล', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000309', 'นางจันทร์จิรา ลี้ลักษณ์', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000312', 'นางอรุณศรี ศรีสอาด', 'หญิง', '47', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000320', 'น.ส.ไกรวัลย์ บุญพยอม', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000325', 'นางเบ็ญจา ลิ้มศิริวงษ์', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000328', 'น.ส.จิตรา จิ๋วอยู่', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000330', 'นางอารีย์ จิ๋วอยู่', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000332', 'น.ส.รัศมี จิ๋วอยู่', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000337', 'นางอำนวย กลิ่นเมือง', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000341', 'นางขวัญจิตร มนตรี', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000348', 'นางวรรณี แสงชาวนา', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000355', 'นางสมฤดี ตัณฑุลอุดม', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000371', 'นางเบ็ญจวรรณ พูนชื่น', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000374', 'นางเสาวรีรัตน์ อ่อนศรี', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000381', 'น.ส.บังอร อินทร์ทรง', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000383', 'นางอังชัน คำจริง', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000404', 'นางละม่อม สายทอง', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000438', 'นางสวย ศรีสอาด', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000444', 'นางไสว ศรีสอาด', 'หญิง', '50', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000460', 'นางจิราภา นุชบ้านป่า', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000474', 'นางน้ำค้าง พ่วงรอด', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000481', 'นางน้ำอ้อย ยอดสุวรรณ', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000482', 'นางสมคิด หมุนชาวนา', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000486', 'นางบุญเลื่อน พงษ์พานิช', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000488', 'นางหลอด วิมารทอง', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000492', 'น.ส.ทวี สีหมี', 'หญิง', '55', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000495', 'นางยุพิน นุ้ยเย็น', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000507', 'น.ส.น้ำทิพย์ แสงชาวนา', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000571', 'นางคนึง จันทร์บ้านม้า', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000597', 'น.ส.น้ำฝน สังทอง', 'หญิง', '42', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000599', 'นางบุญช่วย คนคล่อง', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000604', 'นางจำเนียร ปุ่มงาม', 'หญิง', '56', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000611', 'นางพัชรากร หนิมพานิช', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000629', 'นางกิมไล้ จงสถิตย์สุข', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000641', 'นางนันตะพร คงสมบัติ', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000643', 'นางวรรณา ลาภพิพัฒน์', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000646', 'นางประไพ แดงชาวนา', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000654', 'นางบัว คุ้มสมบัติ', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000660', 'น.ส.พรภินันท์ ฐิตธวัลวัฒน์', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000670', 'นางจุฑามาศ แย้มแสน', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000690', 'น.ส.อารีย์ ศรีสอาด', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000693', 'นางนวลจันทร์ ทองหุ้ม', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000696', 'นางเฉลา พ่วงรอด', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000702', 'นางอัมพา เอมโคกสลุด', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000718', 'นางอำพัน ทองอิน', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000727', 'นางกาญจนา พลเกษตร', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000771', 'นางจำเนียน โคกทอง', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000775', 'นางวาสนา คนึงเหตุ', 'หญิง', '44', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000776', 'น.ส.วนิฎา โพธิ์อยู่', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000779', 'น.ส.กนกวรรณ ตันพานิช', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000801', 'นางกนกพร ทองสมบุญ', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000810', 'น.ส.สาลี่ เนียมชาวนา', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000811', 'นางชลอ แก้วมณี', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000814', 'นางสมุน จำปาล่า', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000815', 'นางสิริเพ็ญ ชัยวิยารัตน์', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000822', 'นางทัศนีย์ ก้อนทอง', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000823', 'นางสายหยุด พงษ์พานิช', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000830', 'นางถวิล ชอนหนองบอน', 'หญิง', '49', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000840', 'นางประเทือง รักสุข', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000841', 'นางวิเชียร สุขแสง', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000849', 'นางสวย นิ่มนวล', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000856', 'นางสมคิด บับพาแมง', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000858', 'น.ส.สุปราณี ลิ้มศิริวงษ์', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000865', 'นางสมบัติ พ่วงรอด', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000872', 'น.ส.สำรวย แย้มเสาธง', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000878', 'น.ส.สมคิด อิ่มอยู่', 'หญิง', '36', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000881', 'นางสุชาดา วงษ์ไทย', 'หญิง', '39', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000889', 'นางทองหยิบ อ๊อดเอก', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000917', 'นางวีรยา จิตรจรัส', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000920', 'นางวิไลลักษณ์ ศรีสอาด', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000982', 'นางนพวรรณ แก้วทอง', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000987', 'นางบัญญัติ นุชบ้านป่า', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000988', 'นางสมควร เชาวรัตน์', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000990', 'นางสนิท นุชบ้านป่า', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '000999', 'นางสุนีย์ บุญโชติ', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001002', 'น.ส.มธุรส คชพงษ์', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001038', 'นางลำใย ศรีสอาด', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001052', 'น.ส.รุ่งทิพย์ เอี่ยมสุวรรณ', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001053', 'น.ส.รัศมี จันทร์ฟุ้ง', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001075', 'นางสมหมาย แดงชาวนา', 'หญิง', '51', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001096', 'นางปราณี ชอนบุรี', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001124', 'นางเฉลิม ยืนยาว', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001135', 'นางน้องหน่อย เพ็ชรเทียน', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001170', 'นางเฉลียว สุขหนุน', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001182', 'น.ส.สมจิตร ศรีหอม', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001184', 'นางพิกุล จิตใจตรง', 'หญิง', '49', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001189', 'น.ส.บุญรัตน์ ศรีสอาด', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001201', 'นางขวัญเรือน อินทร์ทรง', 'หญิง', '43', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001205', 'นางสุภา บัวเขียว', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001219', 'นางศุภานัน ราวิน', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001222', 'น.ส.ชลีรัตน์ อยู่เล็ก', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001231', 'นางรุ่งทิวา เสนา', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001262', 'นางไพรินทร์ กลัดเนินกุ่ม', 'หญิง', '48', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001270', 'นางสมรักษ์ รอดจำปา', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001293', 'นางพัชรนันท์ เอี่ยมดี', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001352', 'นางมณฑาทิพย์ พุ่มวิจิตร', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001361', 'น.ส.นิสาชล สุขสมบูรณ์', 'หญิง', '46', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001363', 'นางทัศนีย์ โรจน์โพธิ์', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001365', 'นางอโนมา ชูเมือง', 'หญิง', '36', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001386', 'นางมลฑาทิพย์ พงษ์พานิช', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001409', 'นางศิริประภา น้อยเซีย', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001415', 'น.ส.ชลธิชา ยืนยาว', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001418', 'นางลำพึง สมมล', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001421', 'นางวาสนา เอี่ยมสุวรรณ', 'หญิง', '46', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001425', 'นางประเจียด นุชบ้านป่า', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001440', 'นางเรณู ฉิมแสง', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001445', 'น.ส.ทับทิม แสงชาวนา', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001451', 'นางลำพรวน มณีท่าโพธิ์', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001458', 'น.ส.วงษ์เดือน พูนชื่น', 'หญิง', '49', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001460', 'น.ส.อันธิกา พุกเกิด', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001464', 'นางสุนีย์ เรืองบ้านโคน', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001479', 'นางบุญส่ง สกุลแก้ว', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001492', 'นางอวยพร จงสถิตย์สุข', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001515', 'นางจันทิมา แสนสุขสกุลชล', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001517', 'นางวรีรัตน์ โพธิ์เหลือ', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001528', 'น.ส.อำนวย จันทร์บ้านม้า', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001535', 'น.ส.ขวัญหทัย อนัน', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001564', 'นางเกษร แซ่แต้', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001576', 'นางสัมฤทธิ์ ยืนยาว', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001582', 'นางวาสนา บุญเตาอิฐ', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001587', 'นางจินดา จิตตริด', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001594', 'นางสำรวย อินทสอน', 'หญิง', '55', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001612', 'นางลำยงค์ ยืนยาว', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001624', 'นางธรรมวดี ผลบังเกิด', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001627', 'นางจีรวรรณ นุชบ้านป่า', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001634', 'นางธิดา พงษ์พานิช', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001636', 'น.ส.รุ่งรัตน์ เชื้อแก้ว', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001644', 'นางวันเพ็ญ พ่วงรอด', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001650', 'นางประจวบ ยืนยาว', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001657', 'นางเรณู บัวทอง', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001665', 'นางน้ำฝน มงคลสุข', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001680', 'น.ส.เอื้องน้อย แดงชาวนา', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001683', 'นางสำเริง อ้นเนียม', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001696', 'นางบุญชู ชอนบุรี', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001701', 'นางจีราพัชร์ ฤาชัย', 'หญิง', '42', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001704', 'นางทองหยิบ แจ้งชาวนา', 'หญิง', '41', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001717', 'นางสำลี ฐานโพธิ์', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001718', 'นางนพคุณ ทองสุกงาม', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001726', 'นางอุไร กุลมัย', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001730', 'นางมณี ศรีสอาด', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001735', 'นางปรานี ทับทิม', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001741', 'นางมานะ ถาวร', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001749', 'นางสาหร่าย แก้วงาม', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001778', 'นางสุนิสา โคกทอง', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001790', 'นางลูกชิ้น ผัดดวงคำ', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001792', 'น.ส.สมเพชร พายัพ', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001814', 'นางออมสิน ผิวน้อย', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001817', 'นางพรรณี ทองสุกงาม', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001834', 'นางขวัญ โตชาวนา', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001853', 'นางบังอร อินทะกะ', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001878', 'นางสมัย จิตรจรัส', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001882', 'นางคนึง วาดสุทธาชีพ', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001895', 'นางสำรี พงษ์พานิช', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001899', 'นางจินตนา สายทอง', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001917', 'นางฉันทิศา น้อยคอนสาร', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001918', 'นางสุนันทา เชื้อแก้ว', 'หญิง', '54', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001922', 'น.ส.ปราณี เกตุชาวนา', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001924', 'นางพยอม จีนชาวนา', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001963', 'นางประทวน มั่นคงดี', 'หญิง', '50', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001989', 'นางสำรี แก้วมณี', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001997', 'น.ส.ลูกจันทร์ เอมโคกสลุด', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '001998', 'นางสายันต์ พุทธา', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002005', 'น.ส.วันเพ็ญ กองเจริญ', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002015', 'น.ส.โสภิต เบิกบาน', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002031', 'นางอุบล จันบ้านคลอง', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002036', 'นางทองพัตร์ ศรีสอาด', 'หญิง', '42', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002039', 'น.ส.วีรนุช โห้ลพบุรี', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002043', 'นางสมหมาย ยี่คิ้ว', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002057', 'น.ส.จันทร์รอน นำพา', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002058', 'น.ส.มณี กองเจริญ', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002089', 'นางประเจิด บุญโชติ', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002109', 'น.ส.สุมาลี ยืนยาว', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002126', 'นางพิมผกา ศรีสอาด', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002144', 'น.ส.จตุพร พงษ์ชัยสิทธิ์', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002154', 'นางเฉลียว อินกล่ำ', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002155', 'นางพธุรดา วิมุกตานนท์', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002167', 'นางปานทิพย์ ทับทิม', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002189', 'นางศิริวรรณ บุญเรือง', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002203', 'น.ส.บำรุง ปุยสุข', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002222', 'นางสาลี่ จิตตริด', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002223', 'นางวารินทร์ เลิศคง', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002235', 'นางอนงค์ สังเกตุการณ์', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002239', 'น.ส.นพรัตน์ แดงชาวนา', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002246', 'นางดวงแข ปราณี', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002263', 'น.ส.ปาริชาติ แดงชาวนา', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002283', 'น.ส.แสงเดือน พุ่มคำ', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002308', 'นางยุพิน พิณพาทย์', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002311', 'นางสุดา จิตตลิด', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002338', 'น.ส.ฉันทนา มีสัตย์', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002368', 'นางสำรื่น อู่อรุณ', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002381', 'นางนงเยาว์ พงษ์พานิช', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002383', 'น.ส.สมุน ทะยานรัมย์', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002397', 'นางมาลี เงินมา', 'หญิง', '54', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002405', 'นางอุบล เลื่อนวงษ์', 'หญิง', '44', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002437', 'นางรัชนี พ่วงรอด', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002464', 'น.ส.ยงค์ อุปจันทร์', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002487', 'นางนกแก้ว พูนชื่น', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002493', 'นางเตือนใจ เชื้อแก้ว', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002502', 'นางน้ำผึ้ง หุ่นอินทร์', 'หญิง', '36', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002503', 'นางหนูจันทร์ แดงชาวนา', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002505', 'นางสมพร โพธิ์กุล', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002508', 'นางนิตยา แดงชาวนา', 'หญิง', '42', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002539', 'น.ส.สุทัศน์ คนคล่อง', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002549', 'นางวันเพ็ญ อุปจันทร์', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002567', 'นางพรทิพย์ พุ่มมีจิตร', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002575', 'นางน้ำทิพย์ อินทร์เทียน', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002581', 'นางสาหลี้ ศรีสอาด', 'หญิง', '49', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002586', 'น.ส.สมฤดี จำปาล่า', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002587', 'นางสำรวย เสนาวัน', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002591', 'น.ส.พัชรา ลิ้มศิริวงษ์', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002600', 'น.ส.จิตราภรณ์ จิตใจตรง', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002609', 'นางประภาพร อินทร', 'หญิง', '55', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002612', 'นางน้อย อ่ำบางกระทุ่ม', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002626', 'นางบุญมา พ่วงรอด', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002629', 'นางสีนวล บูรณพงศ์', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002634', 'นางเพ็ญนภา จันบ้านคลอง', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002648', 'น.ส.ราวิน ม่วงคุ้ม', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002653', 'น.ส.สุนันตา หมุนชาวนา', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002656', 'นางบุญเริ่ม เพียรชาวนา', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002665', 'น.ส.เบญจวรรณ ขันบุญ', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002683', 'น.ส.ใอริน แจ่มใส', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002698', 'นางประสิทธิ์ แป้นเกิด', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002701', 'น.ส.ศุจิกา นุชบ้านป่า', 'หญิง', '45', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002710', 'นางณัฎฐดา คนคล่อง', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002715', 'นางสุดใจ นาคอินทร์', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002718', 'น.ส.เรไร เนียมเกิด', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002721', 'น.ส.เนาวรัตน์ พูนชื่น', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002734', 'นางพยงค์ บริหาร', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002737', 'นางนพมาศ ปุยสุข', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002738', 'นางเรณู แก้ววิจิตร', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002758', 'นางสุดใจ โคตรคำ', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002766', 'นางจุฬาลักษณ์ คชพงษ์', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002786', 'นางจำนงค์ คงเนียม', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002790', 'นางสำรวม แดงชาวนา', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002808', 'นางยุพา พัศกุล', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002822', 'นางประสม ศรีสอาด', 'หญิง', '46', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002833', 'นางมาลัย พูนชื่น', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002837', 'น.ส.มลฑาทิพย์ หมุนชาวนา', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002845', 'นางนงลักษณ์ หอมเจริญ', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002875', 'นางสำรวย นุเครือ', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002888', 'นางสวัสดิ์ แก้วเพียร', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002901', 'นางลั่นทม เพ็ชรเทียน', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002903', 'นางประทวน กุลสุข', 'หญิง', '54', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002912', 'นางปรานอม นุ้ยเย็น', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002917', 'นางระยอง มงคลสุข', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002960', 'น.ส.ขวัญหทัย ศรีวัฒนา', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002972', 'นางมาลี คนคล่อง', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002978', 'นางบรรหยัด ไวยุวัฒน์', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '002985', 'น.ส.จำรัส วะเรืองรัมย์', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '003000', 'น.ส.หน่อย ชอนหนองบอน', 'หญิง', '44', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '003011', 'นางวราภรณ์ เที่ยงแท้', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '003020', 'นางฉอ้อน บุญไทย', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '003055', 'นางวรรณนา มงคลสุข', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '003057', 'นางพัชรา สถาพรวรกุล', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '003064', 'นางอุทัย แก้วอุดร', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '003066', 'นางบุญชู จิตตริด', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '003069', 'นางสุรีย์วรรณ แสงพระจันทร์', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '003079', 'นางลำใย มงคลสุข', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '003083', 'น.ส.วิภารัตน์ สุขแสง', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '003093', 'นางอารีย์ พูนชื่น', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '003098', 'น.ส.รัตนา พ่วงรอด', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '003126', 'นางสังเวียน ปิ่นณรงค์', 'หญิง', '60', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '003133', 'นางถวิล นิ่มลมูล', 'หญิง', '45', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '003142', 'นางวรรณา สวนนุวัฒ', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '003162', 'น.ส.เนตรนพาพร พงษ์พานิช', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '003177', 'นางมาลี หลิมเพียงลี้', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '003181', 'นางลัดดาวัลย์ มณีท่าโพธิ์', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '003218', 'นางจิราภรณ์ หุ่นอินทร์', 'หญิง', '38', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '003227', 'นางมาลี ชอนบุรี', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '003236', 'นางทองดี เชาวรัตน์', 'หญิง', '50', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '003237', 'นางปัญญ์ธิดา คชพงษ์', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '003240', 'นางศิริพร แย้มเสาธง', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '003262', 'นางพรทิพย์ พรหมอินทร์', 'หญิง', '44', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '003264', 'นางบุญเลี้ยง ชอนหนองบอน', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '003266', 'นางเรณู ยืนยาว', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '003271', 'นางวรรณเพ็ญ ศรีสอาด', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '003276', 'น.ส.เบญจวรรณ ลิ้มศิริวงศ์', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '003284', 'นางสังวาลย์ บุญโชติ', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '003288', 'นางนงลักษณ์ มงคลสุข', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '003301', 'นางน้ำค้าง สินทรัพย์', 'หญิง', '39', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '003313', 'นางนงนุช แสงชาวนา', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '003321', 'นางกันชารี สถาพรวรกุล', 'หญิง', '37', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '003331', 'น.ส.มีนา นิลชาวนา', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '003350', 'นางอรนุช ไวยุวัฒน์', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '003352', 'นางจำเนียร สกุลแก้ว', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '003372', 'นางลำดวน ศรีหอม', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '003384', 'นางสุภาพร ศรแก้ว', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '003390', 'น.ส.ลำเจียร ทับทิม', 'หญิง', '44', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '003420', 'น.ส.ลำดวน หมุนชาวนา', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '003433', 'นางสำเริง อัจฉริยกุล', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '003435', 'นางนิภาพร กลัดเนินกุ่ม', 'หญิง', '38', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '003438', 'นางสุขเกล้า เพ็งคุ้ม', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '003453', 'นางวิรุณลักษณ์ แก้วงาม', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '003483', 'นางประจวบ ประสาทชัย', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '003496', 'นางพัทรศยา ไวยุวัฒน์', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '003533', 'นางสมรวม จันทร์ชาวนา', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '003541', 'นางสีนวล ยิ้มงาม', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '003545', 'นางเกษร พิมพ์สงวน', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '003547', 'นางยุพิน ศรีสอาด', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '003561', 'นางส้มจีน ทับบุญ', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '003599', 'นางธัชนัน พร้อมมูล', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '003611', 'นางอารมณ์ ยืนยาว', 'หญิง', '43', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '003630', 'นางลัดดา ทองคำพูล', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '003639', 'น.ส.มะลิ พูนชื่น', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '003642', 'นางวันเพ็ญ โคกทอง', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '003705', 'นางบุญชู ยืนยาว', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '003708', 'นางสาลี่ ไรยวงษ์', 'หญิง', '46', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '003713', 'นางทรายแก้ว เรืองบ้านโคน', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '003745', 'นางติ๋ม เทียนเงิน', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '003756', 'น.ส.สุรินทร์ เขียวสุภาพ', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '003766', 'นางสิรี จำลองเพ็ชร', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '003767', 'นางนวน พรหมบุตร', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '003769', 'นางประเทือง ศรีสอาด', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '003786', 'นางกาญดา เอมโคกสลุด', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '003794', 'น.ส.วารินทร์ เพ็งคุ้ม', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '003831', 'นางสาวิตรี เชิดเชื้อ', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '003837', 'นางวัฒนี ตัณฑุลอุดม', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '003859', 'นางคนึง แย้มเสาธง', 'หญิง', '38', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '003860', 'นางสมปอง เพ็งคุ้ม', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '003861', 'นางน้ำมิ้ม นุชบ้านป่า', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '003891', 'น.ส.อัญญารัตน์ คนคล่อง', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '003903', 'นางสุดา สังข์จันทร์', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '003914', 'น.ส.วรนุช จีนชาวนา', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '003943', 'นางน้ำฝน มีสัตย์', 'หญิง', '59', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '003945', 'น.ส.อารมย์ ยืนยาว', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '003989', 'น.ส.ดรุณี พูนชื่น', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '003994', 'นางอำพร ราวิล', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '003997', 'นางพิมพกานต์ ทำนักสุข', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004001', 'นางประเทือง ศรีวัฒนา', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004020', 'นางสมร คงเนียม', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004021', 'นางพรพรรณ สายบัว', 'หญิง', '60', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004027', 'นางวิทูร ฉาวบุตร', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004035', 'น.ส.นงนุช แก้วนวล', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004036', 'นางจำเนียร เพียนชาวนา', 'หญิง', '56', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004037', 'นางอำนวย หอมเจริญ', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004058', 'นางบำรุง แดงชาวนา', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004075', 'นางจันทร์แดง สายรัตน์', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004076', 'นางอุดม มีสัตย์', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004078', 'นางชลนิกานต์ จิตรจริต', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004091', 'นางหวย โคกทอง', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004106', 'นางลำจวน จันบ้านคลอง', 'หญิง', '48', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004113', 'นางสายฝน วิมุกตานนท์', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004116', 'น.ส.อมรรัตน์ มณีท่าโพธิ์', 'หญิง', '47', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004117', 'นางเพลินพิศ สายสุวรรณ', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004121', 'น.ส.รัตนา สถาพรวรกุล', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004129', 'นางล้วน แก้วมณี', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004131', 'นางชลธิชา สายทอง', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004137', 'นางสวาท วชิรสิทธิ์เสถียร', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004146', 'นางวรรณา สร้อยจิตร', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004203', 'นางรันทม โคกทอง', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004210', 'นางทับทิม นุชทัพ', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004211', 'นางศิริธร แซ่เล็ก', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004218', 'นางประไพ สุภักดิ์สร', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004221', 'นางยุพา กลัดเนินกุ่ม', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004235', 'นางสุภาพ ศรีอักษร', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004241', 'นางณัฏฐณิชา คำวอน', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004263', 'น.ส.บุษรา น้ำเงิน', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004265', 'นางสมศรี หอมเจริญ', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004270', 'นางผกาวรรณ เอี่ยมชาวนา', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004272', 'นางนงนุช เผ่าพันธ์', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004281', 'นางมณี ด้วงนิ่ม', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004286', 'น.ส.ศรีระนอง โคกทอง', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004290', 'นางลำยง เพ็ชรเทียม', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004308', 'นางปานไพลิน แสนสำราญ', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004312', 'นางธนพร ฉิมแสง', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004319', 'นางน้ำค้าง ศรีสะอาด', 'หญิง', '45', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004330', 'นางพรพรรณ กรุ่นทอง', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004347', 'นางสมนึก กลัดเนินกุ่ม', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004360', 'นางนิยม ยืนยาว', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004380', 'น.ส.พรธิตา วันทะมาตย์', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004382', 'นางกชกร จีนชาวนา', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004401', 'นางมะลิ ฉัตรทอง', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004402', 'นางวงเดือน นามบุตร', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004419', 'น.ส.จุฑามาศ ธรรมพิทักษ์', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004453', 'นางนิศารัตน์ อุปจันทร์', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004463', 'นางถวิล เกษร', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004466', 'นางมนเทียน สุดตรง', 'หญิง', '49', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004484', 'นางผ่องพรรณ สุถินยินดี', 'หญิง', '45', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004488', 'นางกรรณิการ์ จันทร์พรหม', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004493', 'นางยินดี น้ำเงิน', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004499', 'นางประสงค์ ใจแปลง', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004519', 'นางกิมลี้ พรชาวนา', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004523', 'นางธูป แดงชาวนา', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004533', 'นางวรรณภา พ่วงรอด', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004552', 'นางสำราญ ชอนหนองบอน', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004560', 'น.ส.อัญชรีย์ โคกทอง', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004582', 'น.ส.มาลัย ใจงาม', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004585', 'นางปราณี บุญรัตน์', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004658', 'น.ส.ยุพาพร น้อยกลิ่น', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004677', 'นางกาหลง จิตตริด', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004686', 'นางรำพรรณ จิตตลิด', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004693', 'น.ส.บุญเทียม คำหงษ์', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004704', 'นางทองใส คลังน้อย', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004709', 'นางกาญจนา สุขสวัสดิ์', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004719', 'น.ส.บุญสร้าง ศรีสอาด', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004720', 'นางบุญช่วย ยิ้มฤทธิ์', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004752', 'น.ส.สลักจิตร แก้วบุญขุน', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004777', 'นางจันทนี แสงสำลี', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004780', 'นางพิมลพรรณ เชาวรัตน์', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004795', 'นางพยุง จิตตริด', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004802', 'น.ส.ดาหวัน ศรีลาวงศ์', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004804', 'นางมณีรัตน์ แซ่ลี้', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004807', 'นางธัญพร แซ่ลี้', 'หญิง', '60', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004827', 'นางกัญญาภัค คงเนียม', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004840', 'นางบุษยมาส ฟักเงิน', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004849', 'น.ส.ศศินา พึ่งอาศัย', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004887', 'นางธนารัตน์ หุ่นอินทร์', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004918', 'น.ส.ชยานันท์ สุดชนะ', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004936', 'น.ส.อรชร ใจทน', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004945', 'น.ส.ละออง ทิพย์บำหลาย', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '004996', 'น.ส.สมพร สามะสุทธิ์', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '005030', 'น.ส.เบญจา อุทัยธรรม', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '005034', 'นางสุบิน พงษ์พานิช', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '005070', 'น.ส.สุทัศน์ กุลสุข', 'หญิง', '35', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '005079', 'น.ส.วรนารถ ตันพานิช', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '005081', 'นางมะลิ รุ่งอินทร์', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '005157', 'น.ส.พรทิพย์ เข่งขยัน', 'หญิง', '32', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '005171', 'น.ส.สิริพร เอมโคกสลุด', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '005173', 'น.ส.ศรีเมือง คนึงเหตุ', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '005233', 'น.ส.นารี โคกตะคุ', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '005261', 'น.ส.สารี รัศมี', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '005263', 'นางวรวรรณ ประสมทรัพย์', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '005265', 'นางรุ่งทิพย์ ปลัดคุณ', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '005268', 'น.ส.วันเพ็ญ สร้อยจิตร', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '005277', 'นางบุญเชิด วันเพ็ญ', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '005282', 'น.ส.สมพร อู่ไทย', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '005291', 'นางนัยพัฒน์ รัตนาวิน', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '005307', 'นางสอาด ต่วนคำ', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '005311', 'นางขวัญใจ เกตะมะ', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '005318', 'น.ส.นิยตา หุ่นดำ', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '005327', 'นางสุมาลี เปี่ยมเนินกุ่ม', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '005329', 'น.ส.สุดาพร เอี่ยวเฉย', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '005334', 'นางจำนงค์ นิลผึ้ง', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '005345', 'นางอุไร เที่ยงทอง', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '005349', 'นางกัณหา ฤทธิ์ไธสง', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '005548', 'นางเฉลิมทัฐแข นุ้ยเย็น', 'หญิง', '45', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '005552', 'นางสมาพร คงดี', 'หญิง', '40', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '005595', 'นางปราณี ปุยทอง', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '005600', 'นางมีนา ไวอ่อน', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '005652', 'น.ส.เจียม เบ้าดี', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '005658', 'นางจำเรียง แดงชาวนา', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '005660', 'น.ส.บังอร เกษแสนศรี', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '005696', 'นางปรางทิพ ลอยพงษ์ศรี', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07549', '005700', 'นางขนิษฐา เทียนอำไพ', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000004', 'น.ส.จีระนันท์ ขำชาวนา', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000007', 'นางจำลอง ขำชาวนา', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000009', 'น.ส.มลิ ทองแท่ง', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000019', 'นางทางรัตน์ ทองแท่ง', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000023', 'น.ส.ประเสริฐ คุ่ยชาวนา', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000037', 'นางจำลอง(274) กรรณพักตร์', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000042', 'นางศรีนวล คุ่ยชาวนา', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000053', 'นางสมจิตร บุญเซ็ง', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000060', 'นางลำจวน อินหนู', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000067', 'น.ส.สายใจ วัดแจ้ง', 'หญิง', '37', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000081', 'นางมลิวรรณ สุดสังข์', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000091', 'น.ส.จันทร์แรม จันทร์จำรัส', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000092', 'นางมิรันตรี โพธิ์เงิน', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000097', 'นางชูศรี แก้วชาวนา', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000098', 'น.ส.อรวรรณ แก้วชาวนา', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000102', 'นางเฉลิม(284) แก้วชาวนา', 'หญิง', '52', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000107', 'นางอนัน อาดชาวนา', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000115', 'น.ส.บรรจบ วิมล', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000123', 'น.ส.กษิรา สังข์นวล', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000129', 'นางดาว(140) แสงเดือน', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000130', 'นางสำรวย ภูมิผล', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000141', 'นางวิมล เฮงประเสริฐ', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000164', 'น.ส.แสงดาว สอนชาวเรือ', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000172', 'น.ส.สายสร้อย ทองชาวนา', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000174', 'นางบุญช่วย ทองชาวนา', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000185', 'น.ส.วันนา อู่ไทย', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000191', 'นางเฉลียง โพชาวนา', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000195', 'นางอุทัย ปิ่นเกษร', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000215', 'นางวรัญญา ศรีสุข', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000222', 'น.ส.เรณู พรมบึงลำ', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000231', 'นางอุบล ทองช่วง', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000234', 'นางพรวน ธูปชาวนา', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000237', 'น.ส.สมพร ทองช่วง', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000242', 'นางสุนันท์ เรืองบ้านโคน', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000250', 'นางอนุ(36) ไกรนารถ', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000251', 'นางบังอร สอนชาวเรือ', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000260', 'นางจรัสศรี สินดิษฐ์', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000265', 'นางอารีย์ กลิ่นชาวนา', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000300', 'น.ส.กันยา(252) เนียมชาวนา', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000303', 'นางจำลอง เนียมชาวนา', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000311', 'นางมนทิรา ต้นพิศมัย', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000316', 'น.ส.สีนวล ขำขาว', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000323', 'นางจิตสุภา ขำขาว', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000324', 'นางสำเนา ขำขาว', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000331', 'น.ส.ชนัญญา แก้วนักคล้า', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000345', 'นางเรณู กลิ่นชาวนา', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000357', 'นางสุภาภรณ์(109) รุ่งเรือง', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000365', 'นางสมคิด พ่วงรอด', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000374', 'น.ส.นาตยา พ่วงรอด', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000387', 'นางจันทิพร เกษพรหม', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000395', 'น.ส.ถนอม สินไหม', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000396', 'นางเปรม(337) สินไหม', 'หญิง', '50', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000403', 'นางบุญสม(250) กลิ่นชาวนา', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000418', 'น.ส.ลัดดาวรรณ อึ่งกุล', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000426', 'น.ส.ปราณี ประมวลสุข', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000430', 'น.ส.อัจฉราภรณ์(226) อึ่งกุล', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000433', 'น.ส.อำนวย นุชบ้านป่า', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000436', 'น.ส.บุญส่ง สมตน', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000437', 'นางบุญเสริม แย้มเสาธง', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000449', 'นางสุกัญญา ภักดีศรี', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000464', 'นางประภาพร คุดนาค', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000470', 'นางระเบียบ แก้วเพชร', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000472', 'น.ส.ลัดดาวัลย์ มาเนตร', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000482', 'นางรัตนากร แก้วสายยัณห์', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000484', 'นางมะลิ สอดเนื่อง', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000486', 'นางอำพัน(127) แก้วสายัณห์', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000487', 'นางมาลี แก้วสายัณห์', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000504', 'นางอัญมณี เกษพรหม', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000507', 'นางฉัตรมงคล ศรีเกตุ', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000517', 'นางกรกมล ศรีเกตุ', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000521', 'นางศุภร แสงสว่าง', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000531', 'นางบุญส่ง พรมบึงลำ', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000545', 'น.ส.บุญเรือน สุขสมบัติ', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000558', 'นางกิมเลี้ยง อ้นชาวนา', 'หญิง', '50', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000562', 'นางยุพิน บุญเซ็ง', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000565', 'นางอนุรัตน์ อ้นชาวนา', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000576', 'น.ส.กุลชลี บุญเลี้ยง', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000580', 'นางพรทิพย์ พึ่งน่วม', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000585', 'นางสายชล ธูปชาวนา', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000602', 'น.ส.พยุง(332) พงค์เกษตร', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000606', 'นางสุวรรณ(151) พงษ์เกษตร', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000618', 'นางเสวียน บุญเทียน', 'หญิง', '59', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000626', 'น.ส.วาสนา บุญประเสริฐ', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000639', 'นางสำเริง ฉิมจิ๋ว', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000646', 'นางกรกมล บุญอ้น', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000650', 'นางลัดดา เที่ยงชาวนา', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000655', 'นางกรองทอง พิชัยพานิช', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000663', 'น.ส.วรรณา อ้นชาวนา', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000670', 'นางสมคิด รัตนโกสุมภ์', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000676', 'น.ส.นาค แก้วบางทราย', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000678', 'น.ส.สำรวย คนหลัก', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000680', 'นางบุญเลิศ(187) บุญสง่า', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000687', 'น.ส.พิมลพรรณ กลิ่นชาวนา', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000688', 'นางดาวเรือง กลิ่นชาวนา', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000697', 'นางมาลัย พรมบึงลำ', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000704', 'น.ส.วิมล สินทรัพย์', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000714', 'น.ส.วรัญญา จันทร์หอม', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000721', 'นางปราณี สามพันธ์', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000732', 'นางบุญส่ง(84) บุญโชติ', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000742', 'น.ส.ลั่นทม หล้าวงษ์', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000747', 'นางศิริพร พิชัยพานิช', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000749', 'นางศรีไพร พรมบึงลำ', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000753', 'น.ส.สุวรรณ ลอดเมือง', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000759', 'นางนเรศ สมัยสมบัติ', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000764', 'นางสังวาลย์ จันทร์ชาวนา', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000773', 'นางสิริพร มณีท่าโพธิ์', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000774', 'นางพเยาว์(196) แตงเจริญ', 'หญิง', '46', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000779', 'น.ส.ชไมพร ทับพันธุ์บุบผา', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000780', 'น.ส.รัชดาพร ทับพันธุ์บุบผา', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000782', 'นางวไลพร ทับพันธุ์บุบผา', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000806', 'น.ส.ทองดี ทองชาวนา', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000819', 'น.ส.จิตราภรณ์ กวีวัฒนกร', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000823', 'นางจำนงค์(114) ฤทธิ์เดช', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000824', 'นางจรุณ กวีวัฒนกร', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000827', 'น.ส.จันทิมา การะเกตุ', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000832', 'น.ส.สุกัญญาณี มณีท่าโพธิ์', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000835', 'นางปราณี มณีท่าโพธิ์', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000856', 'นางจำลอง เพ็ชรเทียน', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000865', 'นางพัชราวรรณ(40) คำปันปู่', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000868', 'นางนกน้อย เกตุชาวนา', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000876', 'น.ส.อรอนงค์ คงเมือง', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000879', 'น.ส.กัลยา เบญจวร', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000882', 'นางวิภาวี(257) ฟักชื่น', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000885', 'น.ส.โปร่ง แจ่มจำรัส', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000886', 'นางลาวัณย์ บุญกระจ่าง', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000903', 'น.ส.อาทิตยา กลัดเนินกุ่ม', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000905', 'น.ส.ปราณี กลัดเนินกุ่ม', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000912', 'น.ส.บุญส่ง(25) ศรีเกตุ', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000913', 'น.ส.ชม้อย(22) ศรีเกตุ', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000922', 'นางกรกมล พระวินัย', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000939', 'น.ส.พิสมัย เพ็ชรวิจิตร', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000945', 'น.ส.ประเสริฐ โคกปรางค์', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000948', 'นางยุพา เกตุชาวนา', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000949', 'นางวันเพ็ญ เกตุชาวนา', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000951', 'น.ส.ยุพิน เกตุชาวนา', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000955', 'นางอรอุษา เกตุชาวนา', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000956', 'นางนฤมล คำวัน', 'หญิง', '42', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000966', 'น.ส.เต่า อุ่นมีศรี', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000969', 'นางอินทิรา สังข์พานิช', 'หญิง', '46', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000970', 'นางน้ำหวาน ทองชาวนา', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000988', 'นางใบครีม(269) มณีท่าโพธิ์', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000991', 'นางสมพิษ มณีท่าโพธิ์', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000997', 'นางบังอร เจริญธัญกร', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '000998', 'น.ส.อันชรี เจริญธัญกร', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001001', 'นางลำเจียก(94) ทองชาวนา', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001005', 'นางเฉลียว ชอนหนองบอน', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001006', 'น.ส.สำเริง ชอนหนองบอน', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001011', 'นางนกเล็ก ชอนหนองบอน', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001021', 'น.ส.ศรีอำไพ ทิพยวรรณ', 'หญิง', '49', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001032', 'นางสุกัญญา ชอนหนองบอน', 'หญิง', '40', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001035', 'นางสมควร กลัดเนินกุ่ม', 'หญิง', '53', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001051', 'นางน้ำค้าง มาโพธิ์ชัย', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001055', 'นางจันทิมา(200) สาฉิมพลี', 'หญิง', '55', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001071', 'นางกมลวรรณ บรรดาสุข', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001076', 'นางมาลัย ต่วนเครือ', 'หญิง', '41', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001082', 'นางสนอง(105) พิชัยพานิช', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001089', 'นางลัดดา(202) พิชัยพาณิชย์', 'หญิง', '55', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001091', 'น.ส.ปัทมา พิชัยพานิช', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001094', 'นางเฉลียง พิชัยพานิช', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001104', 'น.ส.นงค์ลักษณ์ เจนตระกูล', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001110', 'นางละเอียด จิตรทอง', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001112', 'น.ส.ตรีรัตน์ เลิศประเสริฐถาวร', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001114', 'นางนฤมล เอกธรรมสุทธิ์', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001117', 'น.ส.นันทวัน พิชัยพานิช', 'หญิง', '35', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001129', 'นางเอื้อมเดือน พิชัยพานิช', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001136', 'น.ส.ศุภลักษณ์ เกิดนวล', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001141', 'นางบุญเรือน(55) เจริญสุข', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001151', 'นางอัจฉรา พินิจ', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001152', 'น.ส.สาวิตรี กลิ่นชาวนา', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001158', 'น.ส.สมภพ โตพร', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001161', 'น.ส.อังคณา เขียวกรุง', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001165', 'น.ส.มณี มีเดช', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001170', 'นางนิตยา การะเกตุ', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001183', 'นางคณิตตา ศรีละออ', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001196', 'นางสมบัติ เซนักค้า', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001203', 'นางอุษณี น้อยนาค', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001205', 'นางอุมาภรณ์ ปั้นเปรื่อง', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001213', 'นางอานัน(266) ปราระกานนท์', 'หญิง', '51', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001219', 'นางอำนวย ปราระกานนท์', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001224', 'นางวงค์เดือน เนตรชาวนา', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001227', 'นางสุรีรัตน์ รันเซาเวอร์', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001229', 'นางสุภาพร ปัญจวรณ์', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001231', 'น.ส.เตย อ่องอร่าม', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001238', 'นางเอื้อน จูชาวนา', 'หญิง', '60', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001251', 'นางรำพึง ก้อนทอง', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001253', 'นางเพียน ผลอุดสาห์', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001259', 'นางทองคำ ก้อนทอง', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001263', 'นางเลื่อน ศรีไพลอ่อน', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001266', 'น.ส.ไสว(264) คันธภิรมย์', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001270', 'น.ส.วิเชียร สีไพลอ่อน', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001280', 'นางวิลาวัณย์ ปัญจวรณ์', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001287', 'นางสุชิน สมัยสมบัติ', 'หญิง', '50', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001290', 'น.ส.วิมล ธูปหอม', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001293', 'นางเสาวคนธ์ คำดี', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001298', 'นางรัตณ์มณี คำดี', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001309', 'นางสัมฤทธิ์ บุญธรรมา', 'หญิง', '47', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001329', 'นางวิรัลพัชร แก้วชาวนา', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001331', 'นางวัชรา วงษ์หมอ', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001337', 'นางชูศรี ศรีบ้านแกร', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001340', 'นางสอิ้ง รั้วสำราญ', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001342', 'น.ส.อุไร วิชานนท์', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001354', 'นางพิมพ์พิศา บุญวัดหงษ์', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001358', 'นางทุเรียน รั้วสำราญ', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001364', 'นางแตงอ่อน เมษา', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001384', 'นางเครือ สุขกลิ่น', 'หญิง', '56', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001392', 'นางประนม จูชาวนา', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001396', 'น.ส.นันทกาญจน์ เหมือนเพ็ชร', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001403', 'น.ส.ประทิพย์ ภักดีอำนาจ', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001404', 'นางสุทิน คงสัมฤทธิ์', 'หญิง', '57', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001413', 'นางเสวียง ฟักชื่น', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001438', 'นางฉัตรวิไล สุขกลิ่น', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001444', 'น.ส.ลัดดาวัลย์ กะนันตัง', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001445', 'นางลัดดา กะนันตัง', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001458', 'นางพิศ เบญจวรณ์', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001459', 'น.ส.ปราณี โพธิ์ทอง', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001467', 'นางจรูญ ศาลาดิน', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001486', 'นางชัชราภรณ์ รองกลิ่น', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001513', 'นางธนพร เลือดสุคัน', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001521', 'น.ส.ทัศนีย์ แก้วชาวนา', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001525', 'นางสมบัติ บุญชาวนา', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001540', 'นางลำเจียน อ่ำชาวนา', 'หญิง', '54', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001542', 'นางลำพรวน โพธิ์เงิน', 'หญิง', '59', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001548', 'น.ส.จันทร์แพร มาชาวสวน', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001581', 'น.ส.สมบัติ(132) สมัยสมบัติ', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001588', 'นางบุญเรือน ทับทิมทอง', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001610', 'นางทับทิม คิดะ', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001664', 'นางสุทธิ ศรีภูมิ', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001670', 'นางทองย้อย แย้มเสาธง', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001673', 'น.ส.คนึง เพ็งเมืองนนท์', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001682', 'น.ส.ย้วย ทองชาวนา', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001710', 'น.ส.ลีระภาพร คำพิฑูรย์', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001724', 'นางสาหร่าย เหมือนเพ็ชร', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001729', 'นางกิ่งดาว ดีใจงาม', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001769', 'นางกมล(331) ชอนหนองบอน', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001772', 'นางบรรเจิด สงแจ้ง', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001798', 'น.ส.สนิท เปลี่ยนกระจ่าง', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001806', 'นางน้ำหอม ขำบางโพธิ์', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001817', 'นางสิริกร แผ้วกิ่ง', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001824', 'นางสำราญ หนูท่านา', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001830', 'นางกำลัย จิตจริต', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001856', 'นางสังวาน คลี่วงษ์', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001863', 'นางสมบัติ(201) เหมือนเพชร', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001867', 'นางอรทัย ชูบุญ', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001874', 'น.ส.ปริศนา ฉัตรธรรม', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001876', 'นางกิมล้วย(75) คุณประชา', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001901', 'นางอุไรวรรณ แก้วชาวนา', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001902', 'นางเครือวัลย์(281) บัวศรี', 'หญิง', '45', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001910', 'นางชัญญาณัฏฐ์ สุขประสิทธิ์', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001913', 'น.ส.สุชนนิพัน คำบึงกลาง', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001943', 'นางปทิตตา คันธภิรมย์', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001949', 'นางยุพิน(186) บุญประเสริฐ', 'หญิง', '53', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001952', 'น.ส.ธีริศรา ปิ่นเกษร', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001969', 'น.ส.ปวีณา สุขวิจิตร', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001974', 'น.ส.ประครอง เมืองชาวนา', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001983', 'นางสุทิน กลิ่นหอม', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001990', 'น.ส.นิตยา พัสกุล', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001991', 'นางระเบียบ ก้อนสะเทื้อน', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '001993', 'นางรันทม มีภู่', 'หญิง', '51', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '002007', 'น.ส.จไมพร โล่ห์ชาวนา', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '002012', 'นางปิยะนาท การะเกตุ', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '002017', 'น.ส.ณัชชา ป้อมสาหร่าย', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '002025', 'นางสมส่วน สานเป็น', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '002026', 'น.ส.เฉลียง สอนชาวเรือ', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '002052', 'นางมะยม แย้มเสาธง', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '002057', 'นางน้ำค้าง อึ่งกุล', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '002059', 'นางมะลิ แสงรอด', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '002097', 'นางกิมเฮียง อ่องอร่าม', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '002100', 'นางทิพาพร อิ่มอุระ', 'หญิง', '49', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '002106', 'นางดอกรัก วัดแจ้ง', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '002107', 'นางสายหยุด ถาวรวงค์', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '002115', 'น.ส.ลำยอง ขำน้ำคู้', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '002132', 'นางประทุม ไกรกรุง', 'หญิง', '46', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '002168', 'นางปรียาพร มูลชาติ', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '002187', 'นางปราณี ม่วงเพ็ชร', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '002201', 'น.ส.กาญจนา สังข์พานิช', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '002206', 'นางสัมพันธ์(133) แจ้งชาวนา', 'หญิง', '40', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '002212', 'นางบุญชู ว่างตระกูล', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '002215', 'นางจำรัส มาสีกุก', 'หญิง', '56', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '002218', 'น.ส.กาญจนา สุขพิทักษ์', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '002243', 'นางณิพาพร กลิ่นชาวนา', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '002277', 'นางกนกวรรณ แต้ต่วน', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '002306', 'น.ส.วรดา เขียวกรุง', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '002313', 'นางทองอยู่(69) ศรีเดช', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '002315', 'นางสุนันท์ ลาวิน', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '002316', 'น.ส.น้ำทิพย์ กรุงเกตุ', 'หญิง', '48', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '002374', 'นางก้านตอง(287) จันทร์โพธิ์', 'หญิง', '52', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '002382', 'น.ส.เฉลิม ภู่ชาวนา', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '002394', 'นางน้ำเต้า อ้นชาวนา', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '002397', 'นางสังเวียน กัณหาชาลี', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '002398', 'นางดลใจ มากทรัพย์', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '002422', 'นางประจิน(39) น้อยใจมั่น', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '002426', 'น.ส.แฉล้ม เหมือนเพชร', 'หญิง', '58', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '002427', 'นางมานิตย์ ต้นพิศมัย', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '002501', 'นางนฤมล มณีนิล', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '002524', 'นางอุบล วัดแจ้ง', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '002548', 'นางธนาภา อ้นชาวนา', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '002567', 'นางฉวีวรรณ อุปถัมภ์', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '002582', 'นางบุญเสริม ลาวิน', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '002593', 'น.ส.รำพึง โพธิ์ชาวนา', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '002597', 'นางลัดดา(180) พรมแพร', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '002601', 'นางสุมัฑฐญา ประเสริฐศรี', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '002649', 'น.ส.จิราพร สอนชาวเรือ', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '002655', 'นางลำยงค์(243) แสงเดือน', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '002656', 'นางบุญรอด คงลา', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '002660', 'นางประดิษฐ์ เอี่ยมเติม', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '002673', 'นางประนอม พรมบึงลำ', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '002689', 'นางอึ่ง(158) สุขโรจน์', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '002705', 'นางทิพย์รัตน์ ปุยสุข', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '002706', 'น.ส.บุญยืน บานเย็นงาม', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '002725', 'นางชนินทร สุขจิตร', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '002753', 'นางลัดดา เมืองชาวนา', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '002776', 'นางนกแก้ว มากทรัพย์', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '002810', 'น.ส.วิราภรณ์ ยิ้มสบาย', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '002850', 'น.ส.ดวงพร กลิ่นชาวนา', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '002855', 'น.ส.เฉลียว บุญชาวนา', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '002859', 'น.ส.สุวรรณา(31) เพชรทอง', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '002865', 'น.ส.สวงค์(88) ขำน้ำคู้', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '002873', 'นางนัฐจภรณ์ มาโพธิ์ชัย', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '002906', 'น.ส.วงศ์จันทร์ ปัญญาวิสุทธิมงคล', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '002910', 'นางเลิศกญรินธร พารุณ', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '002950', 'นางสุชาดา สุขวิจิตร', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '002977', 'นางบุญมา คันธภิรมย์', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '002997', 'นางมณี นุชบ้านป่า', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '003007', 'นางก้าน ลาวิน', 'หญิง', '48', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '003009', 'น.ส.ยุพา ตรงจริง', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '003032', 'นางผ่อน มิเบื้องบน', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '003036', 'นางฉลวน เหมือนเพ็ชร', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '003056', 'น.ส.สำรวย ฉุนชาวนา', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '003104', 'นางพนมวัลย์ พิมโยธา', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '003109', 'นางพิม ยอดจวง', 'หญิง', '44', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '003160', 'นางเรียม สุขโรจน์', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '003163', 'นางปราณี เหม็งสามเรือน', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '003169', 'นางเตียง กัลเกตุ', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '003186', 'นางสำราญ สอนชาวเรือ', 'หญิง', '43', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '003187', 'นางนิตยา รั้วสำราญ', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '003188', 'นางพรรณภา หนูชาวนา', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '003206', 'นางอัจฉรา น้อยวงค์', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '003207', 'น.ส.รุ่งรัตน์ อินทร์มะตูม', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '003215', 'นางส้มลิ้ม อินทร์มะตูม', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '003219', 'นางบุญล้ำ มากทรัพย์', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '003221', 'นางจินดารัตน์ ยอดมีกลิ่น', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '003242', 'น.ส.รุ้งตะวัน โกสิงห์', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '003244', 'น.ส.รัตน์ เชื้อทอง', 'หญิง', '50', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '003249', 'นางบุญสม สุขวิจิตร', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '003262', 'นางมานิตย์ แก้วชาวนา', 'หญิง', '37', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '003274', 'นางจิ๋ว ธานีวรรณ', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '003291', 'นางเกษร ปานทอง', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '003306', 'นางทองเลื่อน(35) มาโพธิ์ชัย', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '003316', 'น.ส.ปรานอม ภู่ธูป', 'หญิง', '47', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '003323', 'นางแป้งร่ำ กาญจนารัญ', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '003336', 'นางอำนวย เพชรทอง', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '003382', 'นางทิพวรรณ รอดคง', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '003383', 'นางวันดี ธูปชาวนา', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '003395', 'นางเฉวียง สังข์นวล', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '003439', 'นางเสนอ ดีใจงาม', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '003445', 'นางมาลัย จุไรย์', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '003457', 'นางสำอางค์(67) เลิกนอก', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '003464', 'นางพเยาว์ อู่ไทย', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '003468', 'นางลิ้นจี่(313) โล่ห์ชาวนา', 'หญิง', '55', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '003477', 'นางทิพย์รัตน์ เดชเดชา', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '003478', 'น.ส.บุญสม อิ่มอุระ', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '003487', 'นางสุดใจ อินทรศร', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '003507', 'นางสวัสดิ์ รั้วสำราญ', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '003519', 'นางอำนวย การะเกตุ', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '003530', 'น.ส.จำเนียร เบ็ญจวร', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '003537', 'นางรสรินทร์(48) ชินนอก', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '003559', 'นางสำลี อ้นคูเมือง', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '003572', 'นางพรชนก เหมือนเพชร', 'หญิง', '50', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '003573', 'นางอุไรวรรณ สุขเทศ', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '003574', 'นางอุไร กระฐิน', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '003578', 'นางบิลเลียด ทองศรี', 'หญิง', '50', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '003601', 'น.ส.บุญชู พรหมสมบูรณ์', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '003602', 'นางสุปัญญา ป้อมสาหร่าย', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '003641', 'นางชั้น นุ้ยวังทอง', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '003642', 'นางพนม เมืองชาวนา', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '003643', 'นางเตี้ยม กันสาด', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '003668', 'นางยุทธ ต๊กควรเฮง', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '003688', 'นางตอง โพธิ์ทอง', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '003698', 'น.ส.การะเกตุ กาญจนารัญ', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '003699', 'นางดาว สายยืด', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '003700', 'นางสุวรรณา มิเบื้องบน', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '003716', 'นางนงนุช(171) แต้ต่วน', 'หญิง', '47', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '003718', 'นางกรศิริ(299) ศรีปาน', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '003728', 'น.ส.รมิตา สุวรรณอำไพ', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '003731', 'นางลำพึง(346) เทียนสมจิตร', 'หญิง', '41', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '003732', 'น.ส.เสนาะ สุขยืนยงค์', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '003756', 'นางสงวน มีข้อ', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '003771', 'น.ส.สายฝน ปิ่นเกษร', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '003798', 'นางมะลิวัลย์ ทับมี', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '003837', 'น.ส.ณัฐณิชา สีวังโป่ง', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '003840', 'นางทิพวรรณ ฟักชื่น', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '003841', 'น.ส.สุชาดา ทองเพ็ง', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '003850', 'นางน้อย จูชาวนา', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '003858', 'นางนกเขา(87) ธูปหอม', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '003879', 'น.ส.ลดาวัลย์ น้อยชาวนา', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '003881', 'นางบุญมา ม่วงเพ็ชร', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '003893', 'น.ส.อั่น ทิพยวรรณ', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '003899', 'นางรำพึง(86) การะเกตุ', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '003906', 'น.ส.น้ำทิพย์ โพธิ์ทอง', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '003935', 'นางณัฐฐา สุขสวัสดิ์', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '003962', 'นางจรูณ ทับทิมทอง', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '003968', 'นางปรานอม ดอนเมือง', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '003970', 'น.ส.ลำเพย ทองคำมาก', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '003972', 'นางลำใย กะนันตัง', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '003987', 'น.ส.ชลทิชา รั้วสำราญ', 'หญิง', '59', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '004011', 'นางสุชญา สังข์นวล', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '004017', 'นางนิตย์ เฮงประเสริฐ', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '004035', 'นางน้ำค้าง มากทรัพย์', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '004059', 'น.ส.ประทิน ทองศรี', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '004065', 'น.ส.บุญรอด ตุ้มสุข', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '004074', 'น.ส.ดารกิต ยวงลำใย', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '004105', 'นางจำลอง กลัดเนินกุ่ม', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '004109', 'นางสำเนา สุขยืนยงค์', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '004112', 'น.ส.สำเริง(270) คล้ายเหมือน', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '004125', 'นางทองหยิบ ป้อมสาหร่าย', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '004133', 'น.ส.สายหยุด ทับทิมทอง', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '004149', 'นางสุนัน(139) ศาลาดิน', 'หญิง', '59', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '004157', 'นางณะรงค์(32) บุญถึง', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '004177', 'นางตุ๊กตา ว่างตระกูล', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '004186', 'นางบุญเต็ม(91) ธัญญเจริญ', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '004205', 'น.ส.วรรณา จันทร์ชาวนา', 'หญิง', '49', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '004216', 'นางระภีพร ภูมิผล', 'หญิง', '34', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '004219', 'น.ส.เหมียววดี สีทา', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '004252', 'นางสมศรี บัววังโปร่ง', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '004259', 'นางสุดใจ ทองสัมฤทธิ์', 'หญิง', '57', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '004284', 'นางแฉล้ม น่วมคงมั่น', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '004293', 'นางมยุรี ต้นพิศมัย', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '004332', 'น.ส.อภิญญา พันธ์ภู่', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '004340', 'น.ส.สอางค์(28) ต้นพิศมัย', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '004355', 'นางลำยงค์ กลมกล่อม', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '004363', 'นางน้ำค้าง แย้มชื่น', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '004395', 'นางประดับ พรมบึงลำ', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '004418', 'นางขวัญเรือน กะการดี', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '004432', 'นางเสาวรักษ์ โพธิ์ทอง', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '004438', 'นางจิตตรา เนตรชาวนา', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '004458', 'นางจำนอง มุ่งดี', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '004479', 'นางบุญชู อึ่งกุล', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '004523', 'นางสมพร เพชรวิจิตร', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '004528', 'นางอุบล(247) สมัยสมบัติ', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '004544', 'น.ส.ธีรนุช แดงชาวนา', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '004576', 'นางธนพร ศรีละออ', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '004582', 'นางน้ำอ้อย(189) บัวจำ', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '004588', 'นางอุษา พรมบึงลำ', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '004610', 'นางชันสา(235) อิ่มอุระ', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '004646', 'นางเพลิน(206) เอี่ยมเติม', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '004667', 'นางไสว มาชาวสวน', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '004679', 'น.ส.สุดา ไกรกร่ำ', 'หญิง', '33', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '004696', 'นางฉวีวรรณ การะเกตุ', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '004707', 'นางจำนงค์ บุญชาวนา', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '004746', 'น.ส.เย็นตาจิตร แซ่อุ้ย', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '004767', 'น.ส.บุญนำ ลาวิน', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '004768', 'น.ส.ปิยนุช สกุลนา', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '004778', 'นางบุญลือ หงษ์ดวง', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '004781', 'น.ส.อ้อยใจ จันทร์ชาวนา', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '004830', 'นางละออ(334) รักษาล้ำ', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '004840', 'นางปวีณา น้อยวงค์', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '004842', 'น.ส.มะลิ กัลเกตุ', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '004849', 'นางวรรณา ทองศรี', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '004850', 'นางฉลวย ฤทธิ์อ่องรักษ์', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '004867', 'นางประจำ ศาลาดิน', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '004880', 'นางสุดใจ ธรรมวงค์', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '004899', 'นางธิดาวรรณ บอร์แลนด์', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '004907', 'นางชนาภา ขำน้ำคู้', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '004933', 'นางประชุม นาคอินทร์', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '004952', 'น.ส.อนงค์ ภู่ชาวนา', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '004955', 'น.ส.นารีรัตน์ ศรีบ้านแกร', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '004959', 'นางประเสริฐ สุขพรม', 'หญิง', '51', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '004991', 'นางขัน โพธิ์ทอง', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '005000', 'นางสุดท้าย บุญชาวนา', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '005006', 'น.ส.จำลอง สมเพชร', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '005039', 'นางนันท์ คล้ายท่าโรง', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '005059', 'น.ส.อนัน ธูปชาวนา', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '005062', 'นางนิสาชล นาคอินทร์', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '005064', 'นางนงนุช ศรีแก้ว', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '005067', 'นางสำรี แป้นชาวนา', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '005079', 'นางสารีญา อิ่มอุระ', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '005091', 'นางวราภรณ์ ชุมมาต', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '005103', 'น.ส.สำเริง ทับทิมทอง', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '005112', 'นางณันชยา อ่ำจำปา', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '005125', 'นางรังสาด ธูปชาวนา', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '005146', 'น.ส.ธัญญลักษณ์ ตั้งใจ', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '005149', 'นางจันตนา ศิริวัฒน์', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '005198', 'นางสุนัน เบ็ญจวร', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '005199', 'นางลำเพย ป้อมส่าหร่าย', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '005215', 'น.ส.ตวิษา กลิ่นชาวนา', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '005223', 'นางพานี ชอนบุรี', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '005228', 'นางเดือน เบญจวรณ์', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '005230', 'นางสีวรรณเพ็ญ(289) ทิพยวรรณ', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '005251', 'นางมาลี ขาวคุ้ม', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '005273', 'น.ส.สมหวัง(276) เมืองชาวนา', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '005292', 'นางบรรจง บุญถึง', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '005325', 'นางสายพิน ฉิมช้าง', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '005329', 'นางสวาด(102) อ้นชาวนา', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '005333', 'น.ส.ไม้ ภู่ธูป', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '005343', 'น.ส.สิริพร เทพทอง', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '005352', 'นางกิมฮวย มากทรัพย์', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '005375', 'นางปราณี(24) บัวศรี', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '005378', 'น.ส.บังเอิญ โพธิ์ดี', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '005392', 'น.ส.อบเชย พรมบึงลำ', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '005400', 'น.ส.เบญจาง อรรถศิริ', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '005419', 'นางมาลัย (1) อ่ำชาวนา', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '005480', 'น.ส.สุทิน(161) แจ้งชาวนา', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '005485', 'น.ส.บุญเลี้ยง คุ้ยทอง', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '005496', 'นางแหว๋ว กระถิน', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '005539', 'น.ส.บุญชู พรมบึงลำ', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '005545', 'นางประนอม แก้วชาวนา', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '005559', 'น.ส.จันทร์รอน ยอดมีกลิ่น', 'หญิง', '50', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '005561', 'น.ส.จารุณี น่วมคงมั่น', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '005581', 'นางสมถวิล(221) ต๊กควรเฮง', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '005583', 'น.ส.พวงผกา ชอนบุรี', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '005588', 'นางเช้า เหมือนเพชร', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '005619', 'น.ส.สนม ต้นพิศมัย', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '005643', 'นางอัสชลา กลิ่นชาวนา', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '005657', 'นางบังอร ทองสัมฤทธิ์', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '005658', 'นางแสงเดือน แสงเดือน', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '005680', 'น.ส.ธิติกาญจน์(322) พงษ์ธนาสุภานนช์', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '005693', 'นางดาวน้อย สระทองอินทร์', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '005703', 'น.ส.สุนิสา แก้วชาวนา', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '005712', 'นางละเอียด ภู่ประดับ', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '005723', 'นางสมบูรณ์ สาลีศูนย์', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '005729', 'นางเฉลียว แดงชาวนา', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '005737', 'น.ส.ปราณี ศรีภูมิ', 'หญิง', '54', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '005754', 'นางวิเชียร ดำขำ', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '005755', 'นางน้ำเพชร ไกรนารถ', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '005761', 'นางเจริญ บัวศรี', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '005767', 'นางรัตนา(292) บุญโกศล', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '005851', 'นางสุบิน(339) เขียวสัมฤทธิ์', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '005872', 'นางฉวี ไกรกรุง', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '005883', 'น.ส.ชิดชนก เหมือนเพ็ชร', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '005922', 'นางลัดดาวัลย์ บัวเล็ก', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '005938', 'นางลม้าย(38) ปิ่นเกษร', 'หญิง', '59', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '005942', 'นางจิรภัทร อู่ไทย', 'หญิง', '38', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '005944', 'นางบุญเรือน ศรีวังโป่ง', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '005952', 'น.ส.สาลี่ กลิ่นชาวนา', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '005958', 'นางลำพึง ฉิมปรางค์', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '005964', 'นางวนิดา แก่นจักร์', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '005983', 'นางสังเวียน อำไพรินทร์', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '006013', 'นางลำพึง จันทร์ชาวนา', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '006015', 'นางสมศรี อู๋สามเรือน', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '006021', 'นางวันเพ็ญ บุญถึง', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '006025', 'น.ส.บุญเรือง จันทร์ศรีทอง', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '006032', 'น.ส.สำรวย พงษ์บ้านไร่', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '006042', 'น.ส.กิ่ง ลาวิน', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '006043', 'นางปรานอม(244) หมอช้าง', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '006067', 'น.ส.สุนิสา อ่วมสวัสดิ์', 'หญิง', '30', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '006070', 'นางเสนาะ กลิ่นแย้ม', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '006081', 'นางทวี คันธภิรมย์', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '006095', 'น.ส.สุรัตน์ รั้วสำราญ', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '006110', 'นางส้มลิ้ม(83) พรมบึงลำ', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '006125', 'นางบุญโฮม ภูพลผัน', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '006145', 'นางลำยอง สุขพรม', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '006161', 'น.ส.สุนันทา ศิลารัตน์', 'หญิง', '39', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '006163', 'นางอุลัย สังข์พานิช', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '006174', 'นางอารีรัตน์ พูลแสง', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '006181', 'นางรำพรวน อ่ำไพริน', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '006187', 'น.ส.เรณู ถึงเจริญ', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '006199', 'นางรัดดา พรมบึงลำ', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '006205', 'นางมานพ นาคอินทร์', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '006209', 'นางสำลี กรมเวช', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '006219', 'นางบุญเสริม จันทร์ศรีทอง', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '006222', 'น.ส.นกแก้ว บุญกระจ่าง', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '006248', 'นางเกศสุดา ศรีจันทร์', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '006266', 'นางอนงค์ สีสอาด', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '006277', 'นางสุมาส สังข์นวล', 'หญิง', '57', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '006296', 'นางสี บุญชาวนา', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '006321', 'นางนกเล็ก เพ็งเมืองนนท์', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '006360', 'น.ส.กาญจนา แก่นท่าตาล', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '006367', 'นางน้ำวน สุขสวัสดิ์', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '006410', 'นางบุญเชิญ ศรีสอาด', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '006422', 'นางมานิตา แสงเดือน', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '006431', 'น.ส.รันทม แซ่อุ้ย', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '006449', 'นางวรรณพร ชอนหนองบอน', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '006456', 'นางสมบัติ ธูปเพ็ง', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '006457', 'น.ส.จันทร์เพ็ญ ม่วงเพ็ชร', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '006458', 'นางจอมขวัญ(300) มาโพธิ์ชัย', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '006467', 'น.ส.ดาแมร์ สังข์พานิช', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '006484', 'นางสายพิน ก้อนทอง', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '006494', 'น.ส.อุ่น อู่ไทย', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '006501', 'นางลำยวน แต้ศิริถาวร', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '006511', 'นางกัลยา อ่ำเจริญ', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '006530', 'นางบำรุง อำไพรินทร์', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '006542', 'นางสำรวย(242) ไหมเอี่ยม', 'หญิง', '44', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '006595', 'น.ส.ย้วน อินทร์โต', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '006604', 'น.ส.จีราวรรณ ศรีสาธร', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '006611', 'นางกำไร ป้อมสาหร่าย', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '006620', 'นางกิมรั้ง(134) ตั้งใจ', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '006654', 'นางบุญชู สอนชาวเรือ', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '006677', 'นางประเสริฐ คลี่วงค์', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '006698', 'นางเสนอ ป้องศรี', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '006700', 'นางธนวรรณ จันทร์ตะโหนด', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '006726', 'น.ส.มานุ จุลมุสิก', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '006736', 'น.ส.วาสนา ไกรนารถ', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '006749', 'น.ส.วรรณา พัสกุล', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '006759', 'นางอำนวย(27) อินทร์ทรง', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '006775', 'น.ส.มะลิ(131) แก้วคำ', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '006785', 'นางเพชรลดา แป้นชาวนา', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '006790', 'นางเอื้องเดือน(314) ไชยพุฒ', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '006803', 'นางละมัย แย้มยิ้ม', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '006848', 'นางสง่า มาชาวสวน', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '006855', 'น.ส.สุขกันยา(325) ป้อมสาหร่าย', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '006858', 'นางเสด็จ สีสุธรรม', 'หญิง', '58', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '006859', 'น.ส.สำลิตร มณีท่าโพธิ์', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '006862', 'นางชลอ เดชเดชา', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '006889', 'นางสำรวม แย้มชื่น', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '006895', 'น.ส.สมทรง อ่อนเกตุ', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '006904', 'น.ส.ฉลอง สอนชาวเรือ', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '006906', 'นางบุญเลี้ยง มากทรัพย์', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '006908', 'นางอรพินธ์ จันอินทร์', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '006916', 'น.ส.ทับทิม น้อยกุล', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '006965', 'น.ส.เบี้ยว คุ้ยทอง', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '006980', 'นางจำเนียร ฉุนชาวนา', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '006988', 'นางจรุงจิตต์ ปิ่นเกษร', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '006994', 'นางบุญร้ำ รุ่งเรืองศักดิ์', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '007021', 'น.ส.สมใจ อ่ำชาวนา', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '007037', 'นางสงบ พรมสกุล', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '007050', 'นางมณี คุ้มสุพรรณ', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '007054', 'นางพเยาว์(306) ทองชาวนา', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '007111', 'น.ส.เพา(218) อ่ำจำปา', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '007114', 'น.ส.ซ่อนกลิ่น ม่วงเพ็ชร', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '007117', 'นางลูกจันทร์ ลาวิน', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '007124', 'นางชลธิชา แสงศิริ', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '007137', 'น.ส.ชนกพรรณ พิชัยพานิช', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '007139', 'น.ส.จำเนียร เพชรทอง', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '007140', 'น.ส.กลัยากร เดชเดชา', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '007153', 'น.ส.ณัฐฐสุดา ทองมาก', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '007162', 'นางสุภาพ ผลจันทร์', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '007242', 'นางบุญส่ง อ่ำจำปา', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '007265', 'น.ส.วันทนา สอนแพง', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '007267', 'นางเดือนเพ็ญ ภู่แย้ม', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '007273', 'นางอำนวยพร มาโพธิ์ชัย', 'หญิง', '54', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '007278', 'น.ส.นุสรา พรมสกุล', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '007288', 'นางเฉลา ฉิมศิริ', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '007313', 'นางสมัย(50) ทองเพ็ง', 'หญิง', '58', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '007376', 'นางเฉลิม สอนชาวเรือ', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '007396', 'น.ส.สมชิต ขำน้ำคู้', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '007418', 'นางประมวน(324) หนูชาวนา', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '007424', 'นางสนิม สังข์ทอง', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '007470', 'นางรัตนา(26) เทียนสมจิตร', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '007514', 'นางสุทัตตา แตงเจริญ', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '007541', 'น.ส.อุบล มนต์มณี', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '007551', 'น.ส.น้ำค้าง(329) เดชเดชา', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '007564', 'นางอังคณา(155) เริ่มภักตร์', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '007595', 'นางสมบัติ เทียนแย้ม', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '007599', 'นางกุลญาดา สิงห์สาครเดชา', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '007605', 'น.ส.มานิต บุญกระจ่าง', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '007613', 'นางลำจวน(20) อินทร์โต', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '007619', 'น.ส.นกกระจิบ(100) อ่ำชาวนา', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '007622', 'นางสมบัติ โมลัยรักษ์', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '007633', 'นางมณี ขาวม่วง', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '007652', 'นางวันเพ็ญ เมืองชาวนา', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '007688', 'นางสมใจ ศาลาดิน', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '007699', 'นางทับทิม โพธิ์ทอง', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '007743', 'น.ส.สุทิน เมฆประดับ', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '007756', 'น.ส.นาราภัทร ทองเพ็ง', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '007772', 'นางฉลวย บุญเกิน', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '007782', 'นางมัชฌิมา มากทรัพย์', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '007806', 'น.ส.กาญจนา ว่างตระกูล', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '007828', 'นางปทุมทอง มากทรัพย์', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '007838', 'นางชิดชนก ก้อนสะเทื้อน', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '007855', 'นางนกหวีด แผ้วกิ่ง', 'หญิง', '59', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '007886', 'นางปราณี หลิน', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '007898', 'นางสุชิน ปุยสุข', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '007908', 'นางสุรีรัตน์ บัววังโปร่ง', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '007910', 'นางภัทรวดี ฝั่งสระ', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '007940', 'น.ส.พรทิพย์ กลิ่นชาวนา', 'หญิง', '33', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '007950', 'น.ส.รินรวี แต้ศิริถาวร', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '007959', 'นางกาหลง บุญโชติ', 'หญิง', '42', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '007961', 'น.ส.ชุติกาญจน์ ทองชาวนา', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '007973', 'นางปิ่นรัตน์ แป้นชาวนา', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '007987', 'น.ส.ศศิวิมล ไพริด', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '007989', 'น.ส.ธัญญรัตน์ สกุลทอง', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '008000', 'น.ส.กุลยากรณ์ ปิ่นแก้ว', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '008015', 'นางหิ้ง ปัญจวรณ์', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '008021', 'นางวิลัยพร ธุระสุข', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '008027', 'น.ส.มะลิวรรณ อ่ำเกตุ', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '008035', 'นางเพลินนภา มูลนาค', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '008047', 'นางบุญรอด ทองเพ็ง', 'หญิง', '39', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '008082', 'นางเสาวนีย์ เทียนโสภา', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '008111', 'น.ส.อรวรรณ รั้วสำราญ', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '008132', 'นางศศิวิมล บริหาร', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '008136', 'นางน้ำอ้อย แดงชาวนา', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '008137', 'นางดวงกมล เพชรทอง', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '008142', 'นางกะทิ(81) ขำน้ำคู้', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '008156', 'นางเจิด(146) ป้อมสาหร่าย', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '008169', 'นางมาลัย(135) สุขอภัย', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '008206', 'น.ส.ปณิตา ว่างตระกูล', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '008258', 'น.ส.วัฒนา กลัดเนินกุ่ม', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '008267', 'น.ส.วราภรณ์ ประพฤติดี', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '008272', 'น.ส.พัทธนันท์ ชำนาญ', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '008297', 'น.ส.สารี ด้วงวงษ์', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '008302', 'น.ส.อทิตยา นรัตน์กุล', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '008340', 'น.ส.มีนตราวดี กันสาด', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '008344', 'นางอมร กำจร', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '008381', 'นางฤดีวรรณ เทพประมวล', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '008411', 'นางณัฏฐา ชาวดง', 'หญิง', '51', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '008423', 'นางทองย้อย โพธิ์ดี', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '008444', 'น.ส.นิตรา ปิ่นเกษร', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '008451', 'นางวิพา ธูปชาวนา', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '008458', 'น.ส.ติ๋ม พาทา', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '008464', 'น.ส.นฤทธิ์ศรา พงษ์พานิช', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '008465', 'น.ส.จิราภรณ์ ศรีสาธร', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '008619', 'นางกาญจนา อ้นคูเมือง', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '008628', 'น.ส.ทวี เพียรชาวนา', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '008650', 'นางกัญญา(230) สุปะมารุ่งโรจน์', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '008800', 'น.ส.เวียงทอง โสมมาลี', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '008866', 'นางอัมรา ว่างตระกูล', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '008898', 'นางรุ่งกานต์ การะเกตุ', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '008899', 'นางวันเพ็ญ ทิพบุญทอง', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '008947', 'น.ส.ลำจวน นาคนาคา', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '009041', 'นางโอ๋ ฝอดสูงเนิน', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '009106', 'น.ส.กัญภร สุขนิรันดร์', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '009153', 'น.ส.เจียมจิต ใจหนักแน่น', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '009279', 'น.ส.อุดมพร พิชัยพานิช', 'หญิง', '38', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '009444', 'นางหม่อม ชาวกัมพูชา', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '009457', 'นางสุกัญญา นุ้ยวังทอง', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '009535', 'นางสว่าง(232) แก้วชาวนา', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '009579', 'น.ส.สุนิสา ว่างตระกูล', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '009580', 'นางบุณยาพร พงศ์มณี', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '009598', 'นางชลดา อำภาพันธ์', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '009600', 'น.ส.สุภาภรณ์ ดีอินทร์', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '009625', 'น.ส.หทัยรัตน์ หมอนทอง', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '009679', 'นางสุพินดา(233) บุญอยู่', 'หญิง', '52', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '009817', 'นางสำรวย ต้นภูเขียว', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '009820', 'น.ส.จำเนียร ยศสูงเนิน', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '009830', 'นางประนอม บุญชาวนา', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '009913', 'น.ส.ทิพย์วรรณ สังข์พานิชย์', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '010236', 'น.ส.ลัดดา อินทร์ทอง', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '010352', 'น.ส.ติ๋ม ไชยมูล', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '010387', 'น.ส.สุภาวดี เกิดผล', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '010509', 'นางลำเพย สุภาวะ', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07550', '010559', 'นางเสวียน สุภะคะ', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000003', 'น.ส.สุณี บุญสุข', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000006', 'นางสมควร ศรีพุ่ม', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000007', 'นางสำเริง การะวิโก', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000019', 'นางติ๋ม กล่อมบาง', 'หญิง', '50', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000034', 'นางบุญเรียม อ้นชาวนา', 'หญิง', '50', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000044', 'นางอำพร โพธิ์ศรี', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000052', 'นางกัลยา อ้นชาวนา', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000057', 'นางพาน อ้นชาวนา', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000077', 'นางนารี ขำบางโพธิ์', 'หญิง', '36', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000082', 'นางมานี ขาวคุ้ม', 'หญิง', '41', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000084', 'นางอำไพร เอี่ยมคำ', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000088', 'นางรัญทม สุขฤทธิ์', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000097', 'นางเหรียญ พุ่มสุวรรณ์', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000098', 'นางประเทือง พุ่มสุวรรณ์', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000104', 'นางดาว พุ่มสุวรรณ์', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000111', 'นางเพ็ญศรี พงษ์พานิช', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000116', 'นางเรณู พงษ์พานิช', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000120', 'นางล้ำ สุขจันทร์', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000124', 'น.ส.นารี อินชาวนา', 'หญิง', '54', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000128', 'นางระมูล อ้นชาวนา', 'หญิง', '45', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000131', 'น.ส.ขวัญจิตร มาสีกุก', 'หญิง', '40', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000133', 'นางศรีประชุม มาสีกุก', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000139', 'นางสุวรรณ มาสีกุก', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000140', 'นางน้ำผึ้ง ป้อมสาหร่าย', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000143', 'นางสว่าง มาสีกุก', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000161', 'น.ส.กำลัย มาสีกุก', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000165', 'น.ส.บุญยิ้ม ภู่เทศ', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000178', 'น.ส.ประนอม พวงทับทิม', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000180', 'นางปราณี ทับทิมหิน', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000199', 'นางสุรินทร์ ป้อมสาหร่าย', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000208', 'นางเจริญ เม่นชาวนา', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000209', 'นางวีรยา เม่นชาวนา', 'หญิง', '43', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000228', 'นางจี ศรีพูม', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000231', 'น.ส.ลำยงค์ จันทรัพย์', 'หญิง', '45', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000240', 'นางรัตนา กะนันตัง', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000249', 'น.ส.สนม ดีใจงาม', 'หญิง', '39', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000251', 'นางจ้อย สารสมบูรณ์', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000263', 'นางบุญธรรม ใจกล่ำ', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000269', 'นางพเยาว์ สินใหม', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000273', 'นางบุญส่ง มะลิผล', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000293', 'นางพุดซ้อน อนุสาณ์', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000301', 'นางสนม วิชัยรัตน์', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000302', 'น.ส.เสนอ ตลุ่มทอง', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000305', 'น.ส.เจนจิรา ตลุ่มทอง', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000307', 'นางกัลยา ตลุ่มทอง', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000308', 'น.ส.รจนา ตลุ่มทอง', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000318', 'น.ส.เยาวลักษณ์ จันทร์วังทอง', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000324', 'นางบังออน แจ้งชาวนา', 'หญิง', '49', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000333', 'น.ส.เวียง ก้อนมั่นคง', 'หญิง', '38', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000334', 'นางเสวย ก้อนมั่นคง', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000355', 'นางสำอาง สีเคน', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000360', 'นางผัน ฤกษ์พิชัย', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000362', 'นางลิน ฤกษ์พิชัย', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000364', 'นางสอาด ฤกษ์พิชัย', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000378', 'นางลำเพย เผือกเหมือย', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000384', 'นางสุมาลี ราวิล', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000392', 'นางวรรณภา ไชยสิทธ์', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000395', 'นางเตือนตา ราวิลห์', 'หญิง', '48', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000428', 'นางสำราญ รอดมณี', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000432', 'นางรัตนาภรณ์ เตี๋ยมนา', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000442', 'น.ส.กุลปริยา โพธิ์ทอง', 'หญิง', '35', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000446', 'นางกนกอร ทองเรือง', 'หญิง', '45', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000449', 'นางสายฝน ทองชาวนา', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000457', 'นางเพยาว์ ข่มอาวุธ', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000463', 'นางอัจฉรา จันทะเสน', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000471', 'นางตุ๊ มาสีกุก', 'หญิง', '47', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000481', 'นางจำปา มูลนาค', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000485', 'นางสายันต์ บุญชื่น', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000502', 'น.ส.ไสว อินธิจักร', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000506', 'นางน้ำนอง บานเย็นงาม', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000518', 'นางบัวขาว อ้นชาวนา', 'หญิง', '57', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000522', 'น.ส.สุกัญญา อ้นชาวนา', 'หญิง', '36', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000528', 'น.ส.ยุพิน แจ้งชาวนา', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000536', 'นางอำพร ศรีละออ', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000544', 'น.ส.วรินดา เกตุสิงห์สร้อย', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000559', 'นางลัดดา พืชผล', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000564', 'นางละมูล ช่างสอน', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000574', 'นางสุวรรณี มาสีกุก', 'หญิง', '37', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000599', 'นางวรรณ์ดี ไกรกร่ำ', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000628', 'น.ส.นารีรัตน์ กลัดใจบุญ', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000629', 'นางสอาด กลัดใจบุญ', 'หญิง', '51', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000632', 'นางแจ้ว แซ่อุง', 'หญิง', '54', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000638', 'นางสุนทร ธีระแนว', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000646', 'น.ส.จันทร์ บัววังโปร่ง', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000651', 'น.ส.สุกัญญา บัววังโปร่ง', 'หญิง', '34', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000658', 'นางนิติยา เอมพิณ', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000662', 'น.ส.สุรัส แก้วลุน', 'หญิง', '44', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000673', 'นางกลิม บรรดาสุข', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000676', 'น.ส.สุกัญญา บรรดาสุข', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000679', 'นางศรีนวล คชพงษ์', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000681', 'น.ส.เฉลา คชพงษ์', 'หญิง', '50', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000686', 'นางพยับ วิชินา', 'หญิง', '43', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000698', 'นางมะลิ ปานท่าฬ่อ', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000708', 'นางอำไพ ตุ่นลำ', 'หญิง', '38', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000713', 'นางลำพูล มั่งขันหมาก', 'หญิง', '39', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000722', 'นางบรรจง ทับทิมทอง', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000741', 'นางเย็น บัววังโปร่ง', 'หญิง', '49', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000746', 'นางวิวา อ่ำคง', 'หญิง', '50', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000753', 'นางรุ่งอรุณ ประภาเส', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000757', 'นางสวาท บัววังโปร่ง', 'หญิง', '54', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000759', 'น.ส.แสงทวี บัววังโปร่ง', 'หญิง', '33', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000761', 'น.ส.บุญเรือน สาดสี', 'หญิง', '49', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000774', 'นางวันเพ็ญ ปั้นน้ำคู้', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000776', 'นางรินดา จีนบางช้าง', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000783', 'นางละเมียด จีนบางช้าง', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000785', 'นางมะยม จีนบางช้าง', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000790', 'นางน้อย วังชาวนา', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000797', 'นางถาวร แก้วเกษม', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000800', 'น.ส.บุญส่ง มะโดดพัง', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000802', 'น.ส.หวัน พรมเพ็ชร์', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000807', 'น.ส.สุวิมล จีนบางช้าง', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000810', 'น.ส.ดารารัตน์ จีนบางช้าง', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000827', 'น.ส.ลำดวน จีนบางช้าง', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000840', 'น.ส.บุญเตือน หงษ์ทองคำ', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000843', 'นางประจวบ ทองดอนแอ', 'หญิง', '40', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000845', 'นางแดง โพธิ์ศรี', 'หญิง', '58', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000851', 'นางสาวณีย์ เพชรเดช', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000852', 'นางอรพิณ คล้ายท่าโรง', 'หญิง', '30', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000863', 'น.ส.ฐิติกาญจน์ มณีท่าโพธิ์', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000866', 'น.ส.เกษร มณีท่าโพธิ์', 'หญิง', '37', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000872', 'นางเฉลียว ทองดอนคำ', 'หญิง', '43', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000898', 'น.ส.จันทร์แรม บุ้งเครือ', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000903', 'น.ส.สายสุดา บุ้งเครือ', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000944', 'นางสมหมาย โพธิ์ทอง', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000946', 'น.ส.สายบัว คำจัด', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000958', 'นางเดือน ทัดทอง', 'หญิง', '45', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000975', 'นางบางออน ทองดอนคำ', 'หญิง', '43', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000984', 'น.ส.ไข่ ขำประสงค์', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '000988', 'น.ส.สมศรี ศักดิ์สุวรรณ', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001010', 'นางบานเย็น คงอินทร์', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001031', 'นางทิวาพร วิเชียรแสน', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001038', 'น.ส.มาลัย ปานพลอย', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001039', 'นางทองสุข ปานพลอย', 'หญิง', '45', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001046', 'นางมะรี คุ้มสมบัติ', 'หญิง', '54', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001047', 'น.ส.อทิตยา นรัตน์กุล', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001049', 'นางสำเริง นรัตน์กุล', 'หญิง', '54', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001054', 'นางสำราญ หอมหวน', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001056', 'นางสมจิตร ศักดิ์สุวรรณ', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001058', 'น.ส.วิภาพร ศักดิ์สุวรรณ', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001065', 'น.ส.ประจวบ ตามระเบียบ', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001067', 'น.ส.แหวนเพชร ตามระเบียบ', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001075', 'นางสมหมาย มากทรัพย์', 'หญิง', '49', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001102', 'นางสุกัญญา มากทรัพย์', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001108', 'นางสนม สุขบุตร', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001110', 'นางปราณี อุดม', 'หญิง', '44', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001113', 'น.ส.ปานอม สีอ่ำดี', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001116', 'น.ส.น้ำฝน สีอ่ำดี', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001127', 'นางเฉลียว อ่องอร่าม', 'หญิง', '59', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001135', 'น.ส.ทุเรียน ตามระเบียบ', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001137', 'นางทองดำ ตรีวุฒิ', 'หญิง', '48', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001149', 'นางสาวิตรี ทิมกล่ำ', 'หญิง', '32', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001152', 'นางมัสยา ทิมกล่ำ', 'หญิง', '56', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001155', 'นางสุวรรณี ตามระเบียบ', 'หญิง', '40', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001163', 'นางอภิญญา เทียนสมจิตร', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001165', 'นางขวัญใจ ถาวรกูล', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001170', 'น.ส.ขวัญตา ฉิมศิริ', 'หญิง', '37', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001187', 'น.ส.เรียงผา อินทร์ภู่', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001189', 'นางสมหวัง ฤกษ์พิชัย', 'หญิง', '40', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001202', 'นางคำ สอนชาวเรือ', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001208', 'นางน้ำอ้อย สุขจันทร์', 'หญิง', '36', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001212', 'นางกมลรัตน์ ทับทิมทอง', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001215', 'นางพเยา มั่งขันหมาก', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001216', 'น.ส.วราภรณ์ มั่งขันหมาก', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001233', 'นางนกแก้ว อินทร์ทรง', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001234', 'น.ส.วาสนา คล้ายท่าโรง', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001237', 'นางลำยวย เกื้อญาติ', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001241', 'นางลำยอง จานุวี', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001245', 'นางทัศนีย์ เศษผักหวาน', 'หญิง', '44', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001259', 'นางระเบียด เศษผักหวาน', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001265', 'นางสุรีย์พร ศรีบ้านแกร', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001274', 'นางวอน ทับทิมทอง', 'หญิง', '54', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001277', 'น.ส.รัชดา ทับทิมทอง', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001280', 'น.ส.ลำใย จันทร์ตะโหนด', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001290', 'นางอภัสรา ทับทิมทอง', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001322', 'นางละมูล ทองดอนคำ', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001346', 'น.ส.ทองพูน เพ็ชรแก้ว', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001348', 'นางประมวล ป้อมสาหร่าย', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001359', 'นางลำดวน ทัดทอง', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001360', 'น.ส.คนึง สีบุตรา', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001361', 'น.ส.เกษร ภูผาทอง', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001362', 'นางลำเพย สมจันทร์', 'หญิง', '47', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001374', 'น.ส.สมคิด สุขยืนยง', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001377', 'นางติ๋ม ปานพลอย', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001381', 'นางสมบูรณ์ สุขมั่น', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001394', 'น.ส.สาลี่ ธูปหอม', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001407', 'นางนุชนารถ เศษผักหวาน', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001412', 'นางประหยัด เสือชาวนา', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001428', 'น.ส.เสาวรส เสริฐศรี', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001435', 'นางเฉลย บุ้งเครือ', 'หญิง', '49', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001462', 'นางสุนี อาจบึงลำ', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001471', 'นางเสมอ เพ็ชร์แก้ว', 'หญิง', '40', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001493', 'นางสมร ทองประไพ', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001494', 'นางมะลิ อ่อนสี', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001502', 'นางทองหล่อ พ่วงชาวสวน', 'หญิง', '49', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001518', 'นางกิมไล้ แย้มวังทอง', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001530', 'นางยุพิน พลสว่าง', 'หญิง', '46', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001545', 'นางพเยาว์ ฉิมไทย', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001547', 'นางศรีอุไร มณีท่าโพธิ์', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001576', 'นางรุจีวรรณ หลวงประทุม', 'หญิง', '37', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001589', 'น.ส.มารี อ้นชาวนา', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001606', 'นางศรีนวล ฉ่ำชาวนา', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001609', 'นางสำรวย มาสีกุก', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001643', 'น.ส.ใจสวรรค์ นวลตา', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001645', 'น.ส.ลำยวง ทัดทอง', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001648', 'นางวิรัช หงษ์ทองคำ', 'หญิง', '46', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001676', 'นางสนอง สีบุตรา', 'หญิง', '41', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001679', 'น.ส.ขวัญเรือน ใจกล่ำ', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001680', 'นางอุ่นเรือน ศักดิ์สุวรรณ', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001684', 'นางอรุญ ใจกล่ำ', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001685', 'น.ส.น้ำตาล ป้อมสาหร่าย', 'หญิง', '46', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001707', 'นางบุญเชิด พุ่มสุวรรณ์', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001724', 'นางสอิ้ง โพธิ์เงิน', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001731', 'นางมะลิวัลย์ เดชห้วยไผ่', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001735', 'นางพิมพ์ เจริญธัญกร', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001748', 'น.ส.รัชรถ อุบล', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001750', 'น.ส.บุญรอด จีนบางช้าง', 'หญิง', '41', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001761', 'นางสำรวย แจ้งชาวนา', 'หญิง', '57', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001767', 'นางวารุณี ทองน้อย', 'หญิง', '40', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001771', 'น.ส.นิตยาภรณ์ อาจบึงลำ', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001782', 'นางศรีประพัฒน์ ชาติมนตรี', 'หญิง', '35', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001797', 'นางยม เสือชาวนา', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001799', 'น.ส.เฉลา คล้ายท่าโรง', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001800', 'น.ส.เฉลา คุ้มสมบัติ', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001807', 'น.ส.ธมลวรรณ ถาวรกูล', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001824', 'นางบังเอิน สาระสิทธิ์', 'หญิง', '45', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001832', 'นางดารารัตน์ แซ่ลิ้ม', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001841', 'นางฉลาด รอดมณี', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001843', 'นางน้ำอ้อย แก้วบุตร', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001856', 'นางยุพิน หมวดไธสง', 'หญิง', '44', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001857', 'นางยุพิน อ้นชาวนา', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001864', 'นางจำเนียร แก่นท่าตาล', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001875', 'นางประนอม บุญคุ้ม', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001886', 'นางละมัย เนตชาวนา', 'หญิง', '52', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001888', 'นางสวน โตชาวนา', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001894', 'นางชะออม ปานพลอย', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001906', 'นางบุญส่ง โพธิ์เงิน', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001930', 'นางมาลัย ป้อมสาหร่าย', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001969', 'นางปรานอม สุขบุตร', 'หญิง', '53', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001970', 'นางสาคร ปุ๋ยอ่อน', 'หญิง', '50', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001971', 'น.ส.สาริศา ทองสาหร่าย', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001977', 'นางรุ่งฤดี คงกษัตริย์', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001983', 'นางจำปา แจ้งชาวนา', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001984', 'นางอุทัยวรรณ บัววังโปร่ง', 'หญิง', '35', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '001993', 'นางช่วย ไทยอู่', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002011', 'น.ส.มนัสนันท์ หงษ์ทองคำ', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002019', 'น.ส.บุญส่ง ทองชาวนา', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002025', 'น.ส.ทองย้อย สุขโสภา', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002029', 'นางวรีย์ เจริญชนม์', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002037', 'นางย้วย โพธิ์ทอง', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002046', 'นางกำไร นูนอ้น', 'หญิง', '46', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002057', 'นางจารุดา หงษ์พงษ์', 'หญิง', '55', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002062', 'นางศิวิลัย หงษ์ทองคำ', 'หญิง', '46', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002071', 'น.ส.เตี้ย โพธิ์เงิน', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002074', 'นางทับทิม ทับทิมทอง', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002078', 'นางเสมอ โลเลิศ', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002102', 'นางสำรวม พงษ์พานิช', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002138', 'นางบุญมณี ฉ่ำชาวนา', 'หญิง', '40', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002150', 'น.ส.ประนอม ทองป่าหมาก', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002169', 'นางสมบูรณ์ ทองชาวนา', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002174', 'นางจำเนียร ทับทิมทอง', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002175', 'น.ส.อังชัน เจริญธัญกร', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002180', 'นางบุญส่ง ธูปหอม', 'หญิง', '38', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002181', 'นางทิพวรรณ ป้อมสาหร่าย', 'หญิง', '49', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002193', 'น.ส.สุนิษา พงษ์พานิชย์', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002210', 'นางนกน้อย คงสมบัติ', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002211', 'นางลำทวน อ้นเรือนจันทร์', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002212', 'น.ส.สุรีรัตน์ แสงทองคำ', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002213', 'นางปนัดดา มาโพธิ์ชัย', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002214', 'นางลำยงค์ โชคการ', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002217', 'น.ส.ลำเพย แก้วเกษม', 'หญิง', '47', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002226', 'น.ส.อภิษฎา ทับทิมทอง', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002228', 'นางมะลิ หงษ์ทองคำ', 'หญิง', '53', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002235', 'นางสมสาย จุ้ยต่าย', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002238', 'นางประทีป คำเผื่อน', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002244', 'นางสำเริง ฉิมศิริ', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002261', 'น.ส.จุฑาทิพยน์ ธนะศักดิ์สาคร', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002273', 'นางมะละ ม่วงเพ็ชร', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002291', 'นางหนึ่งฤทัย สุวรรณเพชร', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002298', 'นางมะยม เรืองบ้านโคน', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002312', 'น.ส.ลูกชิ้น ขำประสงค์', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002317', 'นางเสมอ ทัดทอง', 'หญิง', '60', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002329', 'นางสมบูรณ์ อ้นชาวนา', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002333', 'น.ส.สุข ศรีบ้านแกร', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002345', 'นางจวน แก่นท่าตาล', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002346', 'น.ส.วรรณี ศรีทอง', 'หญิง', '41', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002368', 'น.ส.จันทนา ประทุมมาศ', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002374', 'นางสำเภา โพธิ์เงิน', 'หญิง', '53', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002383', 'นางสนวน คลี่วงษ์', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002384', 'นางสุรีย์กาญจน์ รอดเพ็ง', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002389', 'นางลำพึง มณีท่าโพธิ์', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002392', 'นางทวี โพธิ์เงิน', 'หญิง', '59', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002405', 'นางสำรวย มั่งขันหมาก', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002406', 'นางไล้ ป้อมสาหร่าย', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002427', 'นางเต็ม ภู่เทศ', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002442', 'นางบังอร พงษ์พานิช', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002454', 'นางมยุรี สังข์รุ่งเรือง', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002459', 'นางสำราญ แก้วเขียวเหลือง', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002465', 'นางสมนึก ป่าเขียว', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002481', 'นางอ้อยใจ พ่วงชาวสวน', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002519', 'นางปาจิม แก้วกำเนิด', 'หญิง', '52', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002520', 'น.ส.วรุณ ป้อมสาหร่าย', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002529', 'น.ส.ปราชญา จันทวงค์', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002566', 'นางน้อย ประทุมมาศ', 'หญิง', '58', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002577', 'นางพยุง ทัดทอง', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002579', 'นางเพยาว์ ชาวเขา', 'หญิง', '56', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002581', 'นางเรียม แก่นท่าตาล', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002596', 'น.ส.รุ้งราวรรณ ทองดอนคำ', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002615', 'นางอำนวย บุญจันทร์', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002617', 'นางคำไพ มากจุ้ย', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002639', 'น.ส.สุมาลี พาลารักษ์', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002641', 'น.ส.สุนัน สีอ่ำดี', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002649', 'นางปิยะนาฏ พลอยดีเลิศ', 'หญิง', '45', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002664', 'นางสวิง พงษ์พานิชย์', 'หญิง', '56', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002674', 'น.ส.ถนอม ทัดทอง', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002685', 'นางประสาทพร ทองสาหร่าย', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002686', 'นางคืน ทองดอนพุ่ม', 'หญิง', '40', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002703', 'นางจำรูญ หอมไทย', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002708', 'นางสุพัตรา ตะเพียนทอง', 'หญิง', '34', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002725', 'น.ส.กนกวรรณ เกตุผักหวาน', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002749', 'นางขวัญตา ดีใจงาม', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002751', 'น.ส.สำเริง ราวิล', 'หญิง', '54', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002755', 'นางเสาวลักษณ์ ป้อมสาหร่าย', 'หญิง', '45', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002778', 'นางสุดใจ มีชัยโย', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002802', 'นางเสมอ โพธิ์ศรี', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002807', 'นางลำยงค์ แสงทองคำ', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002813', 'นางมะลิ ผุยรอด', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002816', 'น.ส.ฉลอง อู่ไทย', 'หญิง', '60', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002819', 'นางเช้า แจ้งชาวนา', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002824', 'นางจิราพร บุญชื่น', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002834', 'น.ส.พรพิมล โพธิ์เงิน', 'หญิง', '47', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002838', 'น.ส.จุฑารัตน์ ทับทิมทอง', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002857', 'น.ส.สาวิตรี พงษ์พานิช', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002878', 'นางวิมลรัช ประสาทชัย', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002883', 'นางลำพอง เจริญธัญกร', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002896', 'น.ส.นุชจรี บุญจันทร์', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002897', 'นางปั้นหยี ประสาทชัย', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002907', 'น.ส.เกษร จันทะเสน', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002911', 'นางเจียม รอดไร', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002913', 'นางกนกพร คำภูษา', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002922', 'น.ส.ชโลธร ชัยเสน', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002929', 'น.ส.สมศรี ชัยแสน', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002946', 'นางนภาพร มาสีกุก', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002971', 'นางวิไล ศักดิ์สุวรรณ', 'หญิง', '47', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002973', 'นางบุญสวย คล้ายท่าโรง', 'หญิง', '44', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002986', 'นางเฉลา ขำน้ำคู้', 'หญิง', '49', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '002987', 'นางลำใย ปานเพ็ชร', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003005', 'นางสาลี่ ทองพูน', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003007', 'นางทองเยื้อ ทองดอนคำ', 'หญิง', '45', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003023', 'น.ส.อัญชลี วสันติวงศ์', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003036', 'นางอารีย์ น้อยเสาธง', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003061', 'นางสมบัติ ดีใจงาม', 'หญิง', '50', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003083', 'นางสุรินทร์ เอี่ยมคำ', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003114', 'นางบุญช่วย คงสุวรรณ์', 'หญิง', '54', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003120', 'นางนาวีรัตน์ ถ้ำห้อย', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003122', 'นางรวีวรรณ สังข์นวล', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003126', 'นางขันเงิน ทับทิมทอง', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003127', 'น.ส.สมจิต ผุยรอด', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003131', 'นางประจิม รอดมณี', 'หญิง', '52', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003133', 'นางเสมียน คงสมบัติ', 'หญิง', '49', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003138', 'นางบุญเริ่ม คลี่วงษ์', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003144', 'น.ส.ฉวี ศรีสุข', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003146', 'นางวัชรี ผุยรอด', 'หญิง', '39', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003150', 'น.ส.พะเยาว์ เม่นชาวนา', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003155', 'น.ส.เกษม ทองชาวนา', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003174', 'น.ส.อำนวย โพธิ์เงิน', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003185', 'นางกิมล้วน ศรีสอาด', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003200', 'นางนีรภา เม่นชาวนา', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003211', 'น.ส.รุ่งทิพย์ ทองสาหร่าย', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003212', 'น.ส.วราภรณ์ รอดทอง', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003222', 'นางมานพ ลี้รักษ์', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003226', 'นางประมวล บุญเพ็ชร', 'หญิง', '45', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003241', 'นางสายลม เพ็งสลุด', 'หญิง', '48', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003261', 'นางบุญล้ำ คลี่วงษ์', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003262', 'นางถนอมจิตร วงษ์จำปา', 'หญิง', '44', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003266', 'นางจรัสศรี ทองป่าหมาก', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003292', 'นางบุญเลี้ยง ปานท่าฬ่อ', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003298', 'นางสาวิพักตร์ ไรยวงษ์', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003315', 'นางลำเจียก คงคิรินทร์', 'หญิง', '54', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003317', 'นางฉวีวรรณ ภู่เทศ', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003324', 'นางสำเรียง แก้วกำเนิด', 'หญิง', '48', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003346', 'นางจรัญ ยอดจันทร์', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003358', 'นางสุนันท์ เจริญธัญกร', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003385', 'นางมงคล ข่มอาวุธ', 'หญิง', '50', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003396', 'น.ส.นิพัทธา ไทยอู่', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003402', 'น.ส.นารินทร์ เม่นชาวนา', 'หญิง', '47', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003411', 'นางลำพัน ป้อมสาหร่าย', 'หญิง', '58', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003417', 'น.ส.วริศรา อ้นชาวนา', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003431', 'นางสมควร ป้อมสาหร่าย', 'หญิง', '58', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003433', 'นางจรินทร์ พงษ์พานิช', 'หญิง', '59', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003437', 'นางสายันต์ แก้วบุตร', 'หญิง', '56', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003440', 'นางคนึง ตามระเบียบ', 'หญิง', '46', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003457', 'น.ส.กวัก เศษผักหวาน', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003461', 'นางเอื้อมพร ศรีพระจันทร์', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003482', 'นางฉ่ายมิ คุ้มสมบัติ', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003493', 'น.ส.สนม โตชาวนา', 'หญิง', '58', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003501', 'นางเพ็ญ คล้ายท่าโรง', 'หญิง', '49', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003506', 'น.ส.ฉันทนา อ้นชาวนา', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003511', 'นางลำจง มากทรัพย์', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003514', 'นางมณฑาทิพย์ หมีบ้านใหม่', 'หญิง', '44', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003533', 'นางมณีรัตน์ ฝอยทอง', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003562', 'นางเต็ม วรมาลี', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003564', 'นางอ่อนตา จินโจ', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003586', 'นางลำเจียร มั่งขันหมาก', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003590', 'นางภัควัน กาญจนาพัชร', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003597', 'นางใยบัว จินโจ', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003601', 'นางยุพา แสงสุวรรณ์', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003602', 'น.ส.สวิง กล่อมบาง', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003621', 'น.ส.สำลี พ่วงชาวสวน', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003637', 'น.ส.ขวัญเรือน อยู่คล้าย', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003642', 'นางจำลอง อ้นชาวนา', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003643', 'นางบุญเลี้ยง อ้นชาวนา', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003653', 'น.ส.นิตยา โพธิ์เงิน', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003696', 'นางจุฑามาศ ทับทิมทอง', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003722', 'นางอันชัน คุ้มสมบัติ', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003725', 'นางฟู ธูปประกายศรี', 'หญิง', '57', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003754', 'นางแสงเดือน ศรีสอาด', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003793', 'นางจำเนียร พุ่มสุวรรณ์', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003794', 'นางสำรวย สายหยุด', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003802', 'น.ส.สมควร พาลเสือ', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003808', 'น.ส.กรุณา วรมาลี', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003812', 'นางสมหวัง เศษผักหวาน', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003815', 'น.ส.วิฑูรย์ ไกรกล่ำ', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003836', 'นางฉลวย บุ้งเครือ', 'หญิง', '57', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003861', 'นางบังอร ประสาทชัย', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003865', 'นางบังอร วสันติวงศ์', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003889', 'นางวาสนา รอดทอง', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003905', 'น.ส.นวพรรษ โพธิ์เงิน', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003913', 'น.ส.วันเสาร์ คล้ายท่าโรง', 'หญิง', '44', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003915', 'นางยมโดย แซ่ล้อ', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003919', 'น.ส.รัตตีรส พงษ์พานิช', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003944', 'น.ส.สรารัตน์ ป้อมสาหร่าย', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003951', 'น.ส.บังอร แย้มทัด', 'หญิง', '58', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003959', 'นางสำเริง พุ่มสุวรรณ', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003971', 'น.ส.ประวิง พงษ์พานิช', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003980', 'นางศันสนีย์ วสันติวงศ์', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003983', 'น.ส.ประภา วิเชียรแสน', 'หญิง', '46', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003991', 'น.ส.สมใจ ใจงาม', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '003992', 'นางสายหยุด ปานท่าฬ่อ', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '004009', 'นางบังอร ถาวรกูล', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '004013', 'นางสิน พลอยดีเลิศ', 'หญิง', '56', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '004015', 'นางหย่ง เม่นชาวนา', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '004019', 'นางวรรณา น้อยเสาธง', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '004023', 'นางมะลิ หงษ์ทองคำ', 'หญิง', '50', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '004032', 'น.ส.สมจิตร ฤกษ์พิชัย', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '004049', 'นางสำรวย ไหมเอี่ยม', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '004050', 'นางเจียม คล้ายท่าโรง', 'หญิง', '48', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '004051', 'นางทองเรียน แสนสอาด', 'หญิง', '46', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '004061', 'นางน้อย ตามระเบียบ', 'หญิง', '50', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '004074', 'นางรุ่งทิพย์ ราวิล', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '004075', 'น.ส.ดวงพร คงกษัตริย์', 'หญิง', '53', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '004079', 'นางรุ่งทิพย์ เทียนสมจิตร', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '004119', 'น.ส.แต๋ว หมื่นจันทร์', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '004150', 'น.ส.สมศรี ปานพลอย', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '004151', 'น.ส.ปณิตนันท์ ปานพลอย', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '004157', 'น.ส.วิไลรัตน์ โสภาฉัตร์', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '004180', 'นางโสภาพร อินทรีย์', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '004198', 'นางนวรัตน์ โรเบิร์ตสัน', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '004204', 'น.ส.สุนทรี ศรีสอาด', 'หญิง', '32', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '004215', 'นางอำนวย ฝอยทอง', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '004226', 'น.ส.เพ็ญสี โพธิ์ทอง', 'หญิง', '46', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '004228', 'นางสุกัญญา คล้ายท่าโรง', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '004241', 'น.ส.อุ่นเรือน ร่มกลาง', 'หญิง', '39', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '004259', 'นางสุปราณี ทับทิมทอง', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '004264', 'นางนาถอนงค์ กลิ่นถือศีล', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '004286', 'น.ส.ไพรสรรพ์ น้อยสุข', 'หญิง', '44', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '004308', 'นางสุวารี จีนบางช้าง', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '004342', 'นางกัณหา เมฆประดับ', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '004387', 'นางสุกัญญา สังทองรัมย์', 'หญิง', '53', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '004480', 'นางจิ๋ม ฉิมศิริ', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '004539', 'นางกัลยา พันธุลี', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '004565', 'น.ส.สำรวย ทองพูล', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '004820', 'นางไพศรี มาสีกุก', 'หญิง', '41', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '004851', 'นางมาลี บุญชื่น', 'หญิง', '38', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '004858', 'นางลำพรรณ ขุนจำนวน', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '004871', 'น.ส.นิตยา บุญบิดา', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '004897', 'น.ส.สำเริง อ้นชาวนา', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '004900', 'น.ส.กาญจนา พันศิริ', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '004946', 'นางทองเมี้ยน คงกระพันธ์', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '004993', 'น.ส.สวน บุญแต่ง', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '005058', 'นางนงคราม เขียวทอง', 'หญิง', '51', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '005069', 'น.ส.เปรมฤทัย สีบุตรา', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '005082', 'นางบุญเรือน ตะวงษ์', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07551', '005101', 'นางสละ ชมชื่น', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000005', 'นางอุบล กลิ่นบุญ', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000008', 'น.ส.บุญเหลือ พรมรัตน์', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000013', 'นางวิเชียร แสงสว่าง', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000040', 'นางลำใย ใจมั่น', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000043', 'น.ส.น้ำค้าง เครือเช้า', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000049', 'นางเนียง ใยลำยวง', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000051', 'นางสายพิน บุญคง', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000070', 'น.ส.สวย คำดี', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000071', 'น.ส.พิศสมร ขำมัด', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000083', 'น.ส.สุชาดา ขาวเอี่ยม', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000090', 'นางเตือนใจ รักสนุก', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000098', 'น.ส.สำรวย วงษาโรจน์', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000108', 'น.ส.สุปราณี พงษ์พานิช', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000109', 'น.ส.อุบล ชุนแจ่ม', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000110', 'น.ส.ไพเราะ เรืองจุ้ย', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000125', 'นางยุพิน รุ่งอินทร์', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000136', 'น.ส.จิราพร ตุระพงษ์', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000146', 'นางคนึง เทียนขำ', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000149', 'นางลำพูน ทับทิม', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000151', 'นางหวานใจ สุระสังข์', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000157', 'นางวาสนา วงษ์วรรณ์', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000164', 'นางมลิ ช่วงชิด', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000173', 'น.ส.นวลจันทร์ ช้างพงษ์', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000179', 'นางธนพร ศรีอรุณ', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000187', 'น.ส.ทะวาย นุ่นโฉม', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000195', 'น.ส.ช่วง บุญน้อยกูล', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000206', 'นางบุญล้อม แป้นทอง', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000210', 'น.ส.รัตนาภรณ์ แป้นทอง', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000233', 'นางพรทิพย์ บุญชู', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000238', 'น.ส.สุภาพ ทองดอนน้อย', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000249', 'นางบังอร บัววังโป่ง', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000260', 'นางติ๋ม เชียงลา', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000264', 'นางพิรม ชาวด่านซ้าย', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000282', 'นางปิยะมาศ ทับพันธ์', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000286', 'น.ส.วรรณา พรมรัตน์', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000313', 'นางอำพัน ศรีพรม', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000318', 'นางจุรีรัตน์ ภู่ขาว', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000337', 'น.ส.สร้อย จันทร์ศรี', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000339', 'นางทวี กระดังงา', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000387', 'น.ส.สุรีรัตน์ จันแดง', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000390', 'นางนิติยา ชัยเพชร', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000398', 'นางมณี อ้นชาวนา', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000403', 'นางนพพร เป้าเลี้ยง', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000405', 'น.ส.อำนวย บุญจันทร์', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000409', 'น.ส.ชูศรี ชำนาญผา', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000411', 'นางปาน พินิจ', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000423', 'น.ส.สุภาภรณ์ มังฆะตะ', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000427', 'นางฉลวย สุขอ่ำ', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000429', 'นางวิมล บริหาร', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000430', 'นางละม่อม ชุนแจ่ม', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000431', 'นางสมใจ พ่วงชาวสวน', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000432', 'นางเครือ เทียนขำ', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000455', 'นางน้อย ธูปชาวนา', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000459', 'นางอารีย์ วิลัยเลิศ', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000470', 'นางละเอียด สุขบุตร', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000476', 'นางปราณี รักษาชน', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000477', 'น.ส.จิรภัทร ศรีพระจันทร์', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000482', 'นางทิพวรรณ ดลราษี', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000506', 'นางถวิล กระดังงา', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000523', 'นางจำรัตน์ กลิ่นหอม', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000524', 'น.ส.ดอกอ้อ หนุนหนองถ้ำ', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000527', 'น.ส.ละออ จันแดง', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000533', 'น.ส.ประนอม ศรีพระจันทร์', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000535', 'น.ส.สมควร ขุนจำนงค์ภักดิ์', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000539', 'นางติ๋ม เล็กจำปี', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000552', 'น.ส.สนอง เพ็งผล', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000602', 'น.ส.แจ้ว ป้อมสาหร่าย', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000604', 'นางอุ่นเรือน คันภิรมย์', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000610', 'น.ส.สวาสดิ์ ปู่จันทร์', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000616', 'น.ส.ชุติพันธุ์ บุญนำแสง', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000618', 'น.ส.ระเบียบ สินใหม', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000627', 'นางสุณี แช่มชื่น', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000632', 'นางปาริสา จักรแก้ว', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000646', 'นางยุพา แสงสว่าง', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000649', 'น.ส.วรรณวิษา รุจิฉาย', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000652', 'น.ส.นิสา ธรรมะ', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000663', 'น.ส.เกษร กองเต๊ก', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000674', 'นางประไพ แจ้งใจ', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000679', 'นางสมจิตร เครือเช้า', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000683', 'น.ส.ชุลีกร อ่อนสมบูรณ์', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000720', 'นางสำรวย พงษ์พานิช', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000723', 'นางทองหล่อ ชุมพร', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000728', 'นางยุพิน ศรีพรม', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000729', 'นางนพวรรณ พูนบ้านแขก', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000735', 'นางสำเริง ใจงาม', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000739', 'นางมณี ศรีพระจันทร์', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000740', 'นางละออ ตุ้มประสิทธิ์', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000750', 'นางบุญมา จาดเสาธง', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000761', 'นางดวง คงสมบัติ', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000786', 'น.ส.นาตยา แสงทอง', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000796', 'น.ส.วลัยภรณ์ อ่อนสมบูรณ์', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000809', 'น.ส.พนิดา เจียมจำเริญ', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000819', 'นางละออง เชื้อดี', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000830', 'นางบังอร ใจงาม', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000831', 'นางประสิทธิ์ พุฒฟัก', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000834', 'น.ส.อัมพร ชุนแจ่ม', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000835', 'นางบุญเตือน ทองฟอง', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000836', 'นางกุหลาบ จาดเสาธง', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000839', 'น.ส.สมใจ เรืองทิม', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000847', 'นางแดง บุญเตาอิฐ', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000849', 'น.ส.วันทนา เสือชาวนา', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000858', 'น.ส.ไสว นงนุช', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000865', 'น.ส.หนูเจน บุญเมือง', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000868', 'นางแดงอร ทองอุบล', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000876', 'นางณิชารีย์ หนูท่านา', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000888', 'นางเอมอร เรืองงาม', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000906', 'น.ส.คิม ฟักทอง', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000908', 'นางลำเจียก แสนลา', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000919', 'นางทองห่อ จันทร์ทวน', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000928', 'น.ส.สุรินทร์ คุณเฉย', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000930', 'นางอุษา จ้อยจันทร์', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000932', 'นางจินตนา อยู่ก้อน', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000940', 'นางพนมวรรณ เจริญภาพ', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000973', 'นางวราภรณ์ เพ็งผล', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '000998', 'นางมุกดา จันแดง', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001000', 'น.ส.มาลี สกุลแก้ว', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001032', 'นางเพ็ญ รอดอินทร์', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001063', 'น.ส.วิลาวัลย์ สุขยิ่ง', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001079', 'น.ส.พยอม สวยกำปัง', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001088', 'น.ส.ศิริกัญญา รอดเลิศ', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001097', 'นางบุษดี ขุนจำนงค์ภักดิ์', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001101', 'น.ส.สำราญ อินทร์ขาว', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001125', 'น.ส.นัตฐพร สกุลแก้ว', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001127', 'นางมณี ศรีคำ', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001128', 'นางระยับ ทองชาวนา', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001130', 'นางรั้ง ใยลำยวง', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001147', 'น.ส.สุนิสา บรรพบุตร', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001155', 'นางบังอร ทรัพย์พานะ', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001176', 'นางน้ำฝน ช่วงชิด', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001178', 'นางบังอร เจริญรัตน์', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001197', 'นางเปลว ใจงาม', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001202', 'นางบอย ไทยตรง', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001205', 'นางวิไลรัตน์ ทัดเที่ยง', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001206', 'น.ส.ณัชริณ ชัยโย', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001235', 'นางนิยม จันทวงษ์', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001246', 'นางสมัย ฟักแสง', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001249', 'นางพราหม เพิ่มพูนสัจจา', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001253', 'นางสาคร เทียนสันจร', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001260', 'นางกุหลาบ บัวนวล', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001272', 'นางชุติมณฑน์ สีแดง', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001277', 'นางพะยอม ชาวพิจิตร', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001301', 'นางนิตยา สีบุญ', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001304', 'นางน้อย สารวิก', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001315', 'น.ส.ราตรี ชอนบุรี', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001336', 'นางส้มลิ้ม อินทโชติ', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001348', 'น.ส.สายฝน ป้อมสาหร่าย', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001358', 'นางประนอม แซ่เหลี่ยม', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001366', 'นางสุชิน ศิลางาม', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001368', 'น.ส.สำรวย รักสนุก', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001390', 'นางนงลักษณ์ ใจงาม', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001400', 'นางสุกฤตา แสงสว่าง', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001407', 'นางสำราญ เจริญภาพ', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001413', 'นางบาง รุ่งฉัตร', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001456', 'นางชูชีพ เชิดเชื้อ', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001463', 'นางสุรินทร์ เที่ยงทอง', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001473', 'นางเย็น เทียนขำ', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001484', 'นางหลวน สารวิก', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001509', 'นางมานิตย์ ทับทิม', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001531', 'น.ส.ละเอียด โพธิ์นวม', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001561', 'นางขวัญเรือน เจริญภาพ', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001562', 'น.ส.สุจิตรา จันทร์สว่าง', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001573', 'น.ส.สำอาง ปู่จันทร์', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001584', 'นางยุพิน ใจอารีย์', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001603', 'นางสุนัน กระดังงา', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001611', 'น.ส.ประนอม ขุนจำนงค์ภักดิ์', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001618', 'นางเบ็ญจมาศ ทองมาเอง', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001621', 'นางวันดี ละม้ายเมือง', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001623', 'น.ส.จรรยพร เรืองจุ้ย', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001627', 'น.ส.วาสนา ประสาทชัย', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001631', 'นางวัลนา โรจน์อำพร', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001633', 'นางฉลวย หนูท่านา', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001635', 'นางสำเริง กลิ่นหอม', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001637', 'นางลำเพย ทองรุ่ง', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001644', 'นางรัตนา สิมมะลี', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001645', 'นางทิพวรรณ พงษ์พานิช', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001676', 'นางสมคิด อ้นชาวนา', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001708', 'นางกินรี โคกทอง', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001714', 'นางสมบัติ เครือเช้า', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001715', 'นางสาลี่ สีดี', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001716', 'น.ส.พยุง ถิ่นสุข', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001739', 'นางสุนิสา บุญพรหม', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001767', 'น.ส.อรวรรณ เทพทอง', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001775', 'น.ส.พนิดา แข็งแรง', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001782', 'นางปัฐมา สร้อยชื่น', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001787', 'นางเกสรา อินทรชิต', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001789', 'นางบุญเยือน เปลี่ยนเนียม', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001799', 'นางฉวี บุญรอด', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001803', 'นางมะลิ ทิพมนต์', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001806', 'น.ส.นิตย์สลา ศิลางาม', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001839', 'น.ส.ทุเรียน อยู่ก้อน', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001841', 'น.ส.แตงอ่อน ไรยวงษ์', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001842', 'นางสมคิด ชาชาวนา', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001843', 'นางสำเริง พงษ์ประพันธ์', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001847', 'น.ส.นพรัตน์ จันชาวนา', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001851', 'นางชูศรี องค์อาจ', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001856', 'นางบังอร มีชื่อ', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001864', 'นางสมบูรณ์ คำถมชู', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001874', 'นางล้อม สีแดง', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001901', 'น.ส.ประเทือง แสงโสด', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001903', 'นางสุเพ็ญ เจียมจำเริญ', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001907', 'น.ส.มะลิ สีดี', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001960', 'นางนกเล็ก คำมูล', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001963', 'น.ส.นิตยา ทองภักดี', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001968', 'น.ส.บุญเตือน หนูหอม', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001975', 'นางสำเริง ยืนยาว', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001981', 'น.ส.ประดิษฐ์ ผันวิลัย', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001991', 'นางสนิท โคกทอง', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '001995', 'นางวิธาน พุ่มเพชรสา', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002008', 'นางน้ำผึ้ง ผิวงาม', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002020', 'นางพวงเพชร จันทรแดง', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002023', 'นางบังอร มากทรัพย์', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002038', 'นางละม่อม ป่าเขียว', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002052', 'นางอัญธิกา แดงชาวนา', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002065', 'น.ส.รพีพรรณ แก่นท่าตาล', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002067', 'นางน้ำค้าง ฤกษ์พิชัย', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002075', 'น.ส.สุกัญญา อินทนู', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002100', 'น.ส.ยุพา ป้อมสาหร่าย', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002118', 'นางนารีรัตน์ อาดชาวนา', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002126', 'นางศรีนวล เขือนอก', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002134', 'นางสำเนียง คลี่วงษ์', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002143', 'นางบุญส่ง สีสม', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002157', 'น.ส.สำรวม แต้มทอง', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002169', 'นางจินดา บุบผา', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002178', 'น.ส.เฉลา จันแดง', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002185', 'น.ส.แสงเดือน ละม้ายเมือง', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002204', 'นางดารัณ หนูท่านา', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002232', 'นางถวิล ใจงาม', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002237', 'นางชำนาญ ชาวพิจิตร', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002252', 'น.ส.ประจวบ ละม้ายเมือง', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002254', 'น.ส.นงรัก วงษาโรจน์', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002259', 'นางจันแรม ช่วงชิด', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002264', 'นางทอง อินทรชิต', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002275', 'นางวิรัตน เทพทอง', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002285', 'น.ส.รุ่งนภา บุญชู', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002303', 'นางนพรี ไชยรัตน์', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002315', 'นางสมพิศ แดงชาวนา', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002328', 'นางบุษบา ฟูจันทร์ใหม่', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002331', 'นางชูศรี ศรีพระจันทร์', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002348', 'นางบุญเรื่อง อ้นชาวนา', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002358', 'นางสะอาด ทับทิม', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002359', 'นางสาคร อ้นชาวนา', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002365', 'นางมยุเรศ พุฒฟัก', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002373', 'นางอุษณี เกิดแก้ว', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002382', 'นางกัญลยา กระดังงา', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002386', 'นางเสนาะ ฟักแสง', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002395', 'นางประทวน ขุนจำนงค์ภักดิ์', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002422', 'นางประเทือง เจิมจันทร์', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002427', 'นางยุพิน พวกน้อย', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002433', 'นางศรีนวล ฉัตรพันธ์', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002439', 'นางอำนวย นาคทอง', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002458', 'นางขวัญเวียง มากทรัพย์', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002479', 'นางทุเรียน ขำหรุ่น', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002482', 'นางน้ำฝน ปิ่นกระจาย', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002499', 'นางแผ้วพันธ์ ทับพันธ์', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002501', 'น.ส.สมจิตร เรืองทิม', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002507', 'นางสำอางค์ พินิจ', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002534', 'นางทองดำ เพ็งผล', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002541', 'นางบุบผา ชะนะมา', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002543', 'นางปอน เครือสุวรรณ์', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002545', 'นางสมคิด ขุนจำนงค์ภักดิ์', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002549', 'นางสุจิน พวงเจริญ', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002555', 'นางสอน อ่อนดี', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002563', 'นางมลิ แจ้งใจ', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002566', 'น.ส.สมจิตร เพ็งผล', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002568', 'นางอนงค์ คงเมือง', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002581', 'นางนิสา ป่าเขียว', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002588', 'นางเพ็ญ นุ้ยวังทอง', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002621', 'นางสำเภา ช่วงชิต', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002645', 'นางถนอม สมรา', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002659', 'น.ส.ฉันทนา การะเกตุ', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002662', 'น.ส.น้ำทิพย์ วิวัฒน์', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002679', 'น.ส.สุพรรษา อ่ำกำเนิด', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002680', 'นางสีนวล แก้วกาหลง', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002683', 'นางกาหลง ด้วงวงษ์', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002685', 'นางสำเริง สารวิก', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002698', 'นางสมาน ละม้ายเมือง', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002702', 'น.ส.สำรวย จันทร์จอม', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002727', 'น.ส.นภาพร สุทธิพันธ์', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002739', 'นางสำอาง เรืองจุ้ย', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002746', 'นางอารี ทับทิม', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002759', 'นางจอม มั่งคั่ง', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002772', 'นางอมรา ยกให้', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002776', 'นางน้ำเชื่อม ใจงาม', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002786', 'นางสมจิตร ตุระพงษ์', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002787', 'นางระเบียบ มั่งคั่ง', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002790', 'นางสำเนา พินิจ', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002799', 'นางพรทิพย์ สารผล', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002808', 'น.ส.คนึง จันทุดม', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002818', 'นางสมปอง พันธ์เพียร', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002822', 'นางใกล้รุ่ง พันธ์แจ่ม', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002829', 'น.ส.อุไร เอี่ยงรับ', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002835', 'น.ส.สนวน เรืองจุ้ย', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002837', 'นางมน เสือชาวนา', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002848', 'น.ส.พรรณจำ แสงทอง', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002861', 'นางสุทิน สร้อยสี', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002862', 'นางยุพิน คงทับ', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002869', 'น.ส.ศศิธร ศรแก้ว', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002870', 'นางพานรอง เภากลิ่น', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002872', 'นางสำอางค์ เชิดชู', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002877', 'น.ส.ธนพรรณ อ่อนดี', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002880', 'นางลมูล บรรพบุตร', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002899', 'นางแดง เจริญรัตน์', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002905', 'นางจิราภา มิ่งโมรี', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002911', 'นางสำรวย เพ็งผล', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002915', 'นางชลอ ทับทิม', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002916', 'นางประทีป รุ่งอินทร์', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002922', 'นางมุกดา กวางแก้ว', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002938', 'น.ส.วิรัตน์ มณีท่าโพธิ์', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002943', 'นางมาลา ใจซื่อ', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002955', 'นางเจนจิรา บุตรหวาน', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002968', 'นางวันเพ็ญ รักสนุก', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002970', 'น.ส.เฉลิม ทับทิม', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002979', 'นางบุญเรือน ฮีลลีย์', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002981', 'นางดอกฟ้า จันชาวนา', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002984', 'นางสมคิด รุ่งจันทร์', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002985', 'นางติ๋ม สาระขวัญ', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002986', 'นางแหวน ชูเพชร', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '002987', 'น.ส.ธนพร ธูปชาวนา', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003016', 'นางฉลวย สีแดง', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003026', 'น.ส.บำรุง กลิ่นแย้ม', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003028', 'น.ส.สมบุญ สอนชาวเรือ', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003031', 'นางตุ่น ภู่ขาว', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003044', 'นางเพยาว์ นาคอัง', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003051', 'นางสังวาลย์ กระดังงา', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003061', 'นางเฉลา น้อยกูล', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003067', 'นางหวั่น สุกกลำ', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003068', 'นางละเมียด ใจดี', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003078', 'นางอโณทัย เจือโร่ง', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003080', 'นางกุหลาบ ก๊กเครือ', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003083', 'นางอารี เทียนขำ', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003093', 'น.ส.ชวนชม พูนทอง', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003113', 'นางลำดวน ทะคำหาร', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003116', 'นางวิไลรัตน์ ขวดจันทร์', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003118', 'น.ส.พัทธิยา ดีบ้านคลอง', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003133', 'นางสุกัญญา สีนวน', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003161', 'น.ส.ทองดี คงทิพย์', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003162', 'นางสำราญ อ่อนดี', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003168', 'นางใหมทอง เขตพิจิตร', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003169', 'นางยุวดี พินิจ', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003187', 'น.ส.วิไล ชูใส', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003201', 'น.ส.วันเพ็ญ เอกทวานนท์', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003206', 'นางสุนันท์ คำมูล', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003213', 'นางกิ่งดาว พินิจ', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003221', 'น.ส.สมพิศ ชาติคนา', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003232', 'น.ส.สุพรรณิการ์ ตุ้มประสิทธิ์', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003259', 'นางดอน ยอดพายุ', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003261', 'นางสุชาดา ใจซื่อ', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003264', 'นางอำพร รูปโฉม', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003268', 'น.ส.ระเบียบ ฤกษ์พิชัย', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003305', 'น.ส.ลัดดา สีดาคำ', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003323', 'นางหอมจัน เรืองจุ้ย', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003326', 'นางเกษร ใจตรงดี', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003327', 'น.ส.นาขวัญ ทองมา', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003337', 'นางยุพิน ชะนะมา', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003345', 'นางแจ๋ว ทองคำอ่วม', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003382', 'นางวิมล พินิจ', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003386', 'นางทองบล พุฒฟัก', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003392', 'นางบุญมา ปานันท์', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003395', 'น.ส.สุกัลยา เชิดเชื้อ', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003404', 'นางอำพร คงเนียม', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003408', 'น.ส.สายชล นุ่นโฉม', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003412', 'นางเจียร สินอำพล', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003431', 'นางนภัสสร โคกทอง', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003434', 'นางสุกัลยา เจริญภาพ', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003457', 'นางกุหลาบ แก้วศรี', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003458', 'นางมะนิสา มากทรัพย์', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003463', 'นางเทียม อ้นชาวนา', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003487', 'นางผ่องศรี เทพทอง', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003533', 'น.ส.สุกัญญา เกตุศรีบุรินทร์', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003549', 'นางสำเริง หอมเจริญ', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003552', 'นางระย้า บัวลอย', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003564', 'น.ส.จำปา ตุ่นพรม', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003566', 'นางบัวลอย อินทโชติ', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003582', 'นางสุรินทร์ เสนะจำนงค์', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003611', 'น.ส.น้ำผึ้ง นาคอัง', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003618', 'นางชูศรี อยู่ประดับ', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003627', 'น.ส.มาลัย เผด็มรอด', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003642', 'นางจิ๋ว ใจประดิษฐ์', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003653', 'นางยม แก้วนนท์', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003655', 'นางลัดดา เครือเช้า', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003665', 'นางสมบัติ เรืองจุ้ย', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003678', 'นางรันทม หลำวิไล', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003681', 'นางศิริลักษณ์ กระดังงา', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003689', 'น.ส.หนูแดง แสงสว่าง', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003697', 'น.ส.ปรานอม เปลี่ยนเนียม', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003701', 'นางอำพร ทับทิม', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003712', 'นางบุญเจือ ใยลำยวง', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003737', 'น.ส.หอม เครือเช้า', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003743', 'น.ส.อุดมพร คำทอน', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003753', 'น.ส.ปณิชตา นันทะสังข์', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003754', 'น.ส.ยุพา แจ้งใจ', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003755', 'นางสมปอง เนตรสุนทร', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003760', 'น.ส.ลำยวง ชาวเขา', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003797', 'นางสมคิด บุญรอด', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003804', 'นางสุภาวดี ดีวงศ์ตระกูล', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003808', 'นางบุญศรี แดงชาวนา', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003821', 'นางมารีย์ จิตเอี่ยม', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003840', 'นางสนม ชาชาวนา', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003846', 'นางอ้อย ใยลำยวง', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003859', 'นางอัมริน สวยสะสอาด', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003862', 'นางวิภา เกตุชนะ', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003871', 'น.ส.จันฉายสุนี จันทร์จอม', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003873', 'นางนวลละออ ศรีพรม', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003875', 'น.ส.กุหลาบ คำเผื่อน', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003879', 'นางสายบัว ภู่ขาว', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003899', 'นางลูกหว้า ยิ้มเลี้ยง', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003902', 'น.ส.ระเบียบ สร้อยเซียน', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003921', 'นางประนอม รุจิฉาย', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003931', 'นางสุพรรณี แก้วพระอินทร์', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003946', 'น.ส.ฉลวย ทองมาเอง', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003962', 'น.ส.เพลิน ตุ้มสุข', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003979', 'น.ส.บุญเลี้ยง เพ็งผล', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '003999', 'นางสุภาพ อบหอม', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004000', 'นางสำฤทธิ์ สีแดง', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004016', 'น.ส.รวม ใจงาม', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004024', 'นางบุญจริง เรืองจุ้ย', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004041', 'น.ส.เด่น บัวนวล', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004046', 'น.ส.รัง ใจงาม', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004060', 'นางประคลอง เรืองจุ้ย', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004068', 'นางศรีนวล อ่ำบางกระทุ่ม', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004072', 'นางอนงค์ แซ่เลี่ยม', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004077', 'น.ส.เล็ก หนูหอม', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004097', 'น.ส.สัมฤทธิ์ พงษ์ประพันธ์', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004101', 'นางบุญสม ทองป่าหมาก', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004102', 'นางบัวหลวง คำเผื่อน', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004105', 'นางสุดา บัวลอย', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004106', 'น.ส.ชลอ บุญชาวนา', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004115', 'น.ส.ภัทราพร ใจซื่อ', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004154', 'นางเพ็ญศรี สุขนาค', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004197', 'นางพยับ ตะก้อง', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004199', 'นางแก้ว บุญจันทร์', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004207', 'น.ส.สวาท หนูหอม', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004210', 'นางสายฝน ศรีพรม', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004217', 'น.ส.บังอร วุ่นเฮง', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004221', 'นางสมศรี เพ็ชรสุม', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004224', 'น.ส.ฉวี นุ่นโฉม', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004227', 'น.ส.จรรย์ณธร เจริญภาพ', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004230', 'นางอุทัย สะริ', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004239', 'นางประคอง บานเย็นงาม', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004242', 'นางอำไพ ดิษฐ์ชาวนา', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004255', 'นางบุญส่ง วรเกิด', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004279', 'นางบุญชู เม่นชาวนา', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004281', 'นางสายพิน จูม่วง', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004283', 'นางเสนอ จิตต์ประวัติ', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004295', 'น.ส.วรรณา พินิจ', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004302', 'นางเกยูร ทองเพ็ง', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004322', 'นางน้ำฝน ธรรมพิทักษ์เดช', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004332', 'นางประไพ เหลี่ยมสุพรรณ', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004335', 'นางปริศนา ลาภเจริญ', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004354', 'นางนิด ชำนาญผา', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004355', 'น.ส.ญวนใจ ใชยรักษ์', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004369', 'นางสำราญ ชุมพรผ่อง', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004371', 'น.ส.สุรีรัตน์ มีศิริ', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004396', 'นางชลอ ทับทิม', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004409', 'นางบุญเรือน บุญนำแสง', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004413', 'นางรัชนี บุญจันทร์', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004414', 'น.ส.ร่วมคิด โพธิกุล', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004422', 'นางสำรวย เผ่ากลิ่น', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004430', 'น.ส.ชะโลม เจือโร่ง', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004431', 'น.ส.ล้วน คำเผื่อน', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004440', 'นางสำราญ ใจอารีย์', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004448', 'นางยุพิน ยาทา', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004453', 'นางสมัย สอนชาวเรือ', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004457', 'นางประสงค์ เซ็งปั่น', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004473', 'นางแดง แจ้งใจ', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004478', 'น.ส.ทุเรียน วงค์ทอง', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004483', 'นางวาสนา อาทิจร', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004494', 'น.ส.สุนัน ทองรุ่ง', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004497', 'น.ส.ปิยนันท์ บุญนำแสง', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004514', 'น.ส.รัษณี ชาวพิจิตร', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004521', 'นางยุพยงค์ จันภิลม', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004538', 'น.ส.กรุณี อ้นชาวนา', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004558', 'น.ส.มานิตย์ ขวดจันทร์', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004565', 'น.ส.สายชล หมีลำพอง', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004567', 'นางสุธินี เพ็งผล', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004574', 'นางมาลี เวิดปาน', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004591', 'นางวรรณา กองวุฒิ', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004604', 'นางศิริพร วงศ์วนากุล', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004646', 'นางเสนอ แปลกเงิน', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004658', 'น.ส.กาญจนา โคกทอง', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004670', 'นางสอิ้ง คงทอง', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004675', 'นางสำอางค์ เพ็ชรอำไพ', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004691', 'น.ส.ทับทิม ศิลางาม', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004694', 'น.ส.สุกัญญา ชื่นภิรมย์', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004709', 'นางสมบูรณ์ สารวิก', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004716', 'นางสังวาลย์ เจิมจันทร์', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004734', 'นางดอกไม้ ใจดี', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004749', 'น.ส.อรวรรณ จินดา', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004751', 'นางนกเล็ก เที่ยงทอง', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004752', 'นางอำนวย กันหา', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004754', 'นางละเอียด คนคล่อง', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004757', 'นางลมัย หนุนหนองถ้ำ', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004758', 'นางสำราญ คานงาม', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004778', 'นางถวิล เสือชาวนา', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004784', 'นางวิไล หนูท่านา', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004799', 'นางจำปี เพ็ชรอำไพ', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004802', 'น.ส.มุด ขวดจันทร์', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004823', 'นางกิมหง่อ เที่ยงทอง', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004834', 'น.ส.ศศินีย์ เจือโร่ง', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004850', 'น.ส.อัญชนา ชาชาวนา', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004870', 'นางบุญช่วย มั่งคั่ง', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004875', 'นางเฉลี่ย ศรีวุธ', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004879', 'นางเพียงใจ เรืองจุ้ย', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004885', 'นางฉลอง ฤกษ์พิชัย', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004909', 'นางพัชรินทร์ พงษ์พานิช', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004912', 'น.ส.ศิริพร คำทอน', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004967', 'นางสายหยุด ทองภักดี', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004980', 'นางบุญมี เรืองจุ้ย', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '004985', 'น.ส.สุกัลยา บรรพบุตร', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005002', 'นางตุ๊ดตู่ เพ็งผล', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005016', 'นางพยับ ทองสวนส้ม', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005032', 'นางวีระ ทองรุ่ง', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005034', 'นางฉลวย อ่ำปั้น', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005049', 'นางปาน เพ็ชรอำไพ', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005054', 'นางเพลิน สังข์นวล', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005074', 'นางบุญร่วม ทองชาวนา', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005092', 'นางมณี คงทิพย์', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005108', 'นางแสงเดือน แจ้งชาวนา', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005116', 'นางเพ็ญนภา กำมาขันแก้ว', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005128', 'น.ส.จวน บุญน้อยกูล', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005131', 'น.ส.ฐิติชญาพร ชาวพิจิตร', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005150', 'นางอำพร แย้มเสาธง', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005174', 'น.ส.สุมาลี สีแดง', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005180', 'นางผกากรอง แสงจันทร์', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005195', 'นางพูนศรี นุ้ยวังทอง', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005200', 'นางวันเพ็ญ แดงชาวนา', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005201', 'นางพิษ เจือโร่ง', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005212', 'นางเอื้อพันธ์ เที่ยงทอง', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005217', 'นางบุญสม ใจกล่ำ', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005222', 'นางขวัญจิตร์ พีระพันธ์', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005225', 'นางทองหล่อ รักษาชน', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005237', 'นางรำพึง ทองฟอง', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005238', 'นางปาณีย์ ชูเมือง', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005241', 'น.ส.อนันต์ จันทร์ไว', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005253', 'นางเมี้ยน เงินพุ่ม', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005264', 'น.ส.นงคราญ มาณี', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005275', 'น.ส.นงนภัส นาคอัง', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005277', 'นางยุพิน อ้นชาวนา', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005283', 'นางขวัญชญา แซ่เลี่ยม', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005288', 'นางนุจรี ทับทิม', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005290', 'น.ส.จิตรา ทองรุ่ง', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005299', 'น.ส.แจ๋ว เทียนสันจร', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005302', 'นางลัดดา ด้วงวงษ์', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005346', 'นางคนึงนิจ ทองรุ่ง', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005351', 'นางจำเรียง จันทร์แดง', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005362', 'น.ส.หน่อย แซ่ก๊วย', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005375', 'นางทับทิม พ่วงสุข', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005381', 'น.ส.พัชรา พินิจ', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005386', 'น.ส.เกตุกมล มีภูเขียว', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005389', 'นางสุดใจ บุญมี', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005401', 'นางอำไพ ศิลางาม', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005407', 'นางลำดวน รักสนุก', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005417', 'น.ส.พยอม ลิดลา', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005434', 'น.ส.พาฝัน ป้อมสาหร่าย', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005435', 'นางสายพัด ชุ่มพระวงค์', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005437', 'นางสำราญ ศรีพระจันทร์', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005445', 'น.ส.พรทิพย์ คำทอน', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005454', 'น.ส.กรรณิการ์ พูลกลาง', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005475', 'นางรำพึง พินิจ', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005505', 'นางกาญจนา สอนชาวเรือ', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005510', 'นางบุญเตือน แปลกเงิน', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005522', 'นางเฉลียว ดีทะเล', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005534', 'นางน้อย ภู่ขาว', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005546', 'นางทวี พึ่งน่วม', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005548', 'น.ส.จรูญ ใจมั่น', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005552', 'น.ส.ยุพา นาคอัง', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005566', 'นางประสงค์ ชำนาญผา', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005573', 'นางอัญชลี สารวิก', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005577', 'นางลำเทียน ศิลางาม', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005595', 'นางจำเนียร เครือเช้า', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005604', 'นางประพา สกุลแก้ว', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005612', 'น.ส.ทุเรียน สีหมี', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005617', 'นางประกอบ เภากลิ่น', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005618', 'น.ส.รวย เสาหอม', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005635', 'นางวันเพ็ญ อยู่มากญาติ', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005645', 'น.ส.วิไลพร จันจอม', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005662', 'นางทองคำ จันทวงษ์', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005664', 'นางสมบูรณ์ สีแดง', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005670', 'น.ส.ยุพา ใจดี', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005682', 'นางวารี เจริญภาพ', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005684', 'น.ส.สาคร ศรีรัตนา', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005694', 'น.ส.บุญนาค เครือสุวรรณ์', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005696', 'นางฉลวย ยะหัตตะ', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005701', 'นางลัดดาวรรณ์ เมืองแก้ว', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005710', 'น.ส.ณิชกานต์ พุ่มสอาด', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005711', 'นางภิรมย์ จันพุ่ม', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005717', 'นางประภาพร ครุฑบัว', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005730', 'น.ส.สมจิตร ทองรุ่ง', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005737', 'น.ส.อรอุมา องค์อาจ', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005764', 'นางธนวัน จันแสง', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005766', 'นางสุพิน เจือโร่ง', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005781', 'น.ส.ชลฤธี เผ่ากลิ่น', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005784', 'น.ส.อำพร คงรอด', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005786', 'น.ส.สุดารัตน์ ต๊กยี่', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005800', 'นางวรรษา ทับทิม', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005801', 'นางยลรดา เมฆอรุณกมล', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005807', 'น.ส.เพ็ญนภา ชุมพรผ่อง', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005823', 'นางสมนึก ภูมิมิตร', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005830', 'นางบังอร สีนวน', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005838', 'นางลำยงค์ ธรรมพิทักษ์เดช', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005858', 'นางจำเนียน ใจซื่อ', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005864', 'นางช่าย อ่ำปั้น', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005875', 'นางชนากานต์ ศรีชัง', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005878', 'น.ส.อัญชลี จันทร์แดง', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005891', 'นางนิตยา จันทร์จอม', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005895', 'น.ส.น้ำอ้อย บุญคง', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005906', 'นางไพเราะ เกิดแก้ว', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005921', 'นางอำนวย คุ้มครอง', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005925', 'น.ส.สุนันทา เล็บครุฑ', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005942', 'น.ส.นวลลัดดา อ่ำสิงห์', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005945', 'นางเหวียน รุ่งอินทร์', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005948', 'นางไสว ห้อยแจ้ง', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005949', 'น.ส.เฉลา ทับทิม', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005954', 'นางฤทัย แป้นทอง', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005966', 'นางทวี ฉัตรพันธ์', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005988', 'นางน่วม แจ้งใจ', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '005996', 'น.ส.ศรินณา คงทิพย์', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '006014', 'นางพูน ช่วงชิด', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '006027', 'นางหล่อม ป่าเขียว', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '006043', 'นางพะเยาว์ ชำนาญผา', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '006058', 'น.ส.ปราณี แสงโสด', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '006068', 'นางเงิน คุณเฉย', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '006076', 'นางสำรวย น้อยกูล', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '006080', 'น.ส.รัชดา กลิ่นจันทร์', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '006084', 'น.ส.ทวี ใจดี', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '006118', 'น.ส.แม๊ด อ้นชาวนา', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '006126', 'นางพิมพ์ พงษ์ประยูร', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '006213', 'นางบังอร สุวรรณรัตน์', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '006237', 'นางกุสุมา สุทธาโย', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '006238', 'นางชญานิน ประเสริฐสงค์', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '006264', 'น.ส.ลินดา บริหาร', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '006267', 'นางชูศรี มาชื่น', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '006268', 'นางสายบัว ครุฑบัว', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '006274', 'น.ส.สุจิตรา กลิ่นบุญ', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '006282', 'นางยุพิน ใจดี', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '006303', 'นางสีนวล ชาวเขา', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '006308', 'นางเริง พรมวงศา', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '006312', 'นางสุมาลี เฉลยไตร', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '006313', 'นางสมบัติ รักเรือง', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '006316', 'น.ส.อัจฉรา ทัดเที่ยง', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '006318', 'น.ส.น้ำอ้อย ศิลธรรม', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '006321', 'น.ส.มณีวรรณ นาคอัง', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '006352', 'น.ส.ละออ ทองมาเอง', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '006359', 'นางนกเล็ก จันแดง', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '006360', 'น.ส.ทักษพร เรืองจุ้ย', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '006367', 'น.ส.ปรียาพร ชูวิทย์', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '006437', 'นางศิริพร สืบพันธ์', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '006469', 'นางจันทร์อุมา สุขสวัสดิ์', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '006534', 'น.ส.อัมพร รัตนมาลัย', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '006608', 'นางยุพา ทองเพ็ง', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '006620', 'น.ส.รัชนีบูรณ์ ชมภูผล', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '006726', 'นางจันทรา วงศ์เสน', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '006731', 'นางรัชดา นาชัยภมิ', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '006732', 'น.ส.วิภาวรรณ รักสนุก', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '006739', 'น.ส.ขวัญตา ทองชาวนา', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '006755', 'น.ส.ธนัชพร พุฒฟัก', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '006774', 'น.ส.บังอร นิลเอี่ยม', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '006799', 'นางทัศมาพร ใจดี', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '006800', 'นางสุชีรา อนุสรณ์ประดิษฐ์', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '006811', 'น.ส.เจนจิรา แซ่ซี', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '006822', 'น.ส.เนาวรัตน์ มากทรัพย์', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '006843', 'น.ส.วัลลภา กองเต๊ก', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '006852', 'นางพัชริดา พินิจ', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '006856', 'น.ส.ลักษณา อ่อนดี', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '006858', 'น.ส.พนิดา ช่วงชิด', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '006869', 'น.ส.กมลรัตน์ เรืองงาม', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '006898', 'น.ส.ปนัดดา อินทร์ภู่', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '006908', 'นางอาพร ดวงประทุม', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '006914', 'น.ส.ลำพึง ใยลำยวง', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '006936', 'นางสุมาลี มากคล้าย', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '006949', 'นางเลี้ยง รอดอินทร์', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '006956', 'น.ส.ณัฐธิดา ใยลำยวง', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '006962', 'นางสนิท รุ่งเรื่องศักดิ์', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '006963', 'น.ส.จีระวรรณ รุ่งเรืองศักดิ์', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '006976', 'น.ส.ทิพวรรณ คำทอน', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '006988', 'น.ส.วันทนา กลิ่นหอม', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '006991', 'นางอุลัยวรรณ์ กลิ่นหอม', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '006996', 'น.ส.ประภา ใจดี', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '006999', 'นางนิสา คนคล่อง', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '007001', 'น.ส.ทิดา ปะวะนา', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '007023', 'นางพรทิพย์ คำบาง', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '007056', 'นางเฉวียง สุขบุตร', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '007064', 'นางพัชราพร โคกทอง', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '007075', 'นางกฤษณา สุขบุตร', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '007081', 'น.ส.อ้อย บุญน่วม', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '007089', 'น.ส.บุญมา อ้นชาวนา', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '007111', 'นางนิตยา บุญรอด', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '007121', 'นางมาลี ชาวพิจิตร', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '007135', 'นางวิชิต โคกทอง', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '007144', 'นางมาลี แสงภู่', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '007158', 'น.ส.นิภาพร สวนนุวัฒ', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '007180', 'นางสมปอง หมี้แสน', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '007189', 'นางบุญเรือน มากทรัพย์', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '007209', 'นางสุรินทร์ มนตรี', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '007223', 'น.ส.วีรานันท์ ชัยสุริยงค์', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '007224', 'น.ส.มะปรางค์ อ้นชาวนา', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '007239', 'นางยุพิน มั่งคั่ง', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '007241', 'น.ส.รัชนก มั่งคั่ง', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '007249', 'นางจำลอง สีดวงจันทร์', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '007254', 'น.ส.พรพรรณี คำทอน', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '007266', 'น.ส.นุช จงเจริญ', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '007280', 'นางวาสนา เต็มใจ', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '007288', 'นางแจ่มจิตร ไชยวงค์', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '007384', 'นางสมหมาย เข็มกลัด', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '007408', 'นางกันยา เม่นชาวนา', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '007471', 'นางสุภาพรรณ ริบดา', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '007498', 'นางสุพรรษา บุตรปรารมย์', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '007539', 'นางพรทิพย์ วุ่นเฮง', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '007542', 'น.ส.มณีรัตน์ คำสนิท', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '007623', 'น.ส.ศรีไพร แจ้งใจ', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '007633', 'น.ส.บุญรอด ใจงาม', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '007650', 'น.ส.สวรรค์ทิพย์ เทพทองดี', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '007665', 'น.ส.พัชรี กลิ่นบุญ', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '007666', 'น.ส.กชพร ศรีรักษ์', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '007672', 'น.ส.เกศินี มนตรีเจริญ', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '007673', 'น.ส.นิษา เอี่ยมอ่อน', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '007787', 'น.ส.นริศรา แก้วนนท์', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '007797', 'น.ส.พัชรี รุ่งอินทร์', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '007803', 'น.ส.พู ช่วงชิต', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '007828', 'น.ส.อนรรฆวรรณ แปลกเงิน', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '007838', 'น.ส.ศรีนวล แจ้งใจ', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '007859', 'นางละเอียด ทองมาเอง', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '007892', 'น.ส.สมพร เทพวิเชียร', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '008019', 'นางน้ำเชื่อม กลัดกลุ่ม', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '008075', 'น.ส.วรรณศิริ สาวทรัพย์', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '008078', 'น.ส.กมลพร แซ่เถ้า', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '008205', 'นางนริศรา บำรุงวงศ์', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '008254', 'นางมาลัย ดวงประทุ่ม', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '008335', 'นางเกวลิน นิ่มนวล', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07552', '008518', 'น.ส.เต็ม ชูศรี', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000025', 'น.ส.วรรธนา ศรีภูมิ', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000043', 'นางสง่า มีแสง', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000046', 'นางประดับ สุทธิโสม', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000061', 'น.ส.ปราณี ดุงสูงเนิน', 'หญิง', '42', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000062', 'นางมาลี บุญดี', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000073', 'นางบรรจง พลไวย์', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000076', 'นางสังวาล อินวิเชียร', 'หญิง', '53', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000121', 'น.ส.ศิริพร โพธิ์ศรี', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000133', 'นางแสงเงิน กลิ่นบุญ', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000145', 'นางรัชนี ยุราวรรณ', 'หญิง', '46', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000161', 'นางพัชรี แจ่มสว่าง', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000179', 'นางประดิษ วงมงคล', 'หญิง', '51', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000194', 'นางสมใจ วงสาโสม', 'หญิง', '41', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000197', 'นางสุดารัตน์ โตสวัสดิ์', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000198', 'น.ส.มนิดา เพ็ชรสุข', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000216', 'นางไสว พรมใจบุญ', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000226', 'นางสมพร เอี่ยมสอาด', 'หญิง', '51', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000232', 'นางปราณี สาสนันท์', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000237', 'นางไพเราะ มาเต', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000246', 'นางวนิดา พรมวงศา', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000261', 'นางกนกนาถ ทองดอนน้อย', 'หญิง', '56', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000280', 'นางน้ำผึ้ง ซื่อสกุลรัตน์', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000294', 'นางสุภานี แก้วทอง', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000315', 'นางพัชรีพร เต่าหลำ', 'หญิง', '50', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000316', 'นางส้มเลียง ชัยสุข', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000346', 'นางพิมพ์พันธุ์ สายทอง', 'หญิง', '41', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000355', 'นางวงเดือน บัวพา', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000407', 'น.ส.วรรณภา ผุดผ่อง', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000408', 'นางสาหร่าย พรหมศรี', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000409', 'นางบุญส่ง สร้อยทองบม', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000427', 'นางการะเกตุ มีแสง', 'หญิง', '48', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000433', 'นางสมจิตร จิ๋วแหยม', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000441', 'นางสุพรรณ อยู่เป็นสุข', 'หญิง', '49', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000466', 'น.ส.เยื้อน งามราม', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000471', 'นางวรนุช ฤาษี', 'หญิง', '50', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000472', 'น.ส.ลูกจันทร์ งามราม', 'หญิง', '48', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000478', 'น.ส.สรัลชนา เพชรแก้ว', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000490', 'นางสัมฤทธิ์ โมดี', 'หญิง', '55', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000508', 'นางทองหลา ที่พัก', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000524', 'น.ส.กัลยา ป้อมสาหร่าย', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000526', 'นางสมปอง หลำพริ้ง', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000531', 'น.ส.วิรัช สุขงาม', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000586', 'นางลำจวน พ่วงชาวนา', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000589', 'นางนงนุช ธุระสะ', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000596', 'นางเอี่ยม ขาวเทศ', 'หญิง', '55', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000611', 'นางสุภาพร สอนเทียม', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000616', 'นางดาวเรือง เนตรคำ', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000620', 'นางพวงเพชร ขุนพิลึก', 'หญิง', '34', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000626', 'นางลูกชิ้น ยืนยาว', 'หญิง', '49', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000633', 'น.ส.ชรินา อินโส', 'หญิง', '43', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000639', 'นางอนันต์ วงษ์ไทย', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000641', 'นางบรรจง พรมมา', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000660', 'นางมาลา นวลเกษร', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000664', 'นางจันทรา ฉายาสุข', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000673', 'นางนิสากร ดาวเรือง', 'หญิง', '46', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000674', 'นางสายฝน อ่ำสิงห์', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000733', 'นางจรัสศรี วงมงคล', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000764', 'นางจำลอง อ่อนนุ้ย', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000769', 'น.ส.ดุจดาว ชาวเวียง', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000777', 'นางศิริพร จันทอิน', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000798', 'น.ส.ลำพึง แมมอ๊อด', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000812', 'นางสงวน แสงคำมี', 'หญิง', '44', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000813', 'นางกมลวรรณ ขุนเทพ', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000850', 'นางพัชรี ขามเทศ', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000859', 'นางพเยาว์ อ่ำสิงห์', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000866', 'นางวรัญญา แสนประสิทธิ์', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000868', 'นางจำเรียง พินิจ', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000874', 'น.ส.ฉลองขวัญ ประสานไทย', 'หญิง', '36', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000877', 'นางขวัญฐิติกร ญาณไพรโรจน์', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000881', 'นางสายลม เซนักค้า', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000903', 'น.ส.อุทิน นาคจัง', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000906', 'นางจินดา กิริณี', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000907', 'นางจำนง เลื่อนฟ้า', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000913', 'นางเฉลา จันทร์จอม', 'หญิง', '49', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000917', 'น.ส.ประทุม สินมา', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000920', 'นางสิริจันทร์ คำลือ', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000924', 'นางมนาช กุลจันทร์', 'หญิง', '45', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000948', 'นางวิลัย ขามเทศ', 'หญิง', '53', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000949', 'นางกุหลาบ ฉิมสุด', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000962', 'น.ส.จันทร์ทิลา ศิริรัตน์', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000973', 'นางศศิญพรรณ ฉิมศิริ', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000974', 'นางสมหวัง ชาวด่านซ้าย', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000979', 'นางสมพร เนตชาวนา', 'หญิง', '44', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000989', 'น.ส.โชติกา แก้วทอง', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '000998', 'นางสุรภี อินทรีย์', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001004', 'นางวิรัตน์ อ่ำบางกระทุ่ม', 'หญิง', '50', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001009', 'น.ส.ประไพ ทองยิ้ม', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001012', 'นางปราณี แจ้งชาวนา', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001016', 'นางรัตนา วงษ์ไทย', 'หญิง', '47', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001036', 'นางสุจิตรา ดาวเรือง', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001047', 'น.ส.ทองย้อย โรจน์อำพร', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001048', 'น.ส.ทองดี โพธิ์ศรี', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001051', 'นางเกสร พรมสี', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001055', 'นางจันทร์ พ่วงชาวนา', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001059', 'นางลำใย นวลเกษร', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001061', 'นางกำไล ศรีไพร', 'หญิง', '42', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001063', 'นางอุทัย ยั่งยืน', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001071', 'นางละออ บัววังโป่ง', 'หญิง', '49', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001085', 'น.ส.วัลลาภา กันหา', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001097', 'นางจำเนียร อ่ำสำลี', 'หญิง', '46', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001101', 'นางพงษ์ศรี ปั่นเกิด', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001114', 'นางสำอางค์ พุทธศร', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001121', 'นางชบา ชัยสุข', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001124', 'น.ส.สมศรี มาโพธิ์ชัย', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001128', 'น.ส.วิไลวรรณ รัตถานู', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001143', 'นางสมมารถ ป้องถ่าย', 'หญิง', '56', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001148', 'น.ส.ยุพิน แก้วทอง', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001171', 'นางลูกจันทร์ นันทเดช', 'หญิง', '49', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001190', 'น.ส.สุมาณ สอนไทย', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001209', 'นางบุญชู ชำนิเขตกิจ', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001219', 'นางเตียง ขำมัด', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001228', 'นางมนัส เจียมจำเริญ', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001243', 'นางเข็ม วงษ์ไทย', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001265', 'นางใบเงิน แพงมอญ', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001266', 'นางอุบล เหล็กกล้า', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001281', 'นางพิศวงค์ งามอาการ', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001282', 'นางรวม ตรีอินทอง', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001284', 'นางบุญเรียม ปิ่นทอง', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001324', 'นางซิ้ม น้อยเสาธง', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001341', 'นางรุ่งรัตน์ สุขพร้อม', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001346', 'นางนิ่มนวล เชื้อดี', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001353', 'น.ส.บุญมี ปรีชาวนา', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001378', 'นางประมวล พูลสวัสดิ์', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001383', 'น.ส.ใกล้รุ่ง สีแจ้ง', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001385', 'นางจันอับ ขาวเทศ', 'หญิง', '59', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001388', 'นางสุภาพ ดวงเจริญ', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001392', 'นางปราณี ศรีใส', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001398', 'นางสายฝน คำดี', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001424', 'นางมารินทร์ แก้วชาวนา', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001441', 'นางสุพรรณา ดวงพรม', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001462', 'นางขวัญใจ จันแดง', 'หญิง', '44', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001463', 'นางวาสนา กลิ่นพยอม', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001465', 'นางบุญเลี้ยง นาคจัง', 'หญิง', '53', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001466', 'นางจาบ ศรีพรม', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001467', 'นางวันเพ็ญ นินศิลา', 'หญิง', '46', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001469', 'นางวาสนา แก่นท่าตาล', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001475', 'นางนิ่มนวล จิ๋วแหยม', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001487', 'นางลมัย สุทธาราม', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001492', 'นางเสนาะ รักษาศิล', 'หญิง', '52', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001499', 'น.ส.ศศินิภา ช่างประดับ', 'หญิง', '43', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001500', 'นางสมบัติ สุขงาม', 'หญิง', '54', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001527', 'น.ส.บุษรา อินทรีย์', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001533', 'นางลัดดา อินวิเชียร', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001536', 'นางสมัย เดชใจทัศน์', 'หญิง', '57', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001559', 'นางพะเยาว์ เดชใจทัศน์', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001566', 'น.ส.เพ็ญนภา โตทอง', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001573', 'น.ส.มนิตย์ นาสากเหล็ก', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001586', 'น.ส.สายฟ้า สุญราช', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001606', 'นางชูสี รอดอินทร์', 'หญิง', '55', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001612', 'นางอำพร ทองดอนน้อย', 'หญิง', '38', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001624', 'นางหอมหวล เลื่อนฟ้า', 'หญิง', '59', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001648', 'นางประสพตา แสงเงิน', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001655', 'น.ส.วิภาสิริ ใจกล้า', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001679', 'นางสมโภชน์ ดวงแก้ว', 'หญิง', '53', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001686', 'น.ส.กุหลาบ นาคศรี', 'หญิง', '45', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001696', 'นางสุภี สุภักดิ์สร', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001698', 'น.ส.พรรณนิภา เจียมจำเริญ', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001702', 'น.ส.เนรัญชรา น้อยตั้ง', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001712', 'นางศิริพร ใจคำ', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001725', 'น.ส.พรรณปพร มั่นแดง', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001732', 'นางน้ำค้าง ภู่เทศ', 'หญิง', '50', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001752', 'นางวัลภา ดาวกระจาย', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001755', 'นางสมบัติ งามราม', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001757', 'นางสุนีย์ ฝาลิชัย', 'หญิง', '57', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001765', 'น.ส.สมหมาย ขำมัด', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001769', 'น.ส.อัมพร ฤทธิ์ทรง', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001773', 'นางรัตนา สุวรรณคร', 'หญิง', '59', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001777', 'นางสำรี ฉ่ำชาวนา', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001779', 'น.ส.อำพร ตาลวังโปร่ง', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001783', 'น.ส.กรรญาวี บุญชื่น', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001810', 'นางสมบัติ ชัยสุข', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001819', 'นางกรองแก้ว รุ่งรัศมี', 'หญิง', '43', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001844', 'นางลำพึง ชูแสง', 'หญิง', '51', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001849', 'นางจำเนียน ทองยิ้ม', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001881', 'นางสมพิศ มากพูน', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001886', 'นางเฉลียว จันแดง', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001890', 'นางลำพัน ชำนาญเวช', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001899', 'นางวันดี อินโส', 'หญิง', '41', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001911', 'นางมนุช ประสมเพชร', 'หญิง', '49', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001920', 'นางบุญเตือน รอดอินทร์', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001924', 'นางแปร ผุดผ่อง', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001932', 'นางประนอม พันธ์มูล', 'หญิง', '50', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '001979', 'นางนิราวรรณ ใจแก้ว', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002007', 'นางเครือวัลย์ ซื่อสกุลรัตน์', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002010', 'นางวันดี แก้วทอง', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002012', 'นางดวงใจ นาคจัง', 'หญิง', '33', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002028', 'นางบุญลวม ประสาทชัย', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002034', 'นางวรดา นิยมวงศ์', 'หญิง', '39', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002041', 'นางวาสนา ใจงาม', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002044', 'นางเรียม เพชรแก้ว', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002049', 'นางกานดา ศรีเจริญ', 'หญิง', '53', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002064', 'นางเสริมสวย วงค์ละคร', 'หญิง', '47', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002073', 'น.ส.หนู ความเพียร', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002080', 'นางสุนทร หวังแย้ม', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002091', 'นางละเมียน เจริญภาพ', 'หญิง', '57', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002118', 'นางสวาท มหาเสนา', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002130', 'นางบุษกร บัววังโป่ง', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002137', 'นางบุญทม เจ๊กแป้น', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002140', 'นางบาง เอมชาวนา', 'หญิง', '50', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002144', 'นางอนันท์ โตทอง', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002150', 'นางลออ อ่ำสิงห์', 'หญิง', '60', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002151', 'นางพะเยาว์ ทรงนครา', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002157', 'นางอบเชย เสือก้อน', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002167', 'นางพิมพ์พร เรืองบ้านโคน', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002194', 'นางจำปี มั่งขันหมาก', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002195', 'นางชิดชนก มหาชัย', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002198', 'นางเลี่ยม ทองมาเอง', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002201', 'นางริน เพ็งน้อย', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002232', 'นางระย้า ทองพูน', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002246', 'นางทองขันธ์ ผุดผ่อง', 'หญิง', '55', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002253', 'นางสวงศ์ โพธิ์ศรี', 'หญิง', '48', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002258', 'นางจิ๋ม พิลึก', 'หญิง', '58', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002292', 'น.ส.เพ็ญนภา นาสากเหล็ก', 'หญิง', '32', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002304', 'นางประนอม กุลเกตุ', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002309', 'นางสมัย พลอยแหวน', 'หญิง', '40', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002310', 'นางกัลยา รัตนเลิศ', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002314', 'น.ส.จิรภา แถวโพธิ์', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002315', 'นางพลอย สีแจ้ง', 'หญิง', '50', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002319', 'นางสำเริง สุทธาราม', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002333', 'นางสังเวียน วงค์ไทย', 'หญิง', '49', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002334', 'นางเข็มทอง กาสีทอง', 'หญิง', '43', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002351', 'นางเทียม อ่ำสำลี', 'หญิง', '52', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002357', 'นางสมสี หัตถกรรม', 'หญิง', '49', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002361', 'น.ส.เรือน กัณหา', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002366', 'นางเตือน พรศิริ', 'หญิง', '37', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002379', 'นางศศิตา ภู่เทศ', 'หญิง', '38', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002402', 'นางประนอม เรืองรุ่ง', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002404', 'นางสุนันทา พ่วงเฟื่อง', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002427', 'นางแต๋ว สมรูป', 'หญิง', '58', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002434', 'นางลัดดา ตันสา', 'หญิง', '39', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002437', 'นางบรรจบ แซ่ด่าน', 'หญิง', '56', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002443', 'นางอุ่นเรือน แพงสี', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002448', 'น.ส.ภัทรา สุขหนา', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002459', 'น.ส.สำฤทธิ์ สุภักดิ์สร', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002477', 'นางวัฒนา รักษาแดน', 'หญิง', '56', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002479', 'นางประมวล บุตรา', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002482', 'นางธัญญลักษณ์ อินทรีย์', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002485', 'นางลูกอินทร์ สุขเอม', 'หญิง', '50', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002505', 'นางทองสุข เฮงเจริญ', 'หญิง', '49', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002512', 'นางดารา พวงทับทิม', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002513', 'นางพะยงค์ ขาวเอี่ยม', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002533', 'นางอมรา คำบุญมา', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002535', 'นางสมใจ เข็มทองคำ', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002539', 'น.ส.หนึ่งฤทัย รอดชาวนา', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002547', 'นางอภิรดี เตียวเจริญพร', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002563', 'นางรด งามราม', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002568', 'นางนาตญา ตรีอินทอง', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002571', 'นางลำพร รัตนเลิศ', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002586', 'นางอาภรณ์ ป้อมสาหร่าย', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002633', 'น.ส.นงนุช บุตรธรรม', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002640', 'นางวันเพ็ญ ช้อยเครือ', 'หญิง', '52', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002644', 'นางศรัญญา วงค์ไทย', 'หญิง', '45', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002648', 'นางประนอม ศรีคชชา', 'หญิง', '51', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002650', 'นางสำอางค์ โพธิ์ทอง', 'หญิง', '48', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002656', 'น.ส.น้ำนอง โพธิ์ศรี', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002665', 'นางเพิ่ม จันทร์วังโป่ง', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002668', 'นางบุญล่ำ นาสากเหล็ก', 'หญิง', '55', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002672', 'น.ส.เบ็ญจะ แดงศิริ', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002718', 'นางแพรว อ่ำสิงห์', 'หญิง', '57', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002734', 'นางสำอาง ผ่องภูษา', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002735', 'นางปุ๊ สิงห์ทอง', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002742', 'นางลำดวน จันทร์หอม', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002759', 'นางสำลี ชูแสง', 'หญิง', '54', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002773', 'น.ส.จำปี เรืองจุ้ย', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002775', 'นางลิ้นจี่ สีแจ้ง', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002784', 'นางประกาย เข็มเงิน', 'หญิง', '37', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002805', 'นางทับทิม ช้างยืนยง', 'หญิง', '60', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002806', 'นางสมมาศ คงอยู่', 'หญิง', '43', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002814', 'นางพิกุล ดวงพรม', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002824', 'นางจันทร ปั้นทอง', 'หญิง', '34', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002830', 'นางคำพิน ระบอบ', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002834', 'นางระเบียบ โพธิ์ศรีวงศ์', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002840', 'นางเสงี่ยม ศรีพรม', 'หญิง', '51', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002845', 'นางนุชจรี สละริม', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002895', 'น.ส.บุญชู บุญดี', 'หญิง', '51', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002896', 'นางบุญมี มาเต', 'หญิง', '57', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002899', 'นางวรรณจรี บุญดี', 'หญิง', '44', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002908', 'นางเสาวรี นุ่มโฉม', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002909', 'นางบุญมี อ่ำสิงห์', 'หญิง', '58', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002932', 'นางอารีรัตน์ พรมวงศา', 'หญิง', '48', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002933', 'น.ส.สุทิน ทับทิมทอง', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002950', 'นางไพนี บุญดี', 'หญิง', '56', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002951', 'นางเจริญ จันทร์อินทร์', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002968', 'นางสงขลา ผุยรอด', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002985', 'นางศิรินัท เบิกใจ', 'หญิง', '45', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002989', 'นางน้ำหวาน จันแดง', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002993', 'นางสุณี วงค์สะโสม', 'หญิง', '45', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '002997', 'นางหนักหนา โมดี', 'หญิง', '55', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003000', 'นางน้ำฝน ศรีบัว', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003018', 'น.ส.น้ำฝน คนงาม', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003019', 'นางพิรุญ ชาวด่านซ้าย', 'หญิง', '38', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003033', 'นางบาง โกษาแก้ว', 'หญิง', '53', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003048', 'นางสำอาง ศรีทะสังข์', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003075', 'นางทับทิม อ่ำสิงห์', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003096', 'นางไพรินทร์ อยู่ก้อน', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003108', 'นางเช้ย ขามเทศ', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003124', 'น.ส.จันทิมา หงษ์ทองคำ', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003125', 'นางรัตดา บุญเรือง', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003146', 'นางอุ่นเรือน แก้วมั่น', 'หญิง', '56', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003187', 'นางติม รักสนุก', 'หญิง', '57', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003199', 'นางหลิม เพ็ชรสุข', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003202', 'นางกาญจนา สุขเจริญ', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003238', 'น.ส.ธัญญารัตน์ สุขเจริญ', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003241', 'นางคาย ขาวทรงธรรม', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003254', 'น.ส.ประหยัด งามราม', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003270', 'นางสายหยุด ชัยมัง', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003285', 'นางสมควร พ่วงชาวนา', 'หญิง', '50', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003295', 'นางดาหวัน ฤทธิ์ทรง', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003298', 'นางกรรณิกา นาคมอญ', 'หญิง', '33', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003299', 'นางประมวน เจริญสุข', 'หญิง', '41', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003300', 'นางศิริวรรณ มีศิริ', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003310', 'นางชูศรี วงษ์ไทย', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003326', 'นางมานิจ ชาวเขา', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003341', 'น.ส.สุวรรณี เสนะจำนงค์', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003342', 'น.ส.สวิก โพธิ์ทอง', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003347', 'น.ส.รัตนา หนูเทศ', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003348', 'นางวันเพ็ญ กลัดเนินกุ่ม', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003352', 'นางธนนันท์ ผุดผ่อง', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003357', 'นางจำเนียร จันทร์จอม', 'หญิง', '43', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003369', 'น.ส.ละมัย บุญดี', 'หญิง', '60', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003380', 'นางเขียม พงษ์ประยูร', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003390', 'นางสังเวียน อยู่ก้อน', 'หญิง', '47', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003393', 'น.ส.ถนอมวรรณ พรมมา', 'หญิง', '44', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003398', 'น.ส.ทัศนีย์ ยวนทอง', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003407', 'นางตีบ ดวงพรม', 'หญิง', '55', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003414', 'นางจำลอง สะสีขำ', 'หญิง', '57', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003451', 'นางสายฝน ทองดอนน้อย', 'หญิง', '47', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003457', 'นางดวน นานอก', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003463', 'นางหนูแดง บุตรน้ำเพชร', 'หญิง', '49', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003466', 'นางน้ำฝน นาคตะคุ', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003484', 'นางทัศนีย์ ทองดี', 'หญิง', '39', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003530', 'นางไพรินทร์ แก้วมั่น', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003533', 'นางเนี้ยว ขาวทรงธรรม', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003537', 'นางชลอ มิ่งขวัญ', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003559', 'นางสายหยุด ภู่มณี', 'หญิง', '48', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003589', 'นางโสน ขาวทรงธรรม', 'หญิง', '34', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003591', 'นางอนุสรา ขาวทรงธรรม', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003603', 'นางลูกจันทร์ เพชรสุข', 'หญิง', '52', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003613', 'นางปนัดดา สิทธิมณี', 'หญิง', '50', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003620', 'น.ส.พเยาว์ พุ่มทับทิม', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003624', 'น.ส.พเยาว์ ทับทิมทอง', 'หญิง', '46', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003627', 'นางทองหยิบ ป้องถ่าย', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003629', 'นางประจวบ เขียวเนตร', 'หญิง', '47', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003630', 'นางประภาพร ทองสุข', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003633', 'น.ส.วราภรณ์ โกสุมสวรรค์', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003636', 'นางรจรินทร์ ทองแจ้ง', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003638', 'นางจำปา สุทธาราม', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003657', 'นางกิมบ่วย แซ่ด่าน', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003658', 'นางสร้อย บัววังโป่ง', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003661', 'น.ส.รัชฎาพร ฉัตรพันธ์', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003665', 'น.ส.สุเมธ สอนไทย', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003673', 'นางเครือ ใจแก้ว', 'หญิง', '52', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003674', 'นางเรณู นันทเดช', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003684', 'นางจรูญ อิ่มเอิบ', 'หญิง', '46', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003691', 'นางสายทอง ป้อมสาหร่าย', 'หญิง', '43', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003696', 'นางสำราญ รัตนกุศลรักษา', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003698', 'น.ส.ดารารัตน์ บุญศรี', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003706', 'นางนารีย์ หัตถกรรม', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003725', 'นางปรานอม นาสากเหล็ก', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003728', 'นางนันทพร อ่ำสิงห์', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003732', 'นางสุปราณี ทรัพย์เอี่ยม', 'หญิง', '43', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003741', 'นางทองคูณ เศษโสภา', 'หญิง', '57', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003743', 'น.ส.เบญจวรรณ อินวิเชียร', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003751', 'นางไพรัตน์ สายโต', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003755', 'น.ส.พยอม สุทธิโสม', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003764', 'นางอนงค์ คุ้มสมบัติ', 'หญิง', '57', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003772', 'นางหนูแดง มั่นคงดี', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003783', 'นางสุพรรณษา สาริบุตร', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003794', 'นางชลธิชา อินตะการ', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003795', 'นางต่ำ ชาวพิจิตร', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003805', 'นางบุญมี มั่นคงดี', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003811', 'นางแดง เพลียลา', 'หญิง', '57', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003812', 'นางกัลยา สีแจ้ง', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003813', 'น.ส.ลักขณา ศิริเอี่ยม', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003821', 'นางมารี ภู่เทศ', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003830', 'น.ส.สุกันทิมา มั่นคงดี', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003835', 'นางสังวาลย์ ดุงสูงเนิน', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003837', 'นางน้อยหน่า สุขจิตร', 'หญิง', '40', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003838', 'น.ส.นัทธมน แพงมอญ', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003847', 'นางเอื้องพิมพ์ ใจคำ', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003866', 'นางสุกัญญา จันทรสมิต', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003876', 'น.ส.สุมาลี ทรงนครา', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003884', 'นางสุธารา พรมมา', 'หญิง', '45', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003891', 'นางส่งเสริม จันโตนด', 'หญิง', '50', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003903', 'นางดาวรุ่ง ภู่มณี', 'หญิง', '30', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003905', 'นางไพรวัน ประสงค์', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003941', 'น.ส.จารุวรรณ เจียมจำเริญ', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003942', 'นางศศิธร พรศิริ', 'หญิง', '31', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003944', 'นางอภิชญา เทียนบาง', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003961', 'น.ส.สำลี งามราม', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003969', 'นางสายป่าน นาคศรี', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003980', 'นางอ่ำ บุญถึง', 'หญิง', '49', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003989', 'นางจาบ สระทองดี', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '003999', 'นางอนงค์ พรมมา', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '004003', 'น.ส.บุตรตา บุญชู', 'หญิง', '58', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '004004', 'นางมีนา ดาวเรือง', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '004005', 'นางนิต ขาวทรงธรรม', 'หญิง', '48', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '004010', 'นางสำเนา คงประกอบ', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '004022', 'นางนงนุช แก้ววงค์', 'หญิง', '38', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '004032', 'นางละนอง นาศักดิ์เหล็ก', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '004037', 'นางมาลัย ด้วงประดับ', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '004055', 'นางทองย้อย เนตรชาวนา', 'หญิง', '56', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '004071', 'น.ส.ทองหลา2 ที่พัก', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '004075', 'นางพิมพ์พรรณ พรมใจบุญ', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '004080', 'นางติ๋ม บุญถึง', 'หญิง', '58', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '004128', 'น.ส.ทองดี คำเสน', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '004135', 'นางอานัน โตทอง', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '004142', 'นางวิภารัตน์ สิงหลาบ', 'หญิง', '31', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '004164', 'นางสำเภา ผิวเขียว', 'หญิง', '50', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '004172', 'นางบุญรอด บุญเพ็ชร์', 'หญิง', '43', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '004175', 'นางม่วย ปัญญานะ', 'หญิง', '59', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '004220', 'นางขวัญเรือน ผาสุขขัน', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '004225', 'น.ส.ลำดวน ความเพียร', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '004234', 'น.ส.ระวิรัตน์ โสมพันธ์', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '004255', 'นางศิริญญา จันทร์อิทร์', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '004258', 'นางทองสุข หอมผา', 'หญิง', '54', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '004273', 'นางมยุรี เพชรแก้ว', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '004285', 'นางแดง สมเสงี่ยม', 'หญิง', '56', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '004289', 'นางกุหลาบ พรมวงศา', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '004294', 'นางสุรินทร์ ศิริชัยสุทธิกร', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '004296', 'นางพเยาว์ นันทเดช', 'หญิง', '52', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '004301', 'นางยุพดี ใจประดิษฐ์', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '004313', 'นางมานะ ฉุยฉาย', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '004314', 'นางทวีพร ทองเพ็ง', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '004316', 'นางสมศรี รัตนกุศลรักษา', 'หญิง', '51', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '004329', 'นางนฤมล ตะในศรี', 'หญิง', '56', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '004331', 'นางธัญญา ชูแก้ว', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '004337', 'นางหวาน ภู่เทศ', 'หญิง', '57', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '004339', 'นางจอน ขุนนคร', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '004347', 'น.ส.เสาวลักษณ์ ควรสมบัติ', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '004357', 'น.ส.สุกรรณิกา กิริณี', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '004406', 'นางพลอย จำปาศรี', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '004410', 'น.ส.รันทม อุ้ยหะ', 'หญิง', '46', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '004415', 'นางวันทอง ตู้ทอง', 'หญิง', '53', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '004438', 'นางวิไลพรรณ จันทร์วังโป่ง', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '004445', 'นางเกษร สร้อยทองบม', 'หญิง', '50', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '004446', 'นางรัง นาสากเหล็ก', 'หญิง', '44', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '004452', 'นางสุกัญญา เนตชาวนา', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '004469', 'นางสิกา ฉัตรพันธ์', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '004477', 'นางสุภัคพร จันแดง', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '004486', 'นางสงคราม ทองไสว', 'หญิง', '49', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '004517', 'นางวรรณา อาจวิชัย', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '004526', 'นางนุจรินทร์ บุตรวงค์', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '004548', 'นางเอื้อมเดือน บุญเกตุกูล', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '004636', 'นางบุญธรรม กองแสนแก้ว', 'หญิง', '53', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '004647', 'นางชั้น บุญดี', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '004651', 'น.ส.น้ำตาล พรมมา', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '004652', 'นางทองหล่อ สุขเจริญ', 'หญิง', '50', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '004656', 'นางบุญยืน ค่าทอง', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '004682', 'นางประไพร พ่วงชาวนา', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '004685', 'นางประทีป ประสานไทย', 'หญิง', '58', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '004695', 'นางสมคิด เอมภพ', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '004712', 'นางประทุม ผูกเหมาะ', 'หญิง', '55', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '004715', 'นางสุรินทร์ วิบุตร', 'หญิง', '52', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '004729', 'น.ส.พยุง มาเต', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '004750', 'นางเพี้ยง บุญมา', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '004752', 'นางเรียม ปลูกทรัพย์', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '004753', 'นางสะอาด กอนทับทิม', 'หญิง', '52', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '004757', 'น.ส.ธนาพร ชูประยูร', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '004764', 'นางปาน บุตรา', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '004810', 'นางอำไพ นิตสร้อย', 'หญิง', '46', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '004811', 'นางเสาวนีย์ คำขวัญ', 'หญิง', '46', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '004828', 'นางพวน กลิ่นพยอม', 'หญิง', '59', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '004830', 'นางประทีป กัลยา', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '004836', 'น.ส.ศศิธร โตทอง', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '004837', 'นางไกรรุ่ง ติยะสันต์', 'หญิง', '43', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '004847', 'นางประเมิน อยู่ก้อน', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '004896', 'นางทองขัน ยั่งยืน', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '004915', 'นางบุญเหลือ อ่อนนุ้ย', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '004916', 'นางจำลอง สายโต', 'หญิง', '50', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '004971', 'นางอรพรรณ แดงลพ', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '004975', 'นางแสงจันทร์ พูสูง', 'หญิง', '50', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '004979', 'นางทองปาน เข็มทองคำ', 'หญิง', '45', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '004981', 'นางลำดวน ป้อมสาหร่าย', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '004987', 'นางไล้ กันหา', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '004996', 'นางกนกกร หอมผา', 'หญิง', '35', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005021', 'น.ส.โสภี หัตถกรรม', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005027', 'นางทุเรียน สุทธิโสม', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005028', 'นางนิภารัตน์ รัตนเลิศ', 'หญิง', '44', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005054', 'นางสำรวย คำดี', 'หญิง', '51', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005058', 'นางแก้ว เทียนขำ', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005088', 'น.ส.ประไพ สุดตรง', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005102', 'นางดอกไม้ ขาวทรงธรรม', 'หญิง', '59', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005113', 'น.ส.สมพร บุญยงค์', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005124', 'นางสุกัญญา สุขเจริญ', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005127', 'นางดวงดาว บำรุงสุข', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005145', 'นางละเอียด เทพประมวล', 'หญิง', '58', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005161', 'น.ส.มงคลทิพย์ คงทัน', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005166', 'น.ส.ลำดวน มั่นเขตวิทย์', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005176', 'นางทรงศรี เพ็ชรแก้ว', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005177', 'นางประคอง อินโส', 'หญิง', '49', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005198', 'นางสัมฤทธิ์ บัวจันทร์', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005207', 'นางวิไลวรรณ ดวงแก้ว', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005212', 'นางวันทนา ยอดนุ่ม', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005221', 'นางอารีวรรณ์ ยั่งยืน', 'หญิง', '43', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005243', 'นางนุ่ม สมยาน', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005261', 'นางผอม สายสุวรรณ', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005268', 'นางนิ่ม ชาวพิจิตร', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005270', 'นางลั่นทม ศิลาวงษ์', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005274', 'น.ส.จุฬารัตน์ ใหม่คัน', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005308', 'นางสมบุญ จันทร์จอม', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005309', 'นางประไพ สร้อยดี', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005338', 'นางลำดวน บุญดี', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005343', 'นางแจ้ว วงศ์ไทย', 'หญิง', '54', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005387', 'นางซ่อนกลิ่น ขวัญนาค', 'หญิง', '40', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005409', 'นางลำพึง นาคศรี', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005417', 'นางสุกัญญา ทองเพ็ง', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005418', 'นางสมอน เจิรญสุข', 'หญิง', '47', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005426', 'นางนุช นามรักษา', 'หญิง', '43', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005432', 'นางสมจิตร สมเสงี่ยม', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005437', 'นางสุรีย์รัตน์ กูดน้อย', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005440', 'น.ส.ลลิตา พินิจ', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005452', 'นางถนอมจิตร เจริญวิบูลย์พันธ์', 'หญิง', '38', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005455', 'นางสำราญ บัววังโป่ง', 'หญิง', '52', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005457', 'นางบุญยัง ปรีชาวนา', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005464', 'นางเรียม บุญถึง', 'หญิง', '60', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005467', 'นางทองสุข สมยาน', 'หญิง', '41', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005477', 'นางสวิง วงค์ไทย', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005480', 'นางกันต์ฤทัย ฤชุปนัย', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005485', 'นางขันน้ำ แสงเงิน', 'หญิง', '58', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005506', 'นางลำพรวน จูชาวนา', 'หญิง', '54', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005512', 'นางประหยัด ประสงค์', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005532', 'นางพิสาน บุญมา', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005537', 'นางสมศรี ชาวด่านซ้าย', 'หญิง', '46', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005541', 'นางน้ำฝน อั้นสัมฤทธิ์', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005544', 'นางสมใจ คุ้มสมบัติ', 'หญิง', '58', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005560', 'นางทองเรี่ยม นามรักษา', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005562', 'นางวรรณา ศรีสกุล', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005572', 'นางประจวบ เพชรแก้ว', 'หญิง', '44', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005583', 'นางศศิธร โสนอ่อน', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005584', 'นางนงนุช วงวิลาส', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005588', 'น.ส.สะอาด ขาวเทศ', 'หญิง', '58', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005590', 'นางสิริรัตน์ บุญประจวบ', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005604', 'นางพเยาว์ โกสุมสวรรค์', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005609', 'นางเมธณี บุญพรม', 'หญิง', '44', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005622', 'นางสมคิด สุทธาราม', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005640', 'นางผล สิงห์สวัสดิ์', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005653', 'นางรัตนา เอี่ยมอ่อน', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005673', 'นางประทวน สินมา', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005676', 'น.ส.พะเยาว์ ขาวเอี่ยม', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005679', 'นางมาลัย ประสงค์', 'หญิง', '48', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005684', 'นางมณีนุช ทรัพย์เกิด', 'หญิง', '57', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005696', 'นางสมเพียร พุมลา', 'หญิง', '53', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005705', 'น.ส.ผักกาด อุ้ยทะ', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005710', 'นางอุไร มาลี', 'หญิง', '48', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005722', 'นางนิตยา สมรูป', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005723', 'นางสอิ้ง คุ้มสมบัติ', 'หญิง', '58', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005726', 'น.ส.เจียม คำหอม', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005730', 'นางขวัญธิดารัตน์ พลอยแหวน', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005736', 'นางรันทม เที่ยงทอง', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005742', 'นางอุ่นเรือน พ่วงชาวนา', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005751', 'นางสงบ โพธิ์ทอง', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005758', 'นางสุทิน บุญถึง', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005765', 'นางเรียม หน่ายชาวนา', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005773', 'นางสมนึก เรืองจุ้ย', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005787', 'นางประดิษฐ แย้มโพธ์ใช้', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005789', 'นางประคอง เพชรสุข', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005798', 'นางวาสนา อำนวยผล', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005812', 'นางรัตนา โมดี', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005826', 'นางอุไร ชอนบุรี', 'หญิง', '52', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005828', 'นางสุนทร นาคจัง', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005839', 'นางสมบูรณ์ มีเง้า', 'หญิง', '57', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005841', 'นางมลวดี ประสงค์', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005858', 'นางบุหงัน อาสมาน', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005869', 'น.ส.สุภาภรณ์ ผุดผ่อง', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005873', 'นางมาลัย บุตรน้ำเพชร', 'หญิง', '54', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005874', 'นางจำปา ศรีพรม', 'หญิง', '56', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005892', 'นางวิรัช พินิจ', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005909', 'นางลำพวน มั่นคงดี', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005931', 'น.ส.เบ็ญจา วงศ์ไทย', 'หญิง', '37', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005933', 'นางสุภาภร คนล่ำ', 'หญิง', '50', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005938', 'นางประนอม บรรดาสุข', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '005949', 'นางศรีระนอง เชื้อดี', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '006011', 'น.ส.ศิริวรรณ อ่อนละมุน', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '006030', 'นางไพริน ดวงพรม', 'หญิง', '54', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '006039', 'น.ส.นาฎสุรีย์ เนียมหอม', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '006052', 'น.ส.ละเอียด นิตสร้อย', 'หญิง', '37', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '006076', 'นางแหวน สกุลแก้ว', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '006081', 'นางธัญยรัตน์ จันดาวงษ์', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '006092', 'นางสมใจ สุขใส', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '006114', 'นางชุมพร พรมมา', 'หญิง', '45', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '006118', 'นางศิริพร พงศ์พิบูลย์ศักดิ์', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '006169', 'นางจันทร์ทิมา พรมมา', 'หญิง', '37', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '006177', 'นางเพยาว์ ดวงแก้ว', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '006198', 'นางมาลี พรมน้อย', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '006203', 'นางถวิล สายโต', 'หญิง', '52', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '006225', 'นางมธุรดา ทับทิมศรี', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '006228', 'นางรตา เพ็ชรสุข', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '006232', 'นางวาสนา จันทร์จอม', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '006239', 'นางประไพ อ่อนนุ้ย', 'หญิง', '50', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '006243', 'น.ส.อนงค์ ผุดผ่อง', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '006259', 'นางจิตราภรณ์ พลอยแหวน', 'หญิง', '42', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '006274', 'นางบุญธรรม นิตย์สร้อย', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '006277', 'น.ส.สุภัทตรา ยวนทอง', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '006281', 'น.ส.บุญมา กัลยา', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '006282', 'นางมาลี สุภักดิ์สร', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '006307', 'นางสำราญ ผุดผ่อง', 'หญิง', '54', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '006332', 'นางคำสอน รักษาศิล', 'หญิง', '55', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '006337', 'น.ส.มัทนา นามอญ', 'หญิง', '34', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '006372', 'นางสุภาพร ทรัพย์เกิด', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '006377', 'นางประยรัตร์ มีชาวนา', 'หญิง', '44', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '006382', 'นางกฤษณา จิตรทอง', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '006389', 'นางสัมฤทธิ์ ถาวรกูล', 'หญิง', '44', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '006395', 'นางกาหลง เอมอิ่ม', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '006421', 'นางหลง กลิ่นบุญ', 'หญิง', '48', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '006422', 'นางบังอร แก้วมั่น', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '006432', 'นางปราณี พันธ์มูล', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '006469', 'น.ส.พัชรา กรัดภิบาล', 'หญิง', '52', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '006473', 'นางเพียงใจ ดิษชาวนา', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '006477', 'น.ส.ศิริวรรณา ชาวเวียง', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '006484', 'น.ส.สิริกานดา โตทอง', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '006494', 'นางเพ็ญพร พงษ์พานิช', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '006503', 'นางรำเพย เจียมจำเริญ', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '006506', 'นางพยอม ผาสุขขัน', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '006520', 'นางระพีพร จันแดง', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '006524', 'นางลำดวน ป้อมสมบูรณ์', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '006530', 'น.ส.วิไลวรรณ อ่องอร่าม', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '006531', 'นางโสภา นาคศรี', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '006542', 'นางมนตรี จันทร์เขียว', 'หญิง', '30', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '006578', 'นางเจริญ เรืองจุ้ย', 'หญิง', '59', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '006580', 'นางลำพูน สอนเทียม', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '006587', 'นางอำภา ถาวรพจน์', 'หญิง', '31', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '006588', 'นางอุษา เนียมนิ่ม', 'หญิง', '45', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '006601', 'นางอนงค์ ชาวเวียง', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '006652', 'นางสารี่ นิดสร้อย', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '006663', 'น.ส.จเร ปรีชาวนา', 'หญิง', '42', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '006680', 'น.ส.มณีรัตน์ ความเพียร', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '006682', 'น.ส.รถจนา ใจเพ็ญ', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '006714', 'นางอัมภวรรณ์ แก้วทอง', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '006717', 'นางวิพาพรรณ ดาวเรือง', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '006721', 'นางลมัย เอมชาวนา', 'หญิง', '48', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '006728', 'นางเยาวลักษณ์ เหล็กกล้า', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '006739', 'น.ส.จินตนา ชาวเวียง', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '006761', 'นางวิรัช ยุราวรรณ', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '006763', 'นางขวัญเรือน อุ่นเมือง', 'หญิง', '37', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '006780', 'นางณีรัตน์ ใหม่คัน', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '006808', 'น.ส.สวิง เดชใจทัศน์', 'หญิง', '50', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '006810', 'นางสุมามาณ ตาลวังโปร่ง', 'หญิง', '32', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '006826', 'น.ส.อนัน เอกจีน', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '006827', 'นางจำปี บุญยงค์', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '006841', 'นางบัวพันธ์ จันขะ', 'หญิง', '58', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '006894', 'นางสมทรง มีอัฐมั่น', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '006908', 'นางอาคม หวังแย้ม', 'หญิง', '49', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '006925', 'นางเดือน นาสากเหล็ก', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '006928', 'น.ส.ผ่องศรี โพธิ์ศรี', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '006942', 'นางบุญเพียง โพธิ์ศรีวงค์', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '006948', 'น.ส.วีระนุช รัตนเลิศ', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '006960', 'นางประทุม ตาสุเม่น', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '006969', 'น.ส.สุกัญญา แสงม่วง', 'หญิง', '35', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '006987', 'นางพรทิพย์ มาเยอร์', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '007001', 'นางวงษ์เดือน มูเนียม', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '007006', 'นางพัชรพร หนูพรม', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '007060', 'นางสำราญ ขาวเทศ', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '007069', 'นางชวนพิศ อินวิเชียร', 'หญิง', '31', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '007073', 'น.ส.ชัญญา วงคำสาย', 'หญิง', '43', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '007079', 'นางแพว ป้อมสาหร่าย', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '007091', 'น.ส.บันยง เจริญสุข', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '007156', 'น.ส.พรทิพา จันแดง', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '007202', 'นางตวัน ศรีทอง', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '007204', 'น.ส.สุนทรีย์ จันทร์ปาน', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '007210', 'นางฉวี เดชใจทัศ', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '007221', 'น.ส.ธนานันต์ ฤชุปนัย', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '007222', 'น.ส.พรรณวดี ฤชุปนัย', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '007234', 'น.ส.สุกัญญา นาสากเหล็ก', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '007243', 'น.ส.สมโภชน์ นิตสร้อย', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '007247', 'นางพรทิพย์ ไทยตรง', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '007279', 'น.ส.อินทร เอมชาวนา', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '007285', 'นางจริญา มั่งคั่ง', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '007292', 'นางจารุพร เพชรแก้ว', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '007297', 'น.ส.กันญา ปานทิพย์', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '007299', 'น.ส.จันทร์ทา สอนเวช', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '007304', 'น.ส.ศรีนวล แจ้วจัด', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '007311', 'นางถวิล ศุภนคร', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '007312', 'น.ส.เขมสุภางค์ เพชรแก้ว', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '007314', 'นางอาเมียง อายิ', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '007316', 'นางนิชกมล รักพาณิชย์', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '007322', 'น.ส.ชะริน ทองสุขดี', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '007329', 'น.ส.เสนาะ สุดใจ', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '007361', 'นางชลธิชา ประสานทอง', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '007367', 'นางบัวขำ กันหา', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '007371', 'น.ส.วิลาวัณย์ วัฒนะศิริ', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '007385', 'น.ส.สุนา สินโสด', 'หญิง', '38', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '007420', 'นางสมคิด ศรีใส', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '007429', 'น.ส.ศิริญญา ทันประเสริฐ', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '007430', 'น.ส.กุหลาบ จุฬาใส', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '007433', 'นางสีฟ้าลาวัลย์ บุญช่วยสุข', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '007436', 'นางสมพร หาแก้ว', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '007442', 'นางอมรรัตน์ รัตนศรัธา', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '007446', 'นางสุมาลี ชาวเวียง', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '007447', 'นางสมนึก เพ็ชรไทย', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '007471', 'น.ส.สไบทิพย์ พลอยแหวน', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '007561', 'นางกวา มาเต', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '007587', 'นางรัตภรณ์ แช่มนก', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '007614', 'นางสุกัลยา หอมรื่น', 'หญิง', '55', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '007639', 'นางพิศมัย มั่งขันหมาก', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '007669', 'น.ส.วิมลศิริ คงทัน', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '007707', 'นางทวน แจ่มพวง', 'หญิง', '57', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '007714', 'นางสำรวม อุทาน', 'หญิง', '52', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '007752', 'นางสมนึก พานนิล', 'หญิง', '53', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '007862', 'นางหนูแดง สุทธิโสม', 'หญิง', '47', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '007883', 'น.ส.สมพร แซ่บู๊', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '007905', 'นางพลอยนภัส แก่นลา', 'หญิง', '40', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '007951', 'นางชุติมา สร้อยบวบ', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '007965', 'น.ส.ศรีสุดา เกตุมีแสง', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '008026', 'นางธันยพร อ่อนอ่ำ', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '008247', 'น.ส.อนุรักษ์ ฝ่ายเพีย', 'หญิง', '33', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '008261', 'นางเฉลี่ย พรศิริ', 'หญิง', '49', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '008303', 'นางวาริน รูปสี', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '008323', 'น.ส.สมพร เมฆฉาย', 'หญิง', '31', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '008393', 'นางทองดำ หลำพริ้ง', 'หญิง', '59', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '008406', 'น.ส.เดือนเพ็ญ เพ็ชรศรี', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '008422', 'นางสุมลฑา นุ่มนิ่ม', 'หญิง', '53', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '008445', 'นางวาสินี จันทร์อินทร์', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '008471', 'น.ส.วิชุตา ชมภูเพชร', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '008478', 'นางหนูแดง สุทธิโสม', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '008480', 'น.ส.ศรีใคร สุทธิประภา', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '008518', 'น.ส.จรรญา สวัสดิพัฒน์', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '008621', 'น.ส.สวัสดิ์ กุแก้ว', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '008648', 'น.ส.จันทรา ถ้วนถี่', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '008705', 'นางพิศ ภูวงษ์', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '008751', 'นางมะลิ พงษ์พานิช', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '008764', 'น.ส.นกเทศ ชาวเขา', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '008798', 'น.ส.รัตน์ดา ชาวด่านซ้าย', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '008827', 'น.ส.บุญเลิศ ทาเหล็ก', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '07553', '008850', 'น.ส.สยุมพร อาจหาญ', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000001674', null, 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000003', 'น.ส.อุบล โตกำแพง', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000005', 'น.ส.สมคิด โตกำแพง', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000024', 'นางกัญญาณัฐ พลีจัตตุ', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000030', 'นางอำนวย ชังเภา', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000031', 'นางพเยาว์ ผ่องอุดม', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000035', 'น.ส.หยด เกิดทิม', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000039', 'นางประเทือง แย้มโชติ', 'หญิง', '56', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000048', 'นางศศิธร เงินจันทร์', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000053', 'น.ส.คัดเช้า จันทรา', 'หญิง', '35', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000065', 'น.ส.ปัฐมาวดี อินทร์แป้น', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000066', 'นางบุญชู อินทร์แป้น', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000074', 'นางบุญช่วย คล้ายนาค', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000076', 'นางสงัด เหล่าสูงเนิน', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000088', 'นางรวิภา จันทร์ปัญญา', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000099', 'นางดวงเดือน สุดสลุด', 'หญิง', '47', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000100', 'นางประนอม ภูมิผล', 'หญิง', '56', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000102', 'นางเล็ก เกิดมี', 'หญิง', '49', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000103', 'น.ส.ทิม เทพสลุด', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000107', 'นางมุกดา คุ้มหนู', 'หญิง', '58', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000110', 'นางมณี จันทร์รอด', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000122', 'นางหนู ภูมิผล', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000128', 'น.ส.ขวัญเรือน บุญมี', 'หญิง', '41', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000135', 'นางบุญเรือง บางอยู่', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000138', 'น.ส.วิลาวัลย์ ใยระย้า', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000145', 'นางบรรจง ศรีปาน', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000149', 'น.ส.สาวิณี มีชำนาญ', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000163', 'น.ส.โชติพรรณ ศรีปาน', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000169', 'น.ส.ประสิต ดีลิ', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000171', 'น.ส.ประโลม เอมพิณ', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000174', 'นางจำเนียร แซ่กัง', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000175', 'นางฉวี แสงเดช', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000200', 'นางลำพึง แก้วศรี', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000218', 'น.ส.จำเนียร พนมไพร', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000224', 'นางฉลอม รักแจ้ง', 'หญิง', '52', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000238', 'นางธัญลักษณ์ พวงทอง', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000243', 'นางประหยัด นุ่มสุข', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000244', 'นางพร คนหลัก', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000257', 'นางประกอบ มั่งมี', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000265', 'นางบุญธรรม ทับโนนทอง', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000271', 'นางบังอร สรรพรอด', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000290', 'นางวินัย ศรีปาน', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000293', 'นางจำเนียร แก้วพวง', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000296', 'นางบุญสืบ ปานแย้ม', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000297', 'นางนิต ศรีอาวุธ', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000298', 'นางแว่น พูลยิ้ม', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000306', 'น.ส.ประนอม ศรีปาน', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000310', 'นางสว่าง บุญมี', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000313', 'นางสมใจ แสงอรุณ', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000316', 'นางรอม โพธิ์ดง', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000324', 'นางอรพรรณ ตันประเสริฐ', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000325', 'นางพชรดา เขียวไพรี', 'หญิง', '53', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000338', 'นางกิมลี้ คนหลัก', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000339', 'น.ส.กำไร ธรรมชาติ', 'หญิง', '44', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000347', 'น.ส.วัชรี ชูศรี', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000357', 'น.ส.อุดมลักษณ์ ปุ่มสันเทียะ', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000370', 'น.ส.วาสนา อ่วมเพชร', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000373', 'น.ส.อรวรรณ์ วาจามั่น', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000381', 'นางสง่า ศรีน้อย', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000391', 'นางบุญนาค ทับโนนทอง', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000392', 'นางสมบัติ ใจเที่ยงธรรม', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000394', 'นางสุด การะเกตุ', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000421', 'น.ส.สุวรรณา มีชำนาญ', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000434', 'น.ส.นิภาพร ศรีปาน', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000437', 'นางแพรว ใจเที่ยงธรรม', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000439', 'น.ส.ยุพิน เกิดบ้านใหม่', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000441', 'นางสำลี มากอิ่ม', 'หญิง', '55', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000454', 'นางลีลวัฒน์ ขวัญแก้ว', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000455', 'น.ส.ทุเรียน เทศสลุด', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000465', 'นางนิตยา มิ่งมิตร', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000484', 'น.ส.ชาลี บุญเปลื่อง', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000502', 'นางวงเดือน มีชำนาญ', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000539', 'น.ส.หนึ่งฤทัย อ่วมน้อย', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000546', 'นางวัชลี เวชสวรรค์', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000549', 'นางบัวเรียน สวัสดิ์อ่ำ', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000555', 'นางผาสุข กานอินทร์', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000586', 'นางวงค์เดือน พรมแพร', 'หญิง', '37', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000589', 'นางประนอม เมณร์กูล', 'หญิง', '46', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000593', 'นางอ๊อด ทองอุบล', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000608', 'นางจำรัส พุ่มไพร', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000610', 'นางสุธาสิณี ศรีปาน', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000611', 'นางเพ็ญศรี คล้อยแก้ว', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000620', 'นางพัทชา พันธ์มณี', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000627', 'นางลูกชิ้น พุ่มไพร', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000629', 'น.ส.สุรีรัตน์ สมบูรณ์', 'หญิง', '48', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000632', 'นางเยื้อน ขำน้ำคู้', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000633', 'นางวาน จันทร์โชติ', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000640', 'นางอาลม สีทิม', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000645', 'นางสุมาลี ศรีคง', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000647', 'นางจำเนียร เร่ในไพร', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000658', 'น.ส.อำไพ สวัสดิ์อ่ำ', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000662', 'น.ส.ธันญารัช คนมี', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000673', 'นางพเยาว์ ชูศรี', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000682', 'นางอัมพร ศรีปาน', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000691', 'นางบุญเรือง สุกายะ', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000699', 'นางเหรียญ มีเครือรอด', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000714', 'นางสมทรง ทัพใหญ่', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000721', 'นางประทีป ธุตะกิจ', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000737', 'นางน้ำเทียน พึ่งสีใส', 'หญิง', '46', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000748', 'นางเสนาะ นาคหล่ำ', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000754', 'น.ส.วรรณพร มากอิ่ม', 'หญิง', '35', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000755', 'น.ส.สุมาลี เผือกพงษ์', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000765', 'นางอ้อมจิต ฉายเนตร', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000772', 'นางทองศรี ใจดี', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000774', 'นางสุด พึ่งสีใส', 'หญิง', '53', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000804', 'นางลำดวน สีทิม', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000805', 'นางบุญชู เสมชู', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000812', 'นางสำเรียง สุดสลุด', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000820', 'น.ส.รัชฎาพร ต๊กควรเฮง', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000822', 'นางเพ็ญรุ่ง โพธิ์ดง', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000830', 'น.ส.ประนอม จันทร์รอด', 'หญิง', '52', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000834', 'นางยุพิน ชาติดี', 'หญิง', '52', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000840', 'นางปราณี ศรีปาน', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000849', 'น.ส.ลำใย เสมชู', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000852', 'น.ส.สุนันทา พุ่มนุ่ม', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000861', 'น.ส.สมฤดี ดีอินทร์', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000872', 'น.ส.เสาว์ รักแจ้ง', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000873', 'นางอัญชลี พ่วงเฟื่อง', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000879', 'น.ส.สุมิตตรา คงเลิศ', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000886', 'นางแสงเดือน ยอดเกี้ยว', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000892', 'น.ส.พิมพ์ แย้มทุ่ง', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000898', 'น.ส.ปาริชาติ พุ่มไพร', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000924', 'นางไสว ยอดเกี้ยว', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000928', 'นางระยอง เงินจันทร์', 'หญิง', '54', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000931', 'นางสมควร ภู่ฤทธิ์', 'หญิง', '54', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000945', 'นางฉลอง ดีอินทร์', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000947', 'นางทองหยิบ นวลจันทร์', 'หญิง', '59', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000951', 'นางจินดา ดีอินทร์', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000955', 'นางสำเนียง ทับโนนทอง', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000969', 'นางพรทิพย์ พลอยระย้า', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '000973', 'น.ส.จิรภัทร ศรีปาน', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001001', 'นางชาญ คล้อยแก้ว', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001012', 'นางวิรัชต์ ดีอินทร์', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001016', 'นางเพลินพิศ โพธิ์ดง', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001037', 'นางพวง สมบูรณ์', 'หญิง', '58', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001040', 'นางรัตนา พึ่งสลุด', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001053', 'นางชลอม นุชรุ่งเรือง', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001072', 'นางฉลอม ผ่องอุดม', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001077', 'นางรวม คำจริง', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001099', 'นางแพว ดีอินทร์', 'หญิง', '46', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001100', 'นางบุญเริ่ม รักแจ้ง', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001104', 'นางสายหยุด คงเมือง', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001106', 'นางบังอร ดีอินทร์', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001132', 'น.ส.สาคร ศรีปาน', 'หญิง', '49', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001147', 'น.ส.มลฤดี ยอดสงค์', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001152', 'นางนกน้อย ศรีปาน', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001153', 'นางบัญญัติ สินเอี่ยม', 'หญิง', '57', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001166', 'นางวรรณภา เพ็ชรนิล', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001184', 'นางวรรณา พวงทอง', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001186', 'นางอำพร ทับทั่ง', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001191', 'น.ส.ภัทรลิตา รสเผือก', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001199', 'นางเวียน รักแจ้ง', 'หญิง', '60', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001213', 'นางอ้อมใจ โคกพระปราง', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001214', 'นางลำพูน งามถ้อย', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001223', 'นางแฉล้ม ขันทอง', 'หญิง', '57', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001238', 'นางคำนวล มีไชโย', 'หญิง', '42', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001245', 'นางสุมารี คล้อยแก้ว', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001246', 'นางยุพิน เขียวแก้ว', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001256', 'นางละออ สุกายะ', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001258', 'นางละเอียด ต๊กควรเฮง', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001272', 'นางบุญเทียม เวชสวรรค์', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001277', 'น.ส.วิรัช ดีอินทร์', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001291', 'น.ส.ศิริรักษ์ พวงทองทับ', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001294', 'นางยุพดี วัดแก้ว', 'หญิง', '45', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001301', 'น.ส.ชลธิชา ต๊กควรเฮง', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001308', 'นางชลอ ปานแย้ม', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001320', 'น.ส.เสนาะ กลิ่นแย้ม', 'หญิง', '31', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001327', 'นางปารมี ปลื้มสลุด', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001330', 'นางนงลักษณ์ จีนสลุด', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001340', 'นางอำนวย มากสลุด', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001347', 'น.ส.รัชนิกร ศรีปาน', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001373', 'นางทิพย์มาศ กานอินทร์', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001381', 'นางบุญสม จันทโชติ', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001396', 'นางสมหวัง ศรีเครือแก้ว', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001398', 'นางสมคิด บุญมี', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001407', 'นางสำราญ พุ่มจันทร์', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001408', 'น.ส.ทิพยวรรณ ขำเฟื่อง', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001431', 'นางทุเรียน รสเผือก', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001450', 'นางชิน คล้อยแก้ว', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001455', 'นางอัมพรรัตน์ ใจดี', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001459', 'นางอุ่นเรือน บางปลากด', 'หญิง', '52', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001481', 'นางปราณี ทองประพันธุ์', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001482', 'นางลำใย ผ่องอุดม', 'หญิง', '50', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001486', 'น.ส.น้อย ดีบ้านครอง', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001487', 'นางสมัย แก้วพวง', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001500', 'นางลำยอง ประดับบุญ', 'หญิง', '34', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001505', 'นางจำปี ชูศรี', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001511', 'นางบุศรา พึ่งสลุด', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001515', 'นางพูนสิน พรมขำ', 'หญิง', '53', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001525', 'น.ส.วรรณา มีเครือรอด', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001526', 'นางสำรวย คุ้มหนู', 'หญิง', '56', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001531', 'น.ส.สุภิญญา ต๊กควรเฮง', 'หญิง', '41', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001552', 'นางแวว ดีอินทร์', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001554', 'น.ส.ศิริกาญจน์ ทองมาก', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001569', 'นางอุ่นเรือน สีทิม', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001583', 'นางทุเรียน วีระชาติ', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001584', 'นางบุญนาค น้อยช่างเหล็ก', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001602', 'น.ส.มะไร สุดสลุด', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001603', 'น.ส.ประทีป มีเครือรอด', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001616', 'นางลำยงค์ พรหมศร', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001618', 'นางลำพอง มีมาก', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001634', 'นางทองศุกร์ การะเกตุ', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001645', 'นางบรรเทิง ยิ่งนอก', 'หญิง', '51', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001646', 'นางเบญจวรรณ เกิดบ้านใหม่', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001656', 'น.ส.มาลี มีเครือรอด', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001685', 'นางประเทือง คล้อยแก้ว', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001686', 'นางสุชิน เนียมสลุด', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001691', 'นางบรรเทิง เข็มครุช', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001698', 'นางเรียม โกลิงห์', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001700', 'นางแล บางปลากด', 'หญิง', '49', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001712', 'นางสมจิตร อุทัยสวัสดิ์', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001713', 'น.ส.วาสนา ปานแย้ม', 'หญิง', '32', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001723', 'นางบุญเรือน โพธิ์ดง', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001728', 'นางกลอย รักแจ้ง', 'หญิง', '58', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001729', 'นางลำยง อินหาดกรวด', 'หญิง', '54', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001730', 'น.ส.แพรว รักแจ้ง', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001733', 'นางสมจิตร สาดท่าโพ', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001734', 'นางลอย ทิพมาศ', 'หญิง', '45', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001738', 'นางทุเรียน บุญคง', 'หญิง', '54', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001739', 'นางปรารถนา แก้วศรี', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001741', 'น.ส.ดุดจิตร มีมาก', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001757', 'นางยุพิน ศรีปาน', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001759', 'น.ส.เกษร ทองจุ้ย', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001768', 'น.ส.จำนง พวงทอง', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001780', 'น.ส.มณฑาทิพย์ มั่นสกุล', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001795', 'นางน้อย เอมพิณ', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001808', 'นางละออง เกิดบ้านใหม่', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001816', 'น.ส.อภิญญา เกิดบ้านใหม่', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001817', 'นางกลิ่น ฟักเงิน', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001822', 'นางชิน เรืองสุกใส', 'หญิง', '60', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001835', 'น.ส.วงเดือน เอมพิณ', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001846', 'นางวรรณภรณ์ น่วมด้วง', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001848', 'นางสมจิตร์ สาดสี', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001857', 'น.ส.บรรเลง จันทร์หรีด', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001864', 'น.ส.เสน่ห์ บุญเปรื่อง', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001869', 'นางดาวเรือง เพ็ชรมณี', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001872', 'น.ส.สำเริง เสือเปรม', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001880', 'นางนกแก้ว เสือเปรม', 'หญิง', '45', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001897', 'นางบังอร พึ่งนคร', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001919', 'นางม๊อก คล้อยแก้ว', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001923', 'น.ส.วรรณา มีเครือรอด', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001932', 'น.ส.วันดี คนมี', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001938', 'นางอรพินท์ มีเครือรอด', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001942', 'นางนิตร์ ดีอินทร์', 'หญิง', '44', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001951', 'นางประภาพร ศรีปาน', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001965', 'นางคำน้อย เทศสลุด', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001966', 'น.ส.ขจร ศรีคง', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001968', 'นางธัญวรรณ ต๊กควรเฮง', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '001987', 'นางยุพิน ใจพล', 'หญิง', '47', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002007', 'นางพิน โพธิ์ดง', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002013', 'นางหยุด ปรีกมล', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002015', 'นางแสงเดือน เกตุสิงห์สร้อย', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002017', 'นางเลี่ยม รอสวัสดิ์', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002027', 'นางวรณี สุ่มพุ่ม', 'หญิง', '44', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002028', 'นางตา บวบนา', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002050', 'น.ส.เหว่า เอมพิณ', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002075', 'นางสมควร มีเครือรอด', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002091', 'นางวาสนา แก้วน่วม', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002106', 'น.ส.วิมล พึ่งสลุด', 'หญิง', '34', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002110', 'น.ส.เลียม มีชัยโย', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002114', 'นางลัดดาวัลย์ เร่ในไพร', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002119', 'นางน้องนุช ลับแล', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002120', 'นางสุวารี เนียมจันทร์', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002147', 'น.ส.เรือน ศรีปาน', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002149', 'นางทองอยู่ ดีอินทร์', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002158', 'นางสำลี คนหลัก', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002159', 'นางกาญจนา คุ้มสลุด', 'หญิง', '54', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002164', 'นางปราณี ยอดสงค์', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002172', 'นางฟ้อย พึ่งสันเทียะ', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002173', 'นางจำปี ศรีคง', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002175', 'นางฉลอง ทิมอ่อน', 'หญิง', '51', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002198', 'น.ส.ลลิตวดี ทับโนนทอง', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002218', 'นางสุมาลี จันทร์รอด', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002223', 'น.ส.รมณีย์ ศรีน้อย', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002232', 'นางวิภาวรรณ นาถ้ำทอง', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002233', 'นางอนัน กลิ่นน้อย', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002242', 'นางจะเร มั่งมี', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002245', 'นางถวิล มีเครือรอด', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002247', 'น.ส.สุกัญญา วาจามั่น', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002252', 'น.ส.สมพร โพธิ์ดง', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002253', 'น.ส.ฤดี เร่ในไพร', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002254', 'นางสุนันทา สุกายะ', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002258', 'นางจำรัส คนมี', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002262', 'น.ส.เฉลิม พุ่มไพร', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002266', 'นางจำเรียง คงถิ่นฐาน', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002269', 'น.ส.นิศาชล ศรีคง', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002270', 'น.ส.เรือนใจ ปานแย้ม', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002273', 'นางยุพิน อ่อนศรี', 'หญิง', '59', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002280', 'น.ส.ทัศนีย์ พุ่มนุ่ม', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002287', 'นางทุเรียน ศรีคง', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002314', 'น.ส.มุกดา พึ่งสลุด', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002322', 'นางอารมณ์ คนหลัก', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002340', 'นางอนันต์ ศรีเครือแก้ว', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002346', 'นางฤทัยรัตน์ เลาวกุล', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002362', 'นางสังวาล เทศสลุด', 'หญิง', '43', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002369', 'นางเฉลียว คนหลัก', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002385', 'น.ส.ณิชาธร รสเผือก', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002396', 'น.ส.เนาวรัตน์ ช้างแจ้ง', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002398', 'นางสุนัน คุ้มหนู', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002407', 'น.ส.ปราณี ชูศรี', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002408', 'นางพวง คงสัมฤทธิ์', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002422', 'นางทวีพร ทุตะกิจ', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002423', 'นางดอกลักษ์ อู่ไทย', 'หญิง', '48', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002425', 'นางรัชดาวรรณ ทิพมาศ', 'หญิง', '31', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002442', 'น.ส.ธัญสินี ธุตะกิจ', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002459', 'น.ส.บันเทิง โคกพระปราง', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002475', 'นางบุญมี ภู่ใหม่', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002483', 'นางบัวลอย สังเที้ยม', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002485', 'นางบุญมี คงเลิศ', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002490', 'น.ส.สุวรรณ์ ดีศรี', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002500', 'นางทองทิพย์ รักแจ้ง', 'หญิง', '55', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002502', 'นางหริ่ง รสเผือก', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002513', 'นางสายสุนีย์ การะเกตุ', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002527', 'น.ส.ลำดวน อู่ไทย', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002532', 'นางจำเนียร เมณร์กุล', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002551', 'นางบุญมา ต๊กควรเฮง', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002558', 'น.ส.วินดา คล้อยแก้ว', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002564', 'น.ส.กาญจนา อุตมหาราช', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002568', 'นางสมพร ชูศรี', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002571', 'นางรัชนีย์ ใจรัก', 'หญิง', '60', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002587', 'นางขวัญแก้ว โพธิ์ดง', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002590', 'นางสร้อย ดีอินทร์', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002594', 'นางสงัด เทศสลุด', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002596', 'นางฉลอง พวงทอง', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002599', 'น.ส.ปรียาพร ยุพยงค์', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002605', 'น.ส.จันทิมา บุญเปรื่อง', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002610', 'น.ส.น้ำชา อ่อนศรี', 'หญิง', '39', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002611', 'น.ส.รัตนาภรณ์ เรืองสุกใส', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002613', 'น.ส.สมจิตร์ อ่ำโนนไพร', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002616', 'นางมาลิน พรมเสน', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002620', 'น.ส.ขวัญหล้า คงสัมฤทธิ์', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002621', 'นางรัชนีกร ฉิมมากรม', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002631', 'นางสุริษา บุญชื่น', 'หญิง', '35', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002636', 'น.ส.ลอม จันทร์หรีด', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002644', 'นางแดง รสเผือก', 'หญิง', '52', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002651', 'นางนกเล็ก พุ่มนุ่ม', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002657', 'นางประนอม การะเกตุ', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002667', 'นางสนม จันทรา', 'หญิง', '60', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002671', 'น.ส.วิสา ศรีปาน', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002674', 'นางมณี มีเครือรอด', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002676', 'นางแตงไทย มีเครือรอด', 'หญิง', '54', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002679', 'น.ส.สมลักษณ์ บุญมี', 'หญิง', '39', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002700', 'นางมณี เงินมั่นคง', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002718', 'นางสร้อย สุดวังยาง', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002723', 'นางอนงค์ ต๊กควรเฮง', 'หญิง', '48', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002729', 'นางณี รสเผือก', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002733', 'น.ส.กรกนก เผือกพงษ์', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002738', 'น.ส.สุมินตา พุ่มไพร', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002743', 'นางขวัญเวียง คงสัมฤทธิ์', 'หญิง', '40', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002745', 'น.ส.สุปราณี ศรีปาน', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002750', 'น.ส.เพ็ญศิริ โพธิ์กรับ', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002765', 'นางสอน คำเกิด', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002767', 'นางเดือน นวลจันทร์', 'หญิง', '41', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002769', 'น.ส.ทัศนีย์ มีเครือรอด', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002772', 'น.ส.จำเนียน พวงทอง', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002799', 'น.ส.จินดา คล้อยแก้ว', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002800', 'นางประเทือง เงินจันทร์', 'หญิง', '55', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002811', 'นางลำเจียร ศรีคง', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002815', 'นางนิดา ทับโนนทอง', 'หญิง', '53', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002854', 'นางลำใย โพธิ์ดง', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002861', 'นางเพลิน ยอดเกี้ยว', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002875', 'น.ส.จินตนา พวงทอง', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002896', 'นางน้ำฝน จันทร์หรีด', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002905', 'นางชวนชม เทศสลุด', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002912', 'นางฉลวย โชคนุ่ม', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002926', 'นางลำยงค์ ปุ่มสันเทียะ', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002947', 'นางบุษยา งามถ้อย', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002953', 'นางพรรณพษา โชคนุ่ม', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002956', 'นางบุญรัตน์ เอมพิณ', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '002972', 'นางสายฝน มหายนต์', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '003001', 'นางน้ำค้าง ศรีคง', 'หญิง', '53', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '003018', 'นางดอน สุดสลุด', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '003024', 'นางดวงรัตน์ ท้วมยัง', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '003026', 'น.ส.อุไร โพธิ์ทอง', 'หญิง', '55', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '003086', 'นางบุญเรือน แช่มช้อย', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '003090', 'นางจำเนียร ทองนวล', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '003108', 'นางสุภาภรณ์ มีเครือรอด', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '003136', 'นางบุลิน พรมมินทร์', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '003138', 'น.ส.บุญปลูก ศรีปาน', 'หญิง', '55', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '003149', 'นางวันเพ็ญ ทองคง', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '003150', 'นางอรธนิษฐ์ สรรพรอด', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '003151', 'นางเรียน ชูศรี', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '003168', 'น.ส.อธิชา รอดมณี', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '003173', 'นางนวลน้อง เงินจันทร์', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '003234', 'นางบัวขาว พลสงฆ์', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '003245', 'นางประทีป ภูมิผล', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '003376', 'น.ส.สุดาวรรณ ยิ่งยงสันต์', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '003380', 'นางสายพร อนันต์สุข', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '003402', 'นางวราภรณ์ นุ่มสุข', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '003525', 'นางเดือน เอี่ยมมูล', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '003555', 'น.ส.อมิตา อินทร์เพ็ญ', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '003558', 'น.ส.พัชรินทร์ ถิ่นวงษ์แย', 'หญิง', '33', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '003678', 'น.ส.ขวัญวดี ทองทับ', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '003717', 'นางรัตนา บุญเกิดกูล', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14057', '003718', 'น.ส.ชวนชื่น ดีอินทร์', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '000000181', null, 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '000013', 'นางจันทรา มั่งคั่ง', 'หญิง', '43', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '000025', 'นางนกเล็ก คร้ามชาวนา', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '000027', 'น.ส.สายฝน จันแดง', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '000028', 'นางสุพรรณ อยู่ชาวนา', 'หญิง', '44', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '000037', 'นางเยาวเรศ ประทุมทอง', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '000051', 'นางสมจิตร บานเย็นงาม', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '000060', 'นางประภา โพธิ์เจริญ', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '000062', 'นางสมพร อาจบึงลำ', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '000071', 'น.ส.ละมัย รุ่งอินทร์', 'หญิง', '40', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '000083', 'นางกันยา ดวงอุปะ', 'หญิง', '55', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '000090', 'นางกุหลาบ อุบลวัตร', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '000108', 'นางสมนึก ศรีสะอาด', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '000123', 'น.ส.วิรัตน์ ศรีสะอาด', 'หญิง', '41', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '000142', 'นางกัญญารัตน์ โห้ลพบุรี', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '000149', 'นางมาลัย มั่นมาตร์', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '000158', 'น.ส.ธนิต อ่ำเจริญ', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '000160', 'นางสิริพร กลัดเนินกุ่ม', 'หญิง', '44', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '000174', 'นางสังเวียน ทัศนะ', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '000191', 'นางอุไร รัสมี', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '000205', 'น.ส.เสาวนีย์ เมืองเอี่ยม', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '000237', 'นางจอย อิ่มแจ่ม', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '000238', 'นางยุพา มีชาวนา', 'หญิง', '40', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '000257', 'นางบุญช่วย รุ่งเรืองศักดิ์', 'หญิง', '55', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '000261', 'นางลำใย เอนกพงษ์', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '000266', 'นางทองพูน อยู่คล้าย', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '000286', 'นางชลดา รุ่งเรืองศักดิ์', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '000289', 'นางนพวรรณ์ ฤทธิ์เดช', 'หญิง', '31', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '000291', 'นางอำพร เปลี่ยนหยวก', 'หญิง', '51', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '000298', 'นางจิตรา โสภา', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '000309', 'นางชูศรี ศรีแก้ว', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '000322', 'นางมะปราง ศรีคำ', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '000324', 'นางสมบัติ กลิ่นบุญ', 'หญิง', '53', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '000327', 'นางสง่า พรมชาติ', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '000331', 'นางสมนึก คุ่ยชาวนา', 'หญิง', '35', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '000349', 'นางมนุช โห้ลพบุรี', 'หญิง', '40', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '000379', 'นางสุกัญญา ทับทิมทอง', 'หญิง', '42', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '000391', 'นางสมคิด พรมชาติ', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '000396', 'นางอำนวย กลัดเนินกุ่ม', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '000397', 'นางขวัญเรือน บุญชาวนา', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '000400', 'น.ส.เจริญ ชัยสุริยงค์', 'หญิง', '44', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '000402', 'นางรำไพ บุสโต', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '000446', 'นางบุญเสริม อยู่คล้าย', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '000483', 'นางยุพิน นุชบ้านป่า', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '000486', 'นางสุนทร ศรสี', 'หญิง', '58', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '000503', 'นางสมพงษ์ กลิ่นหอม', 'หญิง', '56', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '000512', 'นางจินตนา จันทร์ปาน', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '000531', 'นางถาวร อ่ำชาวนา', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '000553', 'นางสำรวย มณีท่าโพธิ์', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '000560', 'นางจวน พูนโพธิ์', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '000585', 'นางอำพรรณ กลัดเนินกุ่ม', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '000592', 'นางประภา อยู่สุข', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '000593', 'นางชรินทร์ กรองแก้ว', 'หญิง', '51', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '000606', 'นางสมหมาย สาสน', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '000617', 'นางทัศนีย์ เอมรักษา', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '000619', 'นางบุญยืน แย้มเสาธง', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '000627', 'นางราตรี สกุลณา', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '000635', 'นางสีไพร อยู่คล้าย', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '000641', 'นางรมย์ชลี ทองชาวนา', 'หญิง', '46', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '000646', 'นางนกแก้ว สกุลณา', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '000648', 'น.ส.สายยัญ รอดอินทร์', 'หญิง', '38', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '000655', 'นางอำไพร ปลื้มบัว', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '000684', 'นางถนอม เขียวกรุง', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '000688', 'นางวันเพ็ญ สายสุวรรณ', 'หญิง', '52', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '000719', 'นางมาลา สืบสอน', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '000738', 'น.ส.อรสา มีมาก', 'หญิง', '37', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '000755', 'น.ส.ลำใย กลัดเนินกุ่ม', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '000770', 'นางสมจิตร มั่นสาย', 'หญิง', '56', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '000787', 'นางบุญศรี ขำระหงษ์', 'หญิง', '57', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '000789', 'นางสมควร พระวินัย', 'หญิง', '47', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '000861', 'นางอรชร แปสันเทีย', 'หญิง', '38', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '000862', 'นางสังวาลย์ นุ้ยเย็น', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '000872', 'นางบุญย่อม กันสาด', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '000884', 'นางสมศรี ปานโต', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '000887', 'นางจันทร์เริง กลัดเนินกุ่ม', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '000888', 'นางเครือวัลย์ อ่อนชาวนา', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '000912', 'นางสารี่ อ่อนชาวนา', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '000954', 'นางมะลิ นาคศรี', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '000962', 'นางลำเพย พงษ์พานิช', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '000966', 'น.ส.วิภารัตน์ กึ่งวงค์', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '000970', 'นางวิลัย จันขะ', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '000974', 'นางสายใจ ชอนบุรี', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '001009', 'นางสำเริง มงคลสุข', 'หญิง', '54', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '001041', 'นางอารัตน์ ปลื้มบัว', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '001054', 'นางมานัส เที่ยงทอง', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '001104', 'นางสมจิตร เอี่ยมสอิ้ง', 'หญิง', '56', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '001105', 'นางบุญเลี้ยง เรืองบ้านโคน', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '001126', 'นางประหยัด ปลื้มบัว', 'หญิง', '59', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '001129', 'น.ส.เรียม กุลสุข', 'หญิง', '43', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '001171', 'นางบังอร พระวินัย', 'หญิง', '46', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '001182', 'นางชิน ภู่โม้', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '001183', 'นางจำเรียง พงษ์พานิช', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '001188', 'นางกำไร กลัดเนินกุ่ม', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '001219', 'นางมัทนา กลัดเนินกุ่ม', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '001223', 'นางธัญวรัตน์ อินทร์ภู่', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '001225', 'นางน้ำทิพย์ อยู่คล้าย', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '001283', 'นางอรอนงค์ อินทรัตน์', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '001290', 'นางอ้อมใจ สมนาค', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '001300', 'นางพยอม ปลื้มบัว', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '001302', 'นางส้มจีน พงษ์พานิช', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '001303', 'นางมณี เซาะดี', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '001308', 'นางประไพ กลิ่นหอม', 'หญิง', '36', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '001315', 'นางรอน ช่วงโชติ', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '001316', 'นางสุฎาภรณ์ กันแคล้ว', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '001334', 'นางประจบ สินอำพล', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '001360', 'น.ส.ลิ้นจี่ อยู่คล้าย', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '001391', 'นางบุญเลิศ ชอนบุรี', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '001403', 'นางสนม อ่อนชาวนา', 'หญิง', '46', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '001406', 'นางสำลัด กลัดเนินกุ่ม', 'หญิง', '51', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '001422', 'นางอำนวย จันขะ', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '001423', 'น.ส.สุดชดา เขียวอุไร', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '001434', 'นางคำโหมง จันทร์ท่าฬ่อ', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '001447', 'นางลำพรวน อ่ำปั้น', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '001479', 'น.ส.บุญสร้าง เม่นชาวนา', 'หญิง', '40', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '001509', 'นางพรรณา เพชรเสนา', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '001574', 'น.ส.ปราณี จันขะ', 'หญิง', '34', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '001584', 'นางอุทัย ใจอารี', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '001615', 'นางทวีพร มั่นสาย', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '001616', 'นางยุพา พงษ์พานิช', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '001649', 'นางลำดวน ศรีษะแย้ม', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '001669', 'นางมดจริน วัดยิ้ม', 'หญิง', '47', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '001670', 'นางนุกูล อุทัยเรือง', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '001683', 'น.ส.กลอย พงษ์พานิช', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '001684', 'นางสำเริง คุ้มสมบัติ', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '001689', 'นางจิ๋ว มิ่งขวัญ', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '001702', 'นางเขียว ก้อนทอง', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '001703', 'น.ส.แตงอ่อน ชอนบุรี', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '001727', 'นางพัชลี บานเย็นงาม', 'หญิง', '40', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '001729', 'นางศิริเพ็ญ กลัดเนินกุ่ม', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '001758', 'นางวีระ ชวดชาวนา', 'หญิง', '44', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '001766', 'นางสมรวม กรองแก้ว', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '001821', 'นางพรรณี สุขพัฒน์', 'หญิง', '51', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '001843', 'น.ส.วันวิสา อ่อนชาวนา', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '001854', 'นางอรวรรณ์ บุสโต', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '001855', 'น.ส.ดาวรุ่ง คุ้มสมบัติ', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '001860', 'น.ส.ตรีภัทร จิตรทอง', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '001889', 'นางเฉลย อ่อนชาวนา', 'หญิง', '54', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '001906', 'นางวรรณา ลือชายุทธศิลป์', 'หญิง', '58', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '001909', 'นางสุวรรณา พิรุณศาสตร์', 'หญิง', '51', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '001958', 'นางบุญส่ง อินขำวงษ์', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '001960', 'นางลัดดา พุ่มเพชรสา', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '001968', 'นางบุญเติม อุดอิว', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '001991', 'นางตุ่มตา แดงชาวนา', 'หญิง', '51', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '001999', 'น.ส.กรวิภา ทองชาวนา', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '002019', 'น.ส.แหวน คำงาม', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '002032', 'นางสุมาลี แย้มเสาธง', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '002074', 'นางนิอร กลัดเนินกุ่ม', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '002079', 'นางล้วน อ่อนชาวนา', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '002112', 'นางลำเจียน พงษ์พานิช', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '002127', 'นางสำรวย คุ้มสมบัติ', 'หญิง', '47', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '002134', 'นางวน กาสา', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '002144', 'น.ส.ดาราทิพย์ กลัดเนินกุ่ม', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '002169', 'นางชั้น กลัดเนินกุ่ม', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '002173', 'นางเรียม ภู่ระหงษ์', 'หญิง', '45', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '002177', 'นางลำยอง ศรีม่วง', 'หญิง', '51', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '002189', 'นางจำนงค์ เชิดเชื้อ', 'หญิง', '46', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '002198', 'น.ส.สมจิตร โห้ลพบุรี', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '002219', 'นางจำนงค์ กลัดเนินกุ่ม', 'หญิง', '55', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '002221', 'นางบุญเรือน ภู่โม้', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '002234', 'น.ส.วิมล ชอนบุรี', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '002254', 'นางมัทนา ชนะชัยศึก', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '002268', 'นางลำใย ลำปะละ', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '002281', 'นางอำพร จันทร์สนอง', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '002283', 'นางวรรณา พิรุณศาสตร์', 'หญิง', '57', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '002288', 'นางไห้ สารวิก', 'หญิง', '58', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '002289', 'นางวรรณา เที่ยงแท้', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '002292', 'นางสมจิตร วงศ์สภา', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '002315', 'น.ส.บุญช่วย กลัดเนินกุ่ม', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '002316', 'นางบุญเรือน ภู่ระหงษ์', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '002331', 'นางประนอม คำนนท์', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '002333', 'น.ส.สมพร สุวรรณรัตน์', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '002334', 'นางอรทัย บานม่วง', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '002339', 'นางพรพรรณ กลัดเนินกุ่ม', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '002350', 'น.ส.อัญชลี แก้วเกตุ', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '002382', 'นางเสาวภา โห้ลพบุรี', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '002393', 'นางรุ่งนภา ศีรษะแย้ม', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '002405', 'นางชะอ้อน ชอนบุรี', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '002412', 'นางเทียน เซาะดี', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '002469', 'น.ส.บุญช่วย ฮังนนท์', 'หญิง', '37', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '002507', 'นางอนันต์ อาจบัว', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '002510', 'นางแตงอ่อน ศรีม่วง', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '002514', 'นางอรุณ มณีท่าโพธิ์', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '002549', 'น.ส.รั่นทม แก้วเกตุ', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '002563', 'นางกาหลง ทับทิม', 'หญิง', '51', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '002571', 'นางสายทอง เชิดเชื้อ', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '002574', 'นางวันเพ็ญ ศรีสะอาด', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '002588', 'นางวรรณา จันขะ', 'หญิง', '36', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '002589', 'นางวัชรี ป่าเขียว', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '002596', 'น.ส.อดุล สกุลณา', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '002603', 'นางประเทือง กลิ่นแย้ม', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '002606', 'นางรำเภา ชวดชาวนา', 'หญิง', '37', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '002632', 'นางพิมพ์นิภา สุวรรณรัตน์', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '002642', 'น.ส.ละเมียด กลัดเนินกุ่ม', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '002657', 'น.ส.ชื้น สุขครีพ', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '002659', 'น.ส.นิตย์ยา ศรีม่วง', 'หญิง', '49', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '002711', 'นางอารีรัตน์ ปลื้มบัว', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '002718', 'นางบุญนะ จันชาวนา', 'หญิง', '39', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '002721', 'นางอุสา อินขำวงษ์', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '002723', 'นางมาลัย กอนเทียน', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '002725', 'นางประดิษฐ์ สุวรรณรัตน์', 'หญิง', '55', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '002744', 'น.ส.สุรี อินทร์ภู่', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '002745', 'น.ส.สมหมาย พระศุกร์', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '002750', 'น.ส.สำราญ กรองแก้ว', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '002759', 'นางทับทิม ก้อนคำ', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '002761', 'นางปรานอม สังข์ทอง', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '002766', 'นางอารมย์ ยอมสุข', 'หญิง', '53', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '002776', 'น.ส.ลำพันธ์ พระวินัย', 'หญิง', '45', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '002807', 'นางเพลินตา พงษ์พานิช', 'หญิง', '47', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '002814', 'นางสายหยุด แดงชาวนา', 'หญิง', '50', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '002821', 'น.ส.เกษร รัสมี', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '002830', 'นางสมปอง สุนา', 'หญิง', '60', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '002831', 'นางทุเรียน ศรีสะอาด', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '002856', 'นางถวิล บุศโต', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '002860', 'น.ส.ประทุม มัจฉิม', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '002878', 'น.ส.องุ่น คุ่ยชาวนา', 'หญิง', '52', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '002893', 'นางกอบแก้ว สังข์หร่าย', 'หญิง', '55', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '002901', 'นางเรณู เรืองจุ้ย', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '002913', 'นางสมบัติ นุชบ้านป่า', 'หญิง', '49', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '002923', 'นางพัตร บุญพยอม', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '002937', 'นางจำเรียง สีตองอ่อน', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '002945', 'นางสังวาลย์ คงนก', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '002964', 'น.ส.ดวง กลิ่นจันทร์', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '002973', 'นางบุญเรือน สินอำพล', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '002974', 'นางสนอง โคกทอง', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '002976', 'นางวัชรี จีนชาวนา', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '002990', 'นางบังอร แดงชาวนา', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '003004', 'นางสงวน นุชบ้านป่า', 'หญิง', '57', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '003044', 'น.ส.ลำพู อยู่คล้าย', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '003055', 'นางลำเจียก ภู่โม้', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '003079', 'นางลัดดา มีสอน', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '003101', 'น.ส.สมนึก อยู่คล้าย', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '003107', 'นางประเสริฐ ชวดชาวนา', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '003120', 'น.ส.กาญจนา คชนุช', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '003173', 'นางละออง สุวิธี', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '003181', 'นางน้ำเต้า กลัดเนินกุ่ม', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '003209', 'น.ส.สร้อยสุดา ศรีม่วง', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '003211', 'นางสวาท จันโตนด', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '003212', 'นางจีรวรรณ อ่อนชาวนา', 'หญิง', '49', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '003226', 'นางสมพร ไข่แก้ว', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '003244', 'นางวาสนา ทับทิม', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '003245', 'น.ส.เนตรทราย นิตสร้อย', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '003251', 'นางบุญเสริม ปลื้มบัว', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '003268', 'นางขวัญภิรมย์ พึ่งน่วม', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '003287', 'นางปานทิพย์ สินดิษฐ', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '003322', 'น.ส.สมศรี สาดศรี', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '003335', 'น.ส.นลิน ช่วงโชติ', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '003338', 'น.ส.ลำปราง ช่วงโชติ', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '003339', 'น.ส.ระยอง ช่วงโชติ', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '003341', 'น.ส.พยุง บุญชาวนา', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '003362', 'น.ส.อรษา ธรรมชาติ', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '003389', 'นางศรีไพร โคกทอง', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '003405', 'น.ส.สมพร อยู่คล้าย', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '003481', 'นางหทัยชนก วัชระประหาส', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '003530', 'นางสมนึก ศรีษะแย้ม', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '003536', 'นางน้ำค้าง ศรีษะแย้ม', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '003546', 'น.ส.นวพรรษ เอมรักษา', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '003569', 'นางสายหยุด พลายชุมพล', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '003596', 'น.ส.กำไร ม่วงศรี', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '003604', 'นางสมคิด สินชู', 'หญิง', '48', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '003606', 'นางประภา จันขะ', 'หญิง', '57', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '003613', 'นางกัลยรัตน์ ภู่พกา', 'หญิง', '50', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '003622', 'นางวราภรณ์ แสงสุวรรณ', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '003624', 'นางปราณี เลิศคง', 'หญิง', '55', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '003635', 'นางบุญล้ำ อัจฉริยกุล', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '003636', 'นางสิเรียม กุศล', 'หญิง', '56', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '003658', 'นางสำราญ เที่ยงทอง', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '003665', 'นางวาสนา จันทร์สิงห์', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '003680', 'น.ส.จันทร์แรม พึ่งน่วม', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '003686', 'นางกาหลง สุขพัฒน์', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '003690', 'นางสำรวม เทียนเฮง', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '003699', 'นางจินตนา ยอมสุข', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '003727', 'นางสายฝน ปานโต', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '003738', 'นางอำนวย คำนนท์', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '003743', 'นางบังอร กลัดเนินกุ่ม', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '003749', 'นางน้ำอ้อย ปานโต', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '003766', 'น.ส.ทุเรียน ศรีม่วง', 'หญิง', '41', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '003778', 'นางปณิศา วรรณศรี', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '003825', 'นางวรรณา ชมฤทธิ์', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '003850', 'นางละไม จิตตริด', 'หญิง', '41', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '003852', 'นางบังอร นุชทัพ', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '003857', 'นางจันทร์จิรา คงสมบัติ', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '003894', 'น.ส.บังอร สุวรรณรัตน์', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '003925', 'น.ส.รัชดาภรณ์ จงชิดกลาง', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '003948', 'นางวีณา รุ่งเรืองศักดิ์', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '003958', 'นางธัญญรัตน์ โห้ลพบุรี', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '003970', 'นางนงค์รักษ์ ชัยสุริยงค์', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '003972', 'นางบังอร ศรีษะแย้ม', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '003978', 'น.ส.เครือวัลย์ ป่าเขียว', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '003984', 'น.ส.นิ่มนวล สร้อยศรี', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '004014', 'นางยุพิน โคกทอง', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '004022', 'นางบุญช่วย อยู่คล้าย', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '004040', 'น.ส.กันจนา จงสถิตย์สุข', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '004070', 'น.ส.สมคิด อินทร์ภู่', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '004077', 'น.ส.กนกพร ทองสมบุญ', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '004089', 'นางลัดดา สดใส', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '004094', 'นางบรรเจิด สงแจ้ง', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '004096', 'นางรัชนี ทัศนะ', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '004138', 'น.ส.บุษกร แดงชาวนา', 'หญิง', '30', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '004180', 'นางวิพาวี นุชทัพ', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '004203', 'น.ส.ลูกน้ำ เบ้าช้างเผือก', 'หญิง', '34', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '004210', 'น.ส.ยุพิน กลัดเนินกุ่ม', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '004216', 'น.ส.สมจิตร พรมชาติ', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '004217', 'น.ส.วิภาอังคนาง ศรีสะอาด', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '004224', 'น.ส.มานิตย์ เชิดเชื้อ', 'หญิง', '43', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '004247', 'น.ส.สุนิสา ศรีษะแย้ม', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '004290', 'น.ส.อนัน รอดอินทร์', 'หญิง', '52', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '004297', 'นางวันเพ็ญ คำผลึก', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '004313', 'นางสมโชค ชวดชาวนา', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '004344', 'น.ส.นุกูล อ่ำชาวนา', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '004363', 'น.ส.นฤมล นุชทัพ', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '004364', 'น.ส.นพมาศ นุชทัพ', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '004400', 'น.ส.อำพร โคกทอง', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '004408', 'นางสมจิตร อินทร์ภู่', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14058', '004418', 'น.ส.เรณู จงสถิตย์สุข', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000000395', 'นางบุญถ่ำ มูลยิ้ม', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000000406', 'น.ส.ประถม เรืองจุ้ย', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000003', 'น.ส.ยุพิน นิลสนิท', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000004640', 'นางสังวาลย์ มารบุรี', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000004805', 'น.ส.วันทอง ศรีจูม', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000006', 'นางลำพรวน นิลสนิท', 'หญิง', '54', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000008', 'นางมะลิ กัณหา', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000010', 'นางสำรวย คุยสี', 'หญิง', '57', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000032', 'นางถนอม สมรา', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000040', 'น.ส.ไพเราะ พงษ์ประยูร', 'หญิง', '30', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000045', 'น.ส.จิตรตรา รักคง', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000051', 'นางบัวผุด รักคง', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000064', 'นางทิวาพร จำปาศักดิ์', 'หญิง', '52', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000077', 'นางสังวาล กิจจา', 'หญิง', '52', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000086', 'นางประทวน พิมต้น', 'หญิง', '59', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000109', 'น.ส.ทอง ทองดอนน้อย', 'หญิง', '55', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000122', 'น.ส.สุวรรณ มาลาอุบล', 'หญิง', '56', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000128', 'นางม้อย กัณหา', 'หญิง', '56', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000131', 'นางสุดใจ ยอดจันทร์', 'หญิง', '59', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000137', 'นางนิ่มนวล พาศรี', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000141', 'น.ส.เสมอ แสนมี', 'หญิง', '58', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000144', 'นางบุญมี ชาญสมร', 'หญิง', '51', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000148', 'นางอมร เชาว์เครือ', 'หญิง', '54', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000159', 'น.ส.อารีย์ สอนสุด', 'หญิง', '50', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000166', 'นางดวงเดือน ทองดี', 'หญิง', '46', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000175', 'น.ส.อุษณี ทองดี', 'หญิง', '45', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000211', 'นางประยงค์ โพธิ์หอม', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000231', 'น.ส.โสภา บางสร้อย', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000237', 'นางพเยาว์ ขวัญทอง', 'หญิง', '55', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000256', 'นางทองจันทร์ เสาหอม', 'หญิง', '57', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000260', 'นางทองหยิบ เสาหอม', 'หญิง', '60', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000268', 'น.ส.ลำดวน เสาหอม', 'หญิง', '45', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000278', 'นางบุญส่ง แจ้งใจ', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000279', 'นางถนอมศรี มหา', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000280', 'น.ส.บังอร มหา', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000285', 'นางถนอม สุระเสียง', 'หญิง', '56', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000289', 'นางสาคร สุขนาบัว', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000295', 'นางนภาพร สมรา', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000301', 'นางลักษณ์ผทัย ทองรุ่งชุมมณีย์', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000323', 'นางประทุม รักกระโทก', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000325', 'นางชลอ สุขยงค์', 'หญิง', '56', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000330', 'นางสุมาลี เขตต์งาม', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000340', 'นางสมพร บัวขาว', 'หญิง', '43', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000342', 'นางลำดวน แก้วใส', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000349', 'นางสมปอง อินทนิล', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000355', 'นางชนิกานต์ เอนกพงษ์', 'หญิง', '47', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000357', 'น.ส.สาคร หินตั้ง', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000361', 'นางสมพร ชาติดำรงค์', 'หญิง', '57', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000369', 'น.ส.สำลี เชิดเชื้อ', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000376', 'นางทองคำ ลีเกษมพันธุ์', 'หญิง', '50', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000380', 'น.ส.ไล แก้วมุกดา', 'หญิง', '52', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000388', 'นางดอกรัก ผลสุด', 'หญิง', '50', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000389', 'นางบรรจง ชุ่มทวี', 'หญิง', '50', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000401', 'น.ส.สุริวิภา จุ่นน้อย', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000403', 'น.ส.ดวงมาน จุ่นน้อย', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000405', 'นางน้อย ใจทัน', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000410', 'น.ส.สุทิศา พิกุลเงิน', 'หญิง', '35', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000411', 'นางสนั่น พิกุลเงิน', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000419', 'นางสำเริง ชุมพร', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000432', 'น.ส.ณัชชนก มูลยิ้ม', 'หญิง', '47', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000441', 'นางโสพี ยาทา', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000450', 'น.ส.เล็ก นิลสนิท', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000456', 'น.ส.แววตา นิลสนิท', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000474', 'นางสมัย ทองบุปผา', 'หญิง', '56', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000475', 'น.ส.ทัศนียา แก้วมั่น', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000480', 'น.ส.วินิดา พึ่งน่วม', 'หญิง', '33', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000481', 'นางลำเทียน ดวงรัตน์', 'หญิง', '57', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000486', 'นางมณฑา ผลสุด', 'หญิง', '55', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000501', 'นางสันติ ทองทาศรี', 'หญิง', '58', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000502', 'น.ส.นฤภร ทองทาศรี', 'หญิง', '34', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000514', 'นางสุทิน วิวัฒน์', 'หญิง', '56', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000517', 'น.ส.สมบูรณ์ ศรีจู', 'หญิง', '60', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000534', 'น.ส.สุรินทร์ น้อยอามาตย์', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000538', 'นางอุษา อินโส', 'หญิง', '36', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000547', 'นางศรีไพร สิทธิศักดิ์', 'หญิง', '59', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000552', 'นางอรวรรณ น้อยอามาตย์', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000555', 'นางยุพิน นารายณ์', 'หญิง', '53', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000560', 'น.ส.จำปา ยาทา', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000570', 'นางกุหลาบ ยาทา', 'หญิง', '55', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000575', 'นางจันมา เชื้อชาติ', 'หญิง', '58', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000583', 'นางสุวรรณ สมรา', 'หญิง', '55', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000588', 'นางเสงี่ยม ยาทา', 'หญิง', '56', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000592', 'น.ส.กาญจนา อุ่นเจริญ', 'หญิง', '42', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000599', 'น.ส.อำพัน ปานโต', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000605', 'นางติ๋ม พลสิงห์', 'หญิง', '54', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000612', 'น.ส.เบญจวรรณ พรมชาวเสียง', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000624', 'นางสายยันต์ จันอักษร', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000634', 'นางอัมพร บุญเสมา', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000675', 'น.ส.สมพร ศรีคำ', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000683', 'นางอำพัน พลสิงห์', 'หญิง', '45', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000692', 'นางจำลอง ศรีคำ', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000702', 'น.ส.โสภา เผือกงาม', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000712', 'นางลำพูน อินสถิตย์', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000732', 'น.ส.วิไลพร คิพงษ์', 'หญิง', '52', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000745', 'นางนงลักษณ์ คุ้มไพบูลย์', 'หญิง', '44', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000763', 'นางสุวรรณา นิลสนิท', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000789', 'นางพัสตราภรณ์ ทองหลอม', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000796', 'นางสมจิตร แก้วทิม', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000798', 'นางบุญลือ อยู่คุ้ม', 'หญิง', '59', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000813', 'นางจันที ชัยธารักษ์', 'หญิง', '58', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000822', 'นางสุกัญญา เวชสวรรค์', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000826', 'นางใจ เทศทาบ', 'หญิง', '60', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000833', 'นางวิภา ยาวีละ', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000841', 'นางมาลัย วงค์ชื่น', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000859', 'นางทองสาย จันทร์กลิ่น', 'หญิง', '45', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000866', 'นางบัวแก้ว รัศมี', 'หญิง', '42', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000882', 'นางประดับ พงศ์ศรี', 'หญิง', '44', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000894', 'นางมลทิน อินโส', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000906', 'นางกาญจนา ช้อนทิพ', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000940', 'นางสำเภา สกุลอินทร์', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000977', 'นางจำเริญ ยาทา', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '000985', 'นางสายไหม สนธิดี', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001006', 'นางติ๋ม ทะยอม', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001010', 'นางเหวียง ภู่ขาว', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001019', 'นางปราณี แก้วจันทร์ฉาย', 'หญิง', '57', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001050', 'นางจารนัย แดงเดช', 'หญิง', '57', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001054', 'นางพล้อม เกินวงค์', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001107', 'นางบุญมี เศรษฐสิงห์', 'หญิง', '57', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001111', 'น.ส.วันดี พุ่มเกตุ', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001115', 'นางลำพู พุ่มเกตุ', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001124', 'น.ส.ศิริเพ็ญ อัคระจาคะ', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001125', 'นางศิริพร เชยชูศรี', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001128', 'นางจันหา ดีพิจารณ์', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001132', 'นางวรรณภา ลีมี', 'หญิง', '45', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001138', 'นางสมหมาย เข็มกลัด', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001139', 'นางวนิดา แพรสุรินทร์', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001144', 'นางวาสนา แพรสุรินทร์', 'หญิง', '44', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001149', 'นางสังวาลย์ แพรสุรินทร์', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001151', 'นางสงัด แพรสุรินทร์', 'หญิง', '40', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001156', 'นางภูมรินทร์ ประจงบัว', 'หญิง', '46', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001187', 'นางสำเนียง อัมภาภรณ์', 'หญิง', '54', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001204', 'นางละเอียด คุ้มไพบูลย์', 'หญิง', '59', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001222', 'นางประสิทธิ์ พิมพ์ต้น', 'หญิง', '54', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001238', 'น.ส.สาหร่าย พงษ์ศรี', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001248', 'นางแสงอรุณ แดงเดช', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001255', 'นางกัญญา จาระพิมพ์', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001256', 'นางทองยุ่น ใจยะตา', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001258', 'นางรำพึง แก่นใจเด็ด', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001261', 'นางสมพร คัญทับ', 'หญิง', '46', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001265', 'นางณัฐฌา รังคะอุไร', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001267', 'นางแดง แพรสุรินทร์', 'หญิง', '56', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001270', 'นางมาลี เรืองจุ้ย', 'หญิง', '49', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001279', 'นางสมบูรณ์ เกตุมณี', 'หญิง', '48', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001285', 'นางสัมราญ ป้อมสาหร่าย', 'หญิง', '47', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001290', 'นางอำพันธ์ พุทธา', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001303', 'นางคำปัน ศรีสุข', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001304', 'นางธัญญรัตน์ มิตรอุดม', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001309', 'นางสุภนิช กองแกน', 'หญิง', '48', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001320', 'นางวันเพ็ญ ขุนด่าน', 'หญิง', '43', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001322', 'นางประเจิด นารี', 'หญิง', '47', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001361', 'น.ส.นิตยา อ่ำอินทร์', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001364', 'นางคำ อ่ำอินทร์', 'หญิง', '55', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001368', 'นางวันดี สระทองจันทร์', 'หญิง', '50', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001371', 'นางสนุน คำมา', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001375', 'นางบัวโรย ยาทา', 'หญิง', '45', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001378', 'น.ส.สมนึก นุชนารถ', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001380', 'นางสายทอง นุชนาถ', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001385', 'น.ส.กำไร พันเชียง', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001387', 'น.ส.สมหวัง พันเชียง', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001395', 'น.ส.บัวศรี ชัยธรรมมา', 'หญิง', '56', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001398', 'นางทองสุข บุญทา', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001408', 'นางรุ่งลักษมี ยาทา', 'หญิง', '49', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001413', 'นางณีรนาถ งามเสด็จ', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001415', 'นางมาลัย ยาทา', 'หญิง', '48', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001418', 'นางสาหร่าย อินโส', 'หญิง', '48', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001423', 'นางทิพย์ เงินกลั่น', 'หญิง', '50', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001431', 'นางสุวรินทร์ แสงงาม', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001437', 'นางสำเนียง มนนามอญ', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001445', 'นางอารี ตะสี', 'หญิง', '58', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001449', 'นางกำไร เกตุพิจิตร', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001457', 'น.ส.บัวล้อม สาโท', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001465', 'นางอรวรรณ ยาทา', 'หญิง', '36', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001466', 'น.ส.จำเนียร จันทร์ทองอุ่น', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001468', 'นางสมจิตร ผลสุด', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001471', 'นางบังอร ผลสุด', 'หญิง', '58', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001502', 'นางรพีพร มากอิ่ม', 'หญิง', '44', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001521', 'นางบุญชิด แดงดี', 'หญิง', '45', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001526', 'นางสุนัน ลีมี', 'หญิง', '48', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001529', 'น.ส.ปัทมาวดี เกตุพิจิตร', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001533', 'นางเสาวคนธ์ เสียงเล็ก', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001544', 'นางเพ็ญจิต อุเทนคำ', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001554', 'นางดวงจันทร์ สุวรรณหงษ์', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001564', 'นางบัวลอย เขียวนุ่ม', 'หญิง', '37', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001567', 'นางทองวุ่น เขียวนุ่ม', 'หญิง', '52', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001574', 'นางเดือน จันทร์ทองอุ่น', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001581', 'นางปาริชาติ บุญทา', 'หญิง', '31', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001583', 'นางสุธินี อ้นชาวนา', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001584', 'นางสวิล ดารา', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001594', 'นางรัชนี ยาทา', 'หญิง', '39', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001601', 'นางสุดา แก้วทองคำ', 'หญิง', '59', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001616', 'นางอำพร สิบหมื่นเปี่ยม', 'หญิง', '47', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001623', 'นางสำริด ผลจันทร์', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001634', 'นางรัชชนก ชูเพ็ชร', 'หญิง', '57', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001648', 'นางไฉน รุ่งสวัสดิ์', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001664', 'นางสุมารี โสสารี', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001693', 'นางสนม กัณหา', 'หญิง', '49', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001698', 'นางคำไม กัณหา', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001733', 'น.ส.ดวงใจ จาระพิมพ์', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001745', 'นางสวรรค์ แม่นแต้ม', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001764', 'น.ส.สาว แย้มดา', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001769', 'น.ส.บัวลอย เที่ยงขันธ์', 'หญิง', '46', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001771', 'นางบัวพา ผลสุด', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001781', 'น.ส.โถม เรืองจุ้ย', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001784', 'นางจเร สุขอนันต์', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001795', 'น.ส.ชมศรี ทับหัวหนอง', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001802', 'น.ส.สมคิด พันรุณ', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001819', 'น.ส.อมร เต๋รอด', 'หญิง', '46', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001823', 'น.ส.สม โสขำ', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001834', 'นางสำรวย เข็มอินทร์', 'หญิง', '50', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001842', 'นางสมจิตร ทองขาว', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001843', 'นางสมจิตร ผลสุด', 'หญิง', '34', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001850', 'นางบุญสม ยาทา', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001852', 'นางอนงค์ เข็มอินทร์', 'หญิง', '42', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001860', 'นางลำไพร สถิตชล', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001867', 'นางดวงกมล เมืองไทร', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001871', 'นางสายฝน โตทุ้ย', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001902', 'นางสวาท บุญสวัสดิ์', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001916', 'นางณัฐทญา นามวงษ์', 'หญิง', '34', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001918', 'นางนิรันดร์ เขียวนุ่ม', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001921', 'น.ส.ชลอ พินิจ', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001935', 'นางถั่ม มูลยิ้ม', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001956', 'นางสำราญ ชุ่มเย็น', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001959', 'น.ส.นงค์เยาว์ แจ่มศิริ', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001960', 'นางหยุด แจ่มศิริ', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '001971', 'นางอุ่น ใจสุข', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '002005', 'นางสำนัก สิทธิศักดิ์', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '002040', 'นางแฉล้ม ภู่น้อย', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '002063', 'นางสุดใจ อุ้ยหะ', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '002067', 'น.ส.โสพิศ ห้าวหาญ', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '002111', 'น.ส.จีรพรรณ วุฒิสาร', 'หญิง', '40', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '002120', 'นางเฉลา ทุมมา', 'หญิง', '39', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '002182', 'น.ส.สมนึก อุ้ยหะ', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '002222', 'นางชลอ พาสานะ', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '002332', 'นางสุวรรณ บุญมี', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '002384', 'น.ส.ประไพ น้อยตั้ง', 'หญิง', '56', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '002476', 'น.ส.ปราเนียม อุมะ', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '002502', 'นางวนารินทร์ นิลสนิท', 'หญิง', '43', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '002571', 'น.ส.มาเวียง เทียนขำ', 'หญิง', '54', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '002614', 'นางระพีพรรณ คำพิลานนท์', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '002674', 'นางนิยม สาโท', 'หญิง', '48', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '002758', 'นางประนอม คำมา', 'หญิง', '51', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '002770', 'นางพิม กลัดกลุ่ม', 'หญิง', '46', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '002773', 'นางมาลี งิ้วลาย', 'หญิง', '46', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '002817', 'นางทับทิม ยาทา', 'หญิง', '45', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '002847', 'นางบรรจง อ่ำสิงห์', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '002878', 'นางไพรวัลย์ ศรีจูม', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '002923', 'นางต้อย ดารา', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '002933', 'น.ส.น้ำอ้อย บุตรน้ำเพชร', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '002944', 'นางดาหวัน อินโส', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '002966', 'นางจำนงค์ เสาหอม', 'หญิง', '42', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '003009', 'น.ส.สมจิตร ยาทา', 'หญิง', '37', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '003044', 'น.ส.บุญสงค์ อุ่มกล้วย', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '003068', 'นางอุไร ชัยศรี', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '003078', 'นางบุญส่ง ชูจิตร', 'หญิง', '58', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '003079', 'นางฉลอง สุดใจ', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '003085', 'นางสุภา ลาภเจริญ', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '003101', 'นางลำใย อินทร์แก้ว', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '003118', 'น.ส.วาสนา ห้าวหาญ', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '003152', 'นางลำพรวน ยาทา', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '003177', 'น.ส.นงค์นุช ขันทา', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '003242', 'น.ส.สมหญิง พรมชาวเสียง', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '003266', 'น.ส.สมจิต พาสานะ', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '003288', 'นางอัจฉราวดี น้อยตั้ง', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '003386', 'นางสมคิด จันวรรณ', 'หญิง', '38', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '003407', 'นางจำรัส บุญมี', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '003421', 'นางรอด แดงเดช', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '003425', 'นางสมบัตร อินโส', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '003439', 'นางลำยอง พูลแช่ม', 'หญิง', '50', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '003502', 'น.ส.กัณหา บุญธรรม', 'หญิง', '43', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '003521', 'นางรัชนี บัวฉิม', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '003556', 'นางมะลิ กรมหัวไผ่', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '003571', 'นางสมจิตร อุ้ยหะ', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '003589', 'น.ส.น้อย อุมะ', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '003625', 'นางสง่า กาสีทอง', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '003689', 'นางวันดร วงค์ชื่น', 'หญิง', '55', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '003733', 'น.ส.บังอร แจ่มศิริ', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '003799', 'นางสำเนียง แก้วสุข', 'หญิง', '53', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '003811', 'น.ส.ฉลวย น้อยตั้ง', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '003824', 'นางบรรจง สุขศิริ', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '003855', 'นางจรูญ แย้มลำใย', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '003887', 'นางปราณี เขียวพุ่มพ่วง', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '003950', 'น.ส.รัตนา ขันทา', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '003985', 'นางรอยพิมพ์ รัตนเลิศ', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '004063', 'นางสำราญ กัญหา', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '004064', 'น.ส.ประทุมทิพย์ ทองขาว', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '004079', 'นางถวิล ศรีฤทธิ์', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '004082', 'นางสมปอง มะหะสุ', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '004152', 'นางสำเริง เมืองพรม', 'หญิง', '49', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '004200', 'นางละมัย น้อยตั้ง', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '004202', 'นางสมพิศ สมสาร', 'หญิง', '39', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '004207', 'น.ส.คมเดือน เขตต์งาม', 'หญิง', '51', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '004210', 'นางบุญเรือน บู่ทอง', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '004241', 'นางแจ๋ว กาญจนารักษ์', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '004260', 'นางสำเภา เถาอวน', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '004274', 'นางประนอม ปรางทับทิม', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '004291', 'นางนารถนภา พินิจ', 'หญิง', '40', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '004336', 'นางคนึงนิตย์ กัณหา', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '004393', 'นางชม้อย แจ่มศิริ', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '004428', 'นางสุภาพ โสสารี', 'หญิง', '44', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '004482', 'น.ส.อรทัย รัตนเลิศ', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '004513', 'นางสมาน บุญทา', 'หญิง', '60', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '004550', 'นางสุพัตรา ทาดา', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '004576', 'นางประคอง อุมะ', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '004612', 'น.ส.ศรีแพร ใจทัน', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '004627', 'นางอารีย์ ศรีจูม', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '004639', 'น.ส.มาลี เพ็งท่าฬ่อ', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '004644', 'นางเรณู น้อยตั้ง', 'หญิง', '56', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '004662', 'นางทองใบ กัณหา', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '004710', 'นางทองแดง มะณีเติม', 'หญิง', '40', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '004779', 'นางบุญหยัน โพธิบัติ', 'หญิง', '52', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '004788', 'นางตุ่น ศรีอนันต์', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '004812', 'น.ส.สายสุนีย์ ยาทา', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '004832', 'นางวันเพ็ญ เศรษฐ์สิงห์', 'หญิง', '54', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '004989', 'นางมะลิ ผลสุด', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '005048', 'นางบุญเลิศ ดวงพรม', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '005076', 'นางสอิ้ง จันตูม', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '005152', 'น.ส.วาสนา ยาทา', 'หญิง', '33', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '005160', 'น.ส.อภิญญา บัวฉิม', 'หญิง', '36', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '005177', 'นางถวิล เหลาทอง', 'หญิง', '49', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '005212', 'นางสอิ้ง สาโท', 'หญิง', '46', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '005309', 'นางเพียง กรมหัวไผ่', 'หญิง', '58', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '005327', 'นางพรทิพย์ กะสวย', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '005362', 'นางบุบผา ชาวเวียง', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '005377', 'นางสาลี่ นามวงษ์', 'หญิง', '53', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '005408', 'นางสุวรรณ์ ศรีรักสูงเนิน', 'หญิง', '50', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '005485', 'น.ส.ประทุม รักพา', 'หญิง', '48', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '005553', 'นางจันทิรา ชัยธรรมา', 'หญิง', '43', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '005557', 'นางสวิง อินตา', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '005606', 'นางอารีย์ ชัยศรี', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '005668', 'น.ส.สงัด นาคหาดกระบือ', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '005760', 'นางแฉล้ม ลีมี', 'หญิง', '60', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '005809', 'น.ส.ลำเจียก ขันทา', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '005829', 'นางสมจิต ทาดา', 'หญิง', '43', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '005934', 'นางสุมาลัย น้อยอามาตย์', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '005951', 'นางเฉลิม ทองเทียน', 'หญิง', '51', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '005965', 'นางศุภมาส แก้วมั่น', 'หญิง', '48', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '005973', 'นางสังเวย ทองเทียน', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '005978', 'นางสมพิศ เรืองคำพัฒน์', 'หญิง', '37', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '006003', 'นางทองหยด สาวชาวนา', 'หญิง', '59', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '006012', 'นางมณี พรมชาวเสียง', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '006016', 'นางก๊อก พรเลิศ', 'หญิง', '54', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '006078', 'นางชบา ผลสุด', 'หญิง', '51', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '006083', 'น.ส.ชณัญชิดา แจ่มศิริ', 'หญิง', '31', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '006094', 'นางสมคิด ไข่สอาด', 'หญิง', '40', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '006114', 'นางชิด บุญสวัสดิ์', 'หญิง', '60', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '006133', 'น.ส.แจ้ง อุมะ', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '006174', 'นางรัชพฤก ทศพร', 'หญิง', '43', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '006273', 'นางสมจิตร ทิพยวรรณ', 'หญิง', '47', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '006356', 'นางฐิตาภา สิบหมื่นเปี่ยม', 'หญิง', '41', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '006402', 'นางสุทิน อุ้ยหะ', 'หญิง', '56', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '006416', 'นางสำรวย ราชสุนทร', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '006428', 'นางประทุม สีทา', 'หญิง', '60', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '006507', 'นางอารีรัตน์ กิจสุดแสง', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '006513', 'นางสง่า นาคหาดกระบือ', 'หญิง', '59', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '006538', 'นางบุญทัน ไกรสร', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '006561', 'นางรัดดา พรมณี', 'หญิง', '45', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '006572', 'นางสีทา ผลสุด', 'หญิง', '42', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '006595', 'นางบัวไร พลสิงห์', 'หญิง', '51', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '006612', 'นางนิ่มนวล ใจซื่อ', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '006634', 'นางดวงเดือน เจริญภาพ', 'หญิง', '53', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '006637', 'นางอุ่นเรือน ศรีสวัสดิ์', 'หญิง', '45', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '006642', 'นางสิริมา บุญมาก', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '006648', 'นางสมจิตร ชุ่มเย็น', 'หญิง', '46', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '006659', 'น.ส.เกตุกนก จันทร', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '006693', 'น.ส.สอน ศรีจูม', 'หญิง', '57', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '006700', 'น.ส.อรวรรณ ขันทา', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '006717', 'นางสมคิด แจ่มสว่าง', 'หญิง', '45', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '006728', 'น.ส.สมคิด ทะยอม', 'หญิง', '52', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '006763', 'ร.ต.ต.รัชนี ระย้าแก้ว', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '006813', 'นางวันทอง ศรีคง', 'หญิง', '54', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '006839', 'น.ส.อ่อนอั้ว วงษ์ยรา', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '006882', 'นางบุญศร จำปาหอม', 'หญิง', '46', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '006887', 'น.ส.อัจฉรา เมฆอรุณกมล', 'หญิง', '47', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '006991', 'นางเรียน ชูศรี', 'หญิง', '49', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '007013', 'น.ส.พนิดา พฤกษชาติ', 'หญิง', '31', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '007094', 'นางบุญทำ ยาทา', 'หญิง', '57', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '007170', 'นางสุพิศ หลุมข้าว', 'หญิง', '44', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '007194', 'นางเฉวต ศรีคำ', 'หญิง', '40', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '007283', 'น.ส.พนิดา ยาทา', 'หญิง', '32', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '007285', 'น.ส.สาคร อ่ำอินทร์', 'หญิง', '35', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '007421', 'น.ส.บังอร แจ่มศิริ', 'หญิง', '41', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '007511', 'นางละเอียด กอโคตร์', 'หญิง', '55', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '007583', 'นางจำนงค์ แสวงลาน', 'หญิง', '59', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '007611', 'น.ส.รัชดาพร สุวรรณธาดา', 'หญิง', '43', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '007616', 'น.ส.วาสนา บุญอิน', 'หญิง', '49', 'y');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '007623', 'นางวัชราพร จันตูม', 'หญิง', '34', 'n');
INSERT INTO `rpt_indiv_screen_report2` VALUES ('2015', '14059', '007635', 'นางอำพร ชาวเวียง', 'หญิง', '47', 'n');

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
-- Procedure structure for cal_chart_dial_1
-- ----------------------------
DROP PROCEDURE IF EXISTS `cal_chart_dial_1`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cal_chart_dial_1`(IN `bdg_date` varchar(10))
BEGIN
	
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
	
set @start='2014-10-01';
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

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for cal_indiv_screen_report2
-- ----------------------------
DROP PROCEDURE IF EXISTS `cal_indiv_screen_report2`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cal_indiv_screen_report2`(IN `selyear` varchar(4),IN `hospcode` varchar(5))
BEGIN
	
set @selyear = selyear;
set @hospcode = hospcode;


REPLACE into rpt_indiv_screen_report2
select @selyear as selyear,p.hospcode,p.pid,concat(cp.prename,p.name,' ',p.lname) as fullname,
if(p.sex=1,'ชาย','หญิง') as sex,
TIMESTAMPDIFF(YEAR,p.birth,CONCAT((@selyear-1),'-09-30')) as age_y,
'y' as result
from person p
LEFT JOIN cprename cp on cp.id_prename=p.prename 
LEFT JOIN diagnosis_opd d on d.PID = p.PID and d.HOSPCODE = p.HOSPCODE 
where p.typearea in ('1', '3') and p.nation ='099' 
and (TIMESTAMPDIFF(YEAR,p.birth,CONCAT((@selyear-1),'-09-30')) between 30 and 60) 
and p.sex = '2' and p.HOSPCODE=@hospcode
and d.DIAGCODE  in ('Z014','Z124')

UNION 

select @selyear as selyear,a.hospcode,a.pid,a.fullname,a.sex,a.age_y,'n' as result from (
select p.hospcode,p.pid,concat(cp.prename,p.name,' ',p.lname) as fullname,
if(p.sex=1,'ชาย','หญิง') as sex,
TIMESTAMPDIFF(YEAR,p.birth,CONCAT((@selyear-1),'-09-30')) as age_y
from person p
LEFT JOIN cprename cp on cp.id_prename=p.prename  
where p.typearea in ('1', '3') and p.nation ='099' 
and (TIMESTAMPDIFF(YEAR,p.birth,CONCAT((@selyear-1),'-09-30')) between 30 and 60) 
and p.sex = '2' and p.HOSPCODE=@hospcode) a LEFT JOIN (

select p.hospcode,p.pid,concat(cp.prename,p.name,' ',p.lname) as fullname,
if(p.sex=1,'ชาย','หญิง') as sex,
TIMESTAMPDIFF(YEAR,p.birth,CONCAT((@selyear-1),'-09-30')) as age_y
from person p
LEFT JOIN cprename cp on cp.id_prename=p.prename 
LEFT JOIN diagnosis_opd d on d.PID = p.PID and d.HOSPCODE = p.HOSPCODE 
where p.typearea in ('1', '3') and p.nation ='099' 
and (TIMESTAMPDIFF(YEAR,p.birth,CONCAT((@selyear-1),'-09-30')) between 30 and 60) 
and p.sex = '2' and p.HOSPCODE=@hospcode
and d.DIAGCODE  in ('Z014','Z124')) b

on a.pid = b.pid where b.pid is NULL

ORDER BY pid asc;

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
	
DELETE from sys_upload_fortythree where UPPER(note2) != 'OK' and  (DATEDIFF(CURDATE(),upload_date) > 2);

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
	 UPDATE sys_process_running s  set s.is_running = 'false';
	 UPDATE sys_event_log SET end_at=DATE_FORMAT(NOW(), '%Y%m%d%H%i%s') ORDER BY id DESC LIMIT 1;

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
	REPLACE INTO newborncare SELECT * FROM newborn_care;
	TRUNCATE newborn_care;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_rpt_1
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_rpt_1`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_rpt_1`()
BEGIN

 #CREATE TABLE am_rpt1 
REPLACE into am_rpt1 
SELECT * from  (
	
	SELECT 
h.hoscode,h.hosname
,(select COUNT(DISTINCT p.HOSPCODE,p.PID) from person p where p.HOSPCODE = h.hoscode
	 AND p.typearea in (1,3)
 ) as 'total'
,(select COUNT(DISTINCT p.HOSPCODE,p.PID) from person p where p.HOSPCODE = h.hoscode
   AND p.typearea in (1,3) AND p.RELIGION = 1
  ) as 'buddha'
,(select COUNT(DISTINCT p.HOSPCODE,p.PID) from person p where p.HOSPCODE = h.hoscode
   AND p.typearea in (1,3) AND p.RELIGION != 1
  ) as 'other'
 from chospital_amp h) t;

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
	UPDATE sys_process_running s set s.is_running = 'true';
	INSERT INTO sys_event_log (id,start_at,end_at) VALUES (null,DATE_FORMAT(NOW(), '%Y%m%d%H%i%s'),'wait');
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
select * from person limit 100;
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
CREATE DEFINER=`root`@`localhost` EVENT `event1` ON SCHEDULE EVERY 1 DAY STARTS '2015-03-21 04:00:00' ON COMPLETION NOT PRESERVE ENABLE DO BEGIN

call start_process();
call clear_import_not_success();
call clear_null_hospcode();
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
