set @start='2014-10-01';
set @end='2015-03-31';

select h.hoscode as hospcode ,h.hosname as hospname,
(select total from
(select anc.hospcode,count(distinct anc.pid) as total 
from anc 
INNER JOIN person ON person.hospcode = anc.hospcode AND person.pid = anc.pid 
WHERE person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099' and person.sex = '2' 
             and anc.ancno = 1 and anc.date_serv BETWEEN @start AND @end
GROUP BY person.hospcode  ) as t
where t.hospcode =h.hoscode ) as target,
(select total from
(select anc.hospcode,count(distinct anc.pid) as total 
from anc 
INNER JOIN person ON person.hospcode = anc.hospcode AND person.pid = anc.pid 
WHERE person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099' and person.sex = '2' 
             and anc.ancno = 1 and anc.ga <= 12 and anc.date_serv BETWEEN @start AND @end
GROUP BY person.hospcode  ) as r
where r.hospcode =h.hoscode) as result

from chospital_amp h;