/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50541
Source Host           : 127.0.0.1:3306
Source Database       : dhdc_knott_update

Target Server Type    : MYSQL
Target Server Version : 50541
File Encoding         : 65001

Date: 2015-03-01 11:25:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for rpt_panth_visit_ratio
-- ----------------------------
DROP TABLE IF EXISTS `rpt_panth_visit_ratio`;
CREATE TABLE `rpt_panth_visit_ratio` (
  `rep_year` varchar(4) NOT NULL DEFAULT '',
  `quarterly` varchar(1) NOT NULL DEFAULT '0',
  `pcucode` varchar(5) NOT NULL DEFAULT '',
  `hosname` varchar(255) DEFAULT NULL,
  `op_service_pt` bigint(21) NOT NULL DEFAULT '0',
  `op_service` bigint(21) NOT NULL DEFAULT '0',
  `tm_service_pt` bigint(21) NOT NULL DEFAULT '0',
  `tm_service` bigint(21) NOT NULL DEFAULT '0',
  `tm_ratio` decimal(26,2) DEFAULT NULL,
  PRIMARY KEY (`rep_year`,`quarterly`,`pcucode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Procedure structure for cal_rpt_panth_visit_ratio
-- ----------------------------
DROP PROCEDURE IF EXISTS `cal_rpt_panth_visit_ratio`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cal_rpt_panth_visit_ratio`(IN `selyear` varchar(4))
BEGIN
	

set @selyear = selyear;
#DROP TABLE IF EXISTS rpt_panth_visit_ratio;
#CREATE TABLE IF NOT EXISTS rpt_panth_visit_ratio
REPLACE INTO rpt_panth_visit_ratio 
SELECT 
@selyear rep_year,
e.code_rep quarterly,
o.hoscode pcucode,
o.hosname,


IFNULL(e.OP_SERVICE_PT,0) op_service_pt,
IFNULL(e.OP_SERVICE,0) op_service,
IFNULL(t.TM_SERVICE_PT,0) tm_service_pt,
IFNULL(t.TM_SERVICE,0) tm_service,
(round((tm_service/op_service)*100,2)) tm_ratio
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
WHERE e.DATE_SERV BETWEEN CONCAT((@selyear-1),'-10-01') AND CONCAT(@selyear,'-09-30') 
AND LEFT(d.DIAGCODE,1) <> 'Z'
GROUP BY e.HOSPCODE
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
WHERE e.DATE_SERV BETWEEN CONCAT((@selyear-1),'-10-01') AND CONCAT(@selyear,'-09-30') 
AND LEFT(e.DIAGCODE,1) = 'U'

UNION 
SELECT e.HOSPCODE, 
e.PID, 
e.SEQ, 
e.DATE_SERV 
FROM drug_opd e 
WHERE e.DATE_SERV BETWEEN CONCAT((@selyear-1),'-10-01') AND CONCAT(@selyear,'-09-30') 
AND LEFT(e.DIDSTD,2) IN ('41','42') 

UNION 
SELECT e.HOSPCODE, 
e.PID, 
e.SEQ, 
e.DATE_SERV 
FROM procedure_opd e 
LEFT JOIN cicd9ttm_planthai p ON e.PROCEDCODE=p.`code` 
WHERE e.DATE_SERV BETWEEN CONCAT((@selyear-1),'-10-01') AND CONCAT(@selyear,'-09-30') 
AND p.code IS NOT NULL 

) e
GROUP BY e.HOSPCODE
) t ON t.HOSPCODE = e.HOSPCODE 
WHERE e.HOSPCODE IS NOT NULL;


END
;;
DELIMITER ;
