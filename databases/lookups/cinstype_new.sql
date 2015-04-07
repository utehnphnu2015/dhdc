/*
Navicat MySQL Data Transfer

Source Server         : local-mariadb
Source Server Version : 50540
Source Host           : localhost:3309
Source Database       : dhdc_ctable

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2015-04-07 20:41:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cinstype_new
-- ----------------------------
DROP TABLE IF EXISTS `cinstype_new`;
CREATE TABLE `cinstype_new` (
  `instypecode` varchar(4) NOT NULL,
  `instypename` varchar(255) DEFAULT NULL,
  `instypegroup` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`instypecode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cinstype_new
-- ----------------------------
INSERT INTO `cinstype_new` VALUES ('0100', 'หลักประกันสุขภาพ', '4');
INSERT INTO `cinstype_new` VALUES ('1100', 'ข้าราชการประจำ', '1');
INSERT INTO `cinstype_new` VALUES ('1200', 'ข้าราชการบำนาญ', '1');
INSERT INTO `cinstype_new` VALUES ('1300', 'ลูกจ้างประจำ', '1');
INSERT INTO `cinstype_new` VALUES ('1400', 'ลูกจ้างประจำบำนาญ', '1');
INSERT INTO `cinstype_new` VALUES ('1900', 'ข้าราชการการเมือง', '1');
INSERT INTO `cinstype_new` VALUES ('2101', 'ข้าราชการประจำกรุงเทพมหานคร', '1');
INSERT INTO `cinstype_new` VALUES ('2102', 'ข้าราชการบำนาญกรุงเทพมหานคร', '1');
INSERT INTO `cinstype_new` VALUES ('2103', 'ลูกจ้างประจำกรุงเทพมหานคร', '1');
INSERT INTO `cinstype_new` VALUES ('2104', 'ลูกจ้างประจำบำนาญกรุงเทพมหานคร', '1');
INSERT INTO `cinstype_new` VALUES ('2105', 'ข้าราชการประจำเมืองพัทยา', '1');
INSERT INTO `cinstype_new` VALUES ('2106', 'ข้าราชการบำนาญเมืองพัทยา', '1');
INSERT INTO `cinstype_new` VALUES ('2107', 'ลูกจ้างประจำเมืองพัทยา', '1');
INSERT INTO `cinstype_new` VALUES ('2108', 'ลูกจ้างประจำบำนาญเมืองพัทยา', '1');
INSERT INTO `cinstype_new` VALUES ('2201', 'ข้าราชการประจำเทศบาล', '1');
INSERT INTO `cinstype_new` VALUES ('2202', 'ข้าราชการบำนาญเทศบาล', '1');
INSERT INTO `cinstype_new` VALUES ('2203', 'ลูกจ้างประจำเทศบาล', '1');
INSERT INTO `cinstype_new` VALUES ('2204', 'ลูกจ้างประจำบำนาญเทศบาล', '1');
INSERT INTO `cinstype_new` VALUES ('2301', 'ข้าราชการประจำองค์การบริหารส่วนจังหวัด', '1');
INSERT INTO `cinstype_new` VALUES ('2302', 'ข้าราชการบำนาญองค์การบริหารส่วนจังหวัด', '1');
INSERT INTO `cinstype_new` VALUES ('2303', 'ลูกจ้างประจำองค์การบริหารส่วนจังหวัด', '1');
INSERT INTO `cinstype_new` VALUES ('2304', 'ลูกจ้างประจำบำนาญองค์การบริหารส่วนจังหวัด             ', '1');
INSERT INTO `cinstype_new` VALUES ('2401', 'ข้าราชการประจำองค์การบริหารส่วนตำบล', '1');
INSERT INTO `cinstype_new` VALUES ('2402', 'ข้าราชการบำนาญองค์การบริหารส่วนตำบล', '1');
INSERT INTO `cinstype_new` VALUES ('2403', 'ลูกจ้างประจำองค์การบริหารส่วนตำบล', '1');
INSERT INTO `cinstype_new` VALUES ('2404', 'ลูกจ้างประจำบำนาญองค์การบริหารส่วนตำบล', '1');
INSERT INTO `cinstype_new` VALUES ('2501', 'ข้าราชการการเมืองกรุงเทพมหานคร', '1');
INSERT INTO `cinstype_new` VALUES ('2502', 'ข้าราชการการเมืองเมืองพัทยา', '1');
INSERT INTO `cinstype_new` VALUES ('2601', 'ข้าราชการการเมืองเทศบาล', '1');
INSERT INTO `cinstype_new` VALUES ('2701', 'ข้าราชการการเมืององค์การบริหารส่วนจังหวัด', '1');
INSERT INTO `cinstype_new` VALUES ('2801', 'ข้าราชการการเมืององค์การบริหารส่วนตำบล', '1');
INSERT INTO `cinstype_new` VALUES ('3101', 'การไฟฟ้านครหลวง', '1');
INSERT INTO `cinstype_new` VALUES ('3102', 'การไฟฟ้าฝ่ายผลิตแห่งประเทศไทย', '1');
INSERT INTO `cinstype_new` VALUES ('3103', 'การไฟฟ้าส่วนภูมิภาค', '1');
INSERT INTO `cinstype_new` VALUES ('3104', 'บริษัท ปตท. จำกัด (มหาชน)', '2');
INSERT INTO `cinstype_new` VALUES ('3201', 'การทางพิเศษแห่งประเทศไทย', '1');
INSERT INTO `cinstype_new` VALUES ('3202', 'การท่าเรือแห่งประเทศไทย', '1');
INSERT INTO `cinstype_new` VALUES ('3203', 'การรถไฟฟ้ามวลชนแห่งประเทศไทย', '1');
INSERT INTO `cinstype_new` VALUES ('3204', 'การรถไฟแห่งประเทศไทย', '1');
INSERT INTO `cinstype_new` VALUES ('3205', 'บริษัท การบินไทย จำกัด (มหาชน)', '1');
INSERT INTO `cinstype_new` VALUES ('3206', 'บริษัทขนส่ง จำกัด', '1');
INSERT INTO `cinstype_new` VALUES ('3207', 'บริษัท ท่าอากาศยายไทย จำกัด (มหาชน)', '1');
INSERT INTO `cinstype_new` VALUES ('3208', 'ไทยเดินเรือทะเล จำกัด', '1');
INSERT INTO `cinstype_new` VALUES ('3209', 'บริษัท วิทยุการบินแห่งประเทศไทย จำกัด', '1');
INSERT INTO `cinstype_new` VALUES ('3210', 'สถาบันการบินพลเรือน', '1');
INSERT INTO `cinstype_new` VALUES ('3211', 'องค์การขนส่งมวลชนกรุงเทพ', '1');
INSERT INTO `cinstype_new` VALUES ('3301', 'บริษัท กสท. โทรคมนาคม จำกัด (มหาชน)', '1');
INSERT INTO `cinstype_new` VALUES ('3302', 'บริษัท ทีโอที จำกัด (มหาชน)', '1');
INSERT INTO `cinstype_new` VALUES ('3303', 'บริษัทไปรษณีย์ไทย จำกัด', '1');
INSERT INTO `cinstype_new` VALUES ('3304', 'บริษัท อสมท. จำกัด', '2');
INSERT INTO `cinstype_new` VALUES ('3401', 'การเคหะแห่งชาติ', '1');
INSERT INTO `cinstype_new` VALUES ('3402', 'การประปานครหลวง', '1');
INSERT INTO `cinstype_new` VALUES ('3403', 'การประปาส่วนภูมิภาค', '1');
INSERT INTO `cinstype_new` VALUES ('3404', 'องค์การจัดการน้ำเสีย', '1');
INSERT INTO `cinstype_new` VALUES ('3501', 'การนิคมอุตสาหกรรมแห่งประเทศไทย', '1');
INSERT INTO `cinstype_new` VALUES ('3502', 'บริษัท อู่กรุงเทพ จำกัด', '2');
INSERT INTO `cinstype_new` VALUES ('3503', 'โรงงานไพ่ กรมสรรพสามิต', '1');
INSERT INTO `cinstype_new` VALUES ('3504', 'โรงงานยาสูบ กระทรวงการคลัง', '1');
INSERT INTO `cinstype_new` VALUES ('3505', 'โรงพิมพ์ตำรวจ สำนักงานตำรวจแห่งชาติ', '1');
INSERT INTO `cinstype_new` VALUES ('3506', 'องค์การสุรา กรมสรรพสามิต', '1');
INSERT INTO `cinstype_new` VALUES ('3601', 'บริษัท ส่งเสริมธุรกิจเกษตรกรไทย จำกัด', '2');
INSERT INTO `cinstype_new` VALUES ('3602', 'สำนักงานกองทุนสงเคราะห์การทำสวนยาง', '1');
INSERT INTO `cinstype_new` VALUES ('3603', 'องค์การสุรา กรมสรรพสามิต', '1');
INSERT INTO `cinstype_new` VALUES ('3604', 'องค์การส่งเสริมกิจการโคนมแห่งประเทศไทย', '1');
INSERT INTO `cinstype_new` VALUES ('3605', 'องค์การสวนพฤกษศาสตร์', '1');
INSERT INTO `cinstype_new` VALUES ('3606', 'องค์การสวนยาง', '1');
INSERT INTO `cinstype_new` VALUES ('3607', 'องค์การสะพานปลา', '1');
INSERT INTO `cinstype_new` VALUES ('3608', 'องค์การอุตสาหกรรมป่าไม้', '1');
INSERT INTO `cinstype_new` VALUES ('3701', 'บริษัท ธนารักษ์พัฒนาสินทรัพย์ จำกัด', '2');
INSERT INTO `cinstype_new` VALUES ('3702', 'สหโรงแรมไทยและการท่องเที่ยว จำกัด', '2');
INSERT INTO `cinstype_new` VALUES ('3703', 'สำนักงานสลากกินแบ่งรัฐบาล', '1');
INSERT INTO `cinstype_new` VALUES ('3704', 'องค์การคลังสินค้า', '1');
INSERT INTO `cinstype_new` VALUES ('3705', 'องค์การตลาด', '1');
INSERT INTO `cinstype_new` VALUES ('3801', 'การกีฬาแห่งประเทศไทย', '1');
INSERT INTO `cinstype_new` VALUES ('3802', 'การท่องเที่ยวแห่งประเทศไทย', '1');
INSERT INTO `cinstype_new` VALUES ('3803', 'สถาบันวิจัยวิทยาศาสตร์และเทคโนโลยีแห่งประเทศไทย', '1');
INSERT INTO `cinstype_new` VALUES ('3804', 'สำนักงานธนานุเคราะห์ กรมพัฒนาสังคมและสวัสดิการ', '1');
INSERT INTO `cinstype_new` VALUES ('3805', 'องค์การพิพิธภัณฑ์วิทยาศาสตร์แห่งชาติ', '1');
INSERT INTO `cinstype_new` VALUES ('3806', 'องค์การเภสัชกรรม', '1');
INSERT INTO `cinstype_new` VALUES ('3807', 'องค์การสวนสัตว์', '1');
INSERT INTO `cinstype_new` VALUES ('3901', 'ธนาคารกรุงไทย จำกัด (มหาชน)', '2');
INSERT INTO `cinstype_new` VALUES ('3902', 'ธนาคารพัฒนาวิสาหกิจขนาดกลางและขนาดย่อมแห่งประเทศไทย  ', '2');
INSERT INTO `cinstype_new` VALUES ('3903', 'ธนาคารเพื่อการเกษตรและสหกรณ์การเกษตร', '2');
INSERT INTO `cinstype_new` VALUES ('3904', 'ธนาคารเพื่อการส่งออกและนำเข้าแห่งประเทศไทย', '2');
INSERT INTO `cinstype_new` VALUES ('3905', 'ธนาคารออมสิน', '2');
INSERT INTO `cinstype_new` VALUES ('3906', 'ธนาคารอาคารสงเคราะห์', '2');
INSERT INTO `cinstype_new` VALUES ('3907', 'ธนาคารอิสลามแห่งประเทศไทย', '2');
INSERT INTO `cinstype_new` VALUES ('3908', 'บรรษัทตลาดรองสินเชื่อที่อยู่อาศัย', '2');
INSERT INTO `cinstype_new` VALUES ('3909', 'บรรษัทประกันสินเชื่ออุตสาหกรรมขนาดย่อม', '2');
INSERT INTO `cinstype_new` VALUES ('4100', 'กองทุนเงินทดแทน', '2');
INSERT INTO `cinstype_new` VALUES ('4200', 'กองทุนประกันสังคม', '2');
INSERT INTO `cinstype_new` VALUES ('5100', 'ประกันสุขภาพภาคเอกชน', '4');
INSERT INTO `cinstype_new` VALUES ('6100', 'กองทุนผู้ประสบภัยจากรถ', '2');
INSERT INTO `cinstype_new` VALUES ('7100', 'พนักงาน/เจ้าหน้าที่หรือผู้ปฏิบัติงานสังกัดองค์กรอิสระตามรัฐธรรมนูญ', '2');
INSERT INTO `cinstype_new` VALUES ('8100', 'สิทธิพิเศษเฉพาะกลุ่มอนุเคราะห์', '2');
INSERT INTO `cinstype_new` VALUES ('8200', 'สิทธิที่โรงพยาบาลให้การอนุเคราะห์', '2');
INSERT INTO `cinstype_new` VALUES ('8300', 'บุคคลที่มีปัญหาสถานะ', '4');
INSERT INTO `cinstype_new` VALUES ('8400', 'บุคคลที่มีสิทธิต่างด้าว', '5');
INSERT INTO `cinstype_new` VALUES ('9100', 'ชำระเงินเอง', '6');
