/*
Navicat MySQL Data Transfer

Source Server         : mylocalhost
Source Server Version : 50529
Source Host           : localhost:3306
Source Database       : dhdc_update

Target Server Type    : MYSQL
Target Server Version : 50529
File Encoding         : 65001

Date: 2015-04-07 17:17:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `sys_chart_dial_7`
-- ----------------------------
DROP TABLE IF EXISTS `sys_chart_dial_7`;
CREATE TABLE `sys_chart_dial_7` (
  `base` float DEFAULT NULL,
  `result` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_chart_dial_7
-- ----------------------------
INSERT INTO `sys_chart_dial_7` VALUES ('90', '85.5');

-- ----------------------------
-- Table structure for `sys_chart_dial_8`
-- ----------------------------
DROP TABLE IF EXISTS `sys_chart_dial_8`;
CREATE TABLE `sys_chart_dial_8` (
  `base` float DEFAULT NULL,
  `result` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_chart_dial_8
-- ----------------------------
INSERT INTO `sys_chart_dial_8` VALUES ('90', '85.5');

-- ----------------------------
-- Table structure for `sys_chart_dial_9`
-- ----------------------------
DROP TABLE IF EXISTS `sys_chart_dial_9`;
CREATE TABLE `sys_chart_dial_9` (
  `base` float DEFAULT NULL,
  `result` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_chart_dial_9
-- ----------------------------
INSERT INTO `sys_chart_dial_9` VALUES ('90', '85.5');

-- ----------------------------
-- Procedure structure for `cal_chart_dial_7`
-- ----------------------------
DROP PROCEDURE IF EXISTS `cal_chart_dial_7`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cal_chart_dial_7`()
BEGIN
	
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

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `cal_chart_dial_8`
-- ----------------------------
DROP PROCEDURE IF EXISTS `cal_chart_dial_8`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cal_chart_dial_8`()
BEGIN
	
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

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `cal_chart_dial_9`
-- ----------------------------
DROP PROCEDURE IF EXISTS `cal_chart_dial_9`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cal_chart_dial_9`()
BEGIN
	
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

END
;;
DELIMITER ;
