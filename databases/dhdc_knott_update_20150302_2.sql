/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50541
Source Host           : 127.0.0.1:3306
Source Database       : dhdc_knott_update

Target Server Type    : MYSQL
Target Server Version : 50541
File Encoding         : 65001

Date: 2015-03-02 22:11:45
*/

SET FOREIGN_KEY_CHECKS=0;

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


