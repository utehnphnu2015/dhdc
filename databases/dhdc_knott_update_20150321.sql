/*
Navicat MySQL Data Transfer

Source Server         : local_new
Source Server Version : 50542
Source Host           : localhost:3309
Source Database       : dhdc_knott_update

Target Server Type    : MYSQL
Target Server Version : 50542
File Encoding         : 65001

Date: 2015-03-21 16:48:56
*/

SET FOREIGN_KEY_CHECKS=0;

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
-- Event structure for event1
-- ----------------------------
DROP EVENT IF EXISTS `event1`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` EVENT `event1` ON SCHEDULE EVERY 1 DAY STARTS '2015-03-01 08:54:10' ON COMPLETION NOT PRESERVE ENABLE DO BEGIN

call start_process();
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
