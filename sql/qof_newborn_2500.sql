set @start='2014-10-01';
set @end='2015-03-31';

select h.hoscode as hospcode ,h.hosname as hospname,
(SELECT hos_target from
 (select person.hospcode , count(distinct person.pid) as hos_target from newborn  
           inner join person on newborn.hospcode = person.hospcode and newborn.pid = person.pid 
           where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099'  
           and (newborn.BDATE BETWEEN @start and @end) group by person.hospcode ) as t
where  t.hospcode = h.hoscode
) as target ,
(SELECT hos_doit from
          (select person.hospcode,count(distinct(person.pid)) as hos_doit from newborn  
           inner join person on newborn.hospcode = person.hospcode and newborn.pid = person.pid 
           where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099'  
           and (newborn.BDATE BETWEEN @start and @end) and  newborn.BWEIGHT < 2500 group by person.hospcode) as r
where r.hospcode = h.hoscode
) as result 

from chospital_amp h;