SET @start_d := '20150101';
SET @end_d := '20150131';


SELECT c.hoscode,c.hosname,
(SELECT COUNT(concat(dod.pid,dod.HOSPCODE))from person p 
LEFT JOIN diagnosis_opd dod ON dod.HOSPCODE = p.HOSPCODE AND dod.PID = p.PID
LEFT JOIN cdisease cc ON cc.diagcode = dod.DIAGCODE 
where c.hoscode = p.HOSPCODE and dod.DATE_SERV between 
@start_d and @end_d AND p.DISCHARGE = '9' and 
dod.DIAGTYPE = 1 and (dod.DIAGCODE in ('Z480','Z300','Z304','Z340','Z348') or dod.DIAGCODE not like 'Z%%' )) AS 'เป้าหมาย',
(SELECT COUNT( concat(dro.pid,dro.HOSPCODE))from person p 
LEFT JOIN drug_opd dro on p.pid = dro.pid and p.hospcode = dro.hospcode
where c.hoscode = p.HOSPCODE 
AND p.DISCHARGE = '9' and dro.DATE_SERV between @start_d and @end_d and dro.DIDSTD like '4%'
) AS 'ผลงานยา' ,
(SELECT COUNT( concat(pro.pid,pro.HOSPCODE))from person p 
LEFT JOIN procedure_opd pro ON p.PID = pro.PID AND p.HOSPCODE = pro.HOSPCODE
INNER JOIN cicd9ttm_planthai pti on pti.`code` = pro.PROCEDCODE
where c.hoscode = p.HOSPCODE  
AND p.DISCHARGE = '9' and pro.DATE_SERV between @start_d and @end_d 
) AS 'ผลงานหัตถการ' ,
(SELECT COUNT( concat(dro.pid,pro.pid,pro.HOSPCODE))from person p 
LEFT OUTER JOIN drug_opd dro on p.pid = dro.pid and p.hospcode = dro.hospcode
LEFT OUTER JOIN procedure_opd pro ON p.PID = pro.PID AND p.HOSPCODE = pro.HOSPCODE
left OUTER JOIN cicd9ttm_planthai pti on pti.`code` = pro.PROCEDCODE
where c.hoscode = p.HOSPCODE  
AND p.DISCHARGE = '9' and dro.DATE_SERV between @start_d and @end_d and dro.DIDSTD like '4%' 
and pro.DATE_SERV between @start_d and @end_d 
) AS 'ยาและหัตถการ (เอา 2 อย่างในครั้งเดียว)' ,
concat(round((SELECT COUNT( concat(dro.pid,dro.HOSPCODE))from person p 
LEFT JOIN drug_opd dro on p.pid = dro.pid and p.hospcode = dro.hospcode
where c.hoscode = p.HOSPCODE  
AND p.DISCHARGE = '9' and dro.DATE_SERV between @start_d and @end_d and dro.DIDSTD like '4%'
)*100/
( SELECT COUNT( concat(dod.pid,dod.HOSPCODE))from person p 
LEFT JOIN diagnosis_opd dod ON dod.HOSPCODE = p.HOSPCODE AND dod.PID = p.PID
LEFT JOIN cdisease cc ON cc.diagcode = dod.DIAGCODE 
where c.hoscode = p.HOSPCODE and  dod.DATE_SERV between 
@start_d and @end_d AND p.DISCHARGE = '9' and 
dod.DIAGTYPE = 1 and (dod.DIAGCODE in ('Z480','Z300','Z304','Z340','Z348') or dod.DIAGCODE not like 'Z%%' )
),2),'%' ) as 'ร้อยละเทียบกับยา',
concat(round((SELECT COUNT( concat(pro.pid,pro.HOSPCODE))from person p 
LEFT JOIN procedure_opd pro ON p.PID = pro.PID AND p.HOSPCODE = pro.HOSPCODE
INNER JOIN cicd9ttm_planthai pti on pti.`code` = pro.PROCEDCODE
where c.hoscode = p.HOSPCODE  
AND p.DISCHARGE = '9' and pro.DATE_SERV between @start_d and @end_d 
)*100/
( SELECT COUNT( concat(dod.pid,dod.HOSPCODE))from person p 
LEFT JOIN diagnosis_opd dod ON dod.HOSPCODE = p.HOSPCODE AND dod.PID = p.PID
LEFT JOIN cdisease cc ON cc.diagcode = dod.DIAGCODE 
where c.hoscode = p.HOSPCODE and  dod.DATE_SERV between 
@start_d and @end_d AND p.DISCHARGE = '9' and 
dod.DIAGTYPE = 1 and (dod.DIAGCODE in ('Z480','Z300','Z304','Z340','Z348') or dod.DIAGCODE not like 'Z%%' )
),2),'%' ) as 'ร้อยละเทียบกับหัตถการ'

FROM chospital_amp c 

group by c.hoscode 
ORDER BY c.hoscode ASC