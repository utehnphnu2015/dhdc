set @start='2014-10-01';
set @end='2015-03-31';

select h.distcode as amphur,h.hoscode as hospcode ,concat(provcode,distcode,subdistcode,mu) as areacode,h.hosname as hospname,
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

from chospital_amp h
where h.provcode = '65' and h.distcode = '01' and hostype  in ('03','04','05','07','08','09','12','13')
order by distcode,hoscode asc;