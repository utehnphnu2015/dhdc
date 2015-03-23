set @start = '2014-10-31';
set @end = '2015-03-31';

select  h.hoscode as hospcode ,h.hosname as hospname,child.total as target,dev.total as result 
from chospital_amp h
left join
         (select person.hospcode,count(distinct person.pid) as total
           from person
           where  person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099' 
           and (person.birth between date_add(@start,interval -71 month) and date_add(@end,interval -0 month))
           group by person.hospcode ) child
on h.hoscode = child.hospcode
left join
         (select n.hospcode,count(distinct person.pid) as total
           from nutrition n inner join person on n.hospcode=person.hospcode and n.pid=person.pid  
           where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099' 
           and n.childdevelop = '1' and n.date_serv between '2014-10-01' and @end
           and (person.birth between date_add(@start,interval -71 month) and date_add('2015-09-30',interval -0 month))
           group by n.hospcode
          ) dev
on h.hoscode = dev.hospcode

group by hoscode;