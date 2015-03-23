set @start='2014-10-01';
set @end='2015-03-31';

select h.hoscode as hospcode ,h.hosname as hospname,
(select total from
(select anc.hospcode,count(distinct anc.pid) as total 
from labor 
INNER JOIN anc ON labor.hospcode = anc.hospcode AND labor.pid = anc.pid 
INNER JOIN person ON person.hospcode = anc.hospcode AND person.pid = anc.pid 
WHERE person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099' and person.sex = '2' 
             and labor.bdate BETWEEN  @start AND @end
GROUP BY person.hospcode  ) as t
where t.hospcode =h.hoscode ) as LaborTarget,

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
inner join 
(select anc2.hospcode,anc2.pid,anc2.gravida,count(distinct anc2.pid) as total 
from anc anc2
WHERE anc2.ga BETWEEN 16 AND 20 
GROUP BY anc2.hospcode,anc2.pid  ) as anc2
on anc1.hospcode = anc2.hospcode and anc1.pid = anc2.pid and anc1.gravida = anc2.gravida
inner join 
(select anc3.hospcode,anc3.pid,anc3.gravida,count(distinct anc3.pid) as total 
from anc anc3
WHERE anc3.ga BETWEEN 24 AND 28
GROUP BY anc3.hospcode,anc3.pid  ) as anc3
on anc1.hospcode = anc3.hospcode and anc1.pid = anc3.pid and anc1.gravida = anc3.gravida
inner join 
(select anc4.hospcode,anc4.pid,anc4.gravida,count(distinct anc4.pid) as total 
from anc anc4
WHERE anc4.ga BETWEEN 30 AND 34
GROUP BY anc4.hospcode,anc4.pid  ) as anc4
on anc1.hospcode = anc4.hospcode and anc1.pid = anc4.pid and anc1.gravida = anc4.gravida
inner join 
(select anc5.hospcode,anc5.pid,anc5.gravida,count(distinct anc5.pid) as total 
from anc anc5
WHERE anc5.ga BETWEEN 36 AND 40 
GROUP BY anc5.hospcode,anc5.pid  ) as anc5
on anc1.hospcode = anc5.hospcode and anc1.pid = anc5.pid and anc1.gravida = anc5.gravida

INNER JOIN person ON person.hospcode = labor.hospcode AND person.pid = labor.pid 
WHERE person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099' and person.sex = '2' 
             and labor.bdate BETWEEN  @start AND @end
GROUP BY labor.hospcode
) as a5
where a5.hospcode = h.hoscode) as 5timesResult,
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
             and labor.bdate BETWEEN  @start AND @end
GROUP BY labor.hospcode
) as 12wks
where 12wks.hospcode = h.hoscode) as 12wksResult

from chospital_amp h;