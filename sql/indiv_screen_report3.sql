#รายงานมะเร็งเต้านม ญ 30-60 ปี
#screen/report3
set @selyear_rep='2015';


select person.hospcode ,person.pid ,pre.prename,contat(person.name,' ',person.lname) as fullname,
if(person.sex=1,'ชาย','หญิง') as sex,
TIMESTAMPDIFF(YEAR,person.birth,CONCAT((@selyear-1),'-09-30')) as age_y,
if(d.DIAGCODE ='Z123','y','n') as result

from person  
LEFT JOIN diagnosis_opd d on person.PID = d.PID and person.HOSPCODE = d.HOSPCODE
LEFT JOIN cprename pre on pre.id_prename=person.PRENAME
where person.typearea in ('1', '3') 
and person.nation ='099' 
and (TIMESTAMPDIFF(YEAR,person.birth,CONCAT((@selyear-1),'-09-30')) between 30 and 60) and sex = 2
and person.HOSPCODE = '07579'
GROUP BY person.HOSPCODE,person.PID


