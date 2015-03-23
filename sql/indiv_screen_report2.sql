#รายงานมะเร็งปากมดลูก ญ 30-60 ปี
#screen/report2
set @selyear_rep='2015';
set @hospcode='07579';


select person.hospcode ,person.pid ,pre.prename,person.`NAME`,person.LNAME,if(person.sex=1,'ชาย','หญิง') as sex,
TIMESTAMPDIFF(YEAR,person.birth,CONCAT((@selyear-1),'-09-30')) as age_y,
if(d.DIAGCODE in ('Z014','Z124'),'ผ่าน','ไม่ผ่าน') as result

from person  
LEFT JOIN diagnosis_opd d on person.PID = d.PID and person.HOSPCODE = d.HOSPCODE
LEFT JOIN cprename pre on pre.id_prename=person.PRENAME
where person.typearea in ('1', '3') 
and person.nation ='099' 
and (TIMESTAMPDIFF(YEAR,person.birth,CONCAT((@selyear-1),'-09-30')) between 30 and 60) and sex = 2
and person.HOSPCODE = @hospcode
GROUP BY person.HOSPCODE,person.PID



