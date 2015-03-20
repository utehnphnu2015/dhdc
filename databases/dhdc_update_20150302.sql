/*
Navicat MySQL Data Transfer

Source Server         : local-mariadb
Source Server Version : 50540
Source Host           : localhost:3309
Source Database       : dhdc_update

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2015-03-02 18:20:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for person_target
-- ----------------------------
DROP TABLE IF EXISTS `person_target`;
CREATE TABLE `person_target` (
  `HOSPCODE` varchar(5) NOT NULL,
  `CID` varchar(13) DEFAULT NULL,
  `PID` varchar(15) NOT NULL,
  `HID` varchar(14) DEFAULT NULL,
  `PRENAME` varchar(3) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `LNAME` varchar(50) NOT NULL,
  `HN` varchar(15) DEFAULT NULL,
  `SEX` varchar(1) NOT NULL,
  `BIRTH` date NOT NULL,
  `MSTATUS` char(1) DEFAULT NULL,
  `OCCUPATION_OLD` varchar(3) DEFAULT NULL,
  `OCCUPATION_NEW` varchar(4) DEFAULT NULL,
  `RACE` varchar(3) DEFAULT NULL,
  `NATION` varchar(3) NOT NULL,
  `RELIGION` varchar(2) DEFAULT NULL,
  `EDUCATION` varchar(2) DEFAULT NULL,
  `FSTATUS` varchar(1) DEFAULT NULL,
  `FATHER` varchar(13) DEFAULT NULL,
  `MOTHER` varchar(13) DEFAULT NULL,
  `COUPLE` varchar(13) DEFAULT NULL,
  `VSTATUS` varchar(1) DEFAULT NULL,
  `MOVEIN` date DEFAULT NULL,
  `DISCHARGE` varchar(1) DEFAULT NULL,
  `DDISCHARGE` date DEFAULT NULL,
  `ABOGROUP` varchar(1) DEFAULT NULL,
  `RHGROUP` varchar(1) DEFAULT NULL,
  `LABOR` varchar(2) DEFAULT NULL,
  `PASSPORT` varchar(8) DEFAULT NULL,
  `TYPEAREA` varchar(1) NOT NULL,
  `D_UPDATE` datetime NOT NULL,
  `REP_YEAR` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`HOSPCODE`,`PID`),
  KEY `idx_hoscode` (`HOSPCODE`,`PID`,`TYPEAREA`),
  KEY `idx1` (`HOSPCODE`),
  KEY `idx2` (`CID`),
  KEY `idx3` (`HID`),
  KEY `idx4` (`TYPEAREA`),
  KEY `idx5` (`TYPEAREA`),
  KEY `idx6` (`HOSPCODE`,`PID`),
  KEY `idx7` (`BIRTH`),
  KEY `idx8` (`DISCHARGE`),
  KEY `idx9` (`LABOR`),
  KEY `idx10` (`HOSPCODE`,`HID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of person_target
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sqlscript
-- ----------------------------

-- ----------------------------
-- Table structure for sys_month
-- ----------------------------
DROP TABLE IF EXISTS `sys_month`;
CREATE TABLE `sys_month` (
  `month` varchar(6) NOT NULL,
  `selyear` varchar(4) DEFAULT NULL,
  `selmonth` varchar(2) DEFAULT NULL,
  `month_th` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`month`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_month
-- ----------------------------
INSERT INTO `sys_month` VALUES ('201210', '2556', '10', 'ตุลาคม');
INSERT INTO `sys_month` VALUES ('201211', '2556', '11', 'พฤศจิกายน');
INSERT INTO `sys_month` VALUES ('201212', '2556', '12', 'ธันวาคม');
INSERT INTO `sys_month` VALUES ('201301', '2556', '01', 'มกราคม');
INSERT INTO `sys_month` VALUES ('201302', '2556', '02', 'กุมภาพันธ์');
INSERT INTO `sys_month` VALUES ('201303', '2556', '03', 'มีนาคม');
INSERT INTO `sys_month` VALUES ('201304', '2556', '04', 'เมษายน');
INSERT INTO `sys_month` VALUES ('201305', '2556', '05', 'พฤษภาคม');
INSERT INTO `sys_month` VALUES ('201306', '2556', '06', 'มิถุนายน');
INSERT INTO `sys_month` VALUES ('201307', '2556', '07', 'กรกฎาคม');
INSERT INTO `sys_month` VALUES ('201308', '2556', '08', 'สิงหาคม');
INSERT INTO `sys_month` VALUES ('201309', '2556', '09', 'กันยายน');
INSERT INTO `sys_month` VALUES ('201310', '2557', '10', 'ตุลาคม');
INSERT INTO `sys_month` VALUES ('201311', '2557', '11', 'พฤศจิกายน');
INSERT INTO `sys_month` VALUES ('201312', '2557', '12', 'ธันวาคม');
INSERT INTO `sys_month` VALUES ('201401', '2557', '01', 'มกราคม');
INSERT INTO `sys_month` VALUES ('201402', '2557', '02', 'กุมภาพันธ์');
INSERT INTO `sys_month` VALUES ('201403', '2557', '03', 'มีนาคม');
INSERT INTO `sys_month` VALUES ('201404', '2557', '04', 'เมษายน');
INSERT INTO `sys_month` VALUES ('201405', '2557', '05', 'พฤษภาคม');
INSERT INTO `sys_month` VALUES ('201406', '2557', '06', 'มิถุนายน');
INSERT INTO `sys_month` VALUES ('201407', '2557', '07', 'กรกฎาคม');
INSERT INTO `sys_month` VALUES ('201408', '2557', '08', 'สิงหาคม');
INSERT INTO `sys_month` VALUES ('201409', '2557', '09', 'กันยายน');
INSERT INTO `sys_month` VALUES ('201410', '2558', '10', 'ตุลาคม');
INSERT INTO `sys_month` VALUES ('201411', '2558', '11', 'พฤศจิกายน');
INSERT INTO `sys_month` VALUES ('201412', '2558', '12', 'ธันวาคม');
INSERT INTO `sys_month` VALUES ('201501', '2558', '01', 'มกราคม');
INSERT INTO `sys_month` VALUES ('201502', '2558', '02', 'กุมภาพันธ์');
INSERT INTO `sys_month` VALUES ('201503', '2558', '03', 'มีนาคม');
INSERT INTO `sys_month` VALUES ('201504', '2558', '04', 'เมษายน');
INSERT INTO `sys_month` VALUES ('201505', '2558', '06', 'พฤษภาคม');
INSERT INTO `sys_month` VALUES ('201506', '2558', '06', 'มิถุนายน');
INSERT INTO `sys_month` VALUES ('201507', '2668', '07', 'กรกฎาคม');
INSERT INTO `sys_month` VALUES ('201508', '2558', '08', 'สิงหาคม');
INSERT INTO `sys_month` VALUES ('201509', '2558', '09', 'กันยายน');

-- ----------------------------
-- Table structure for sys_upload_person_target
-- ----------------------------
DROP TABLE IF EXISTS `sys_upload_person_target`;
CREATE TABLE `sys_upload_person_target` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_name` varchar(255) DEFAULT NULL,
  `file_size` varchar(255) DEFAULT NULL,
  `upload_date` varchar(255) DEFAULT NULL,
  `upload_time` varchar(255) DEFAULT NULL,
  `note1` varchar(255) DEFAULT NULL,
  `note2` varchar(255) DEFAULT NULL,
  `note3` varchar(255) DEFAULT NULL,
  `note4` varchar(255) DEFAULT NULL,
  `note5` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_upload_person_target
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
where  hostype  in ('03','04','05','07','08','09','12','13')
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
set @a=1;
select * from fp limit 10;
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


#dhdc_knott_update_20150302_2.sql

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


