set @start='2009-10-01';
set @end='2010-03-31';

select  h.hoscode as hospcode ,h.hosname as hospname,
(SELECT hos_target from
 (select person.hospcode , count(distinct person.pid) as hos_target from person  
           where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099' 
           and (person.birth BETWEEN @start and @end) group by person.hospcode ) as t
where  t.hospcode = h.hoscode
) as target ,
(SELECT hos_doit from
          (select person.hospcode,count(distinct(person.pid)) as hos_doit from person  
           left join epi on epi.hospcode = person.hospcode and epi.pid = person.pid 
           where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099'  
           and (person.birth BETWEEN @start and @end)  and epi.VACCINETYPE = '035'  group by person.hospcode) as r
where r.hospcode = h.hoscode
) as result 

from chospital_amp h;
