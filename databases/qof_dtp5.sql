set @start='2014-10-01';
set @end='2015-03-31';

select  h.distcode as amphur,h.hoscode as hospcode ,concat(provcode,distcode,subdistcode,mu) as areacode,h.hosname as hospname,
(SELECT hos_target from
 (select person.hospcode , count(distinct person.pid) as hos_target from person  
           where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099' 
           and (person.birth BETWEEN DATE_ADD(@start,INTERVAL -71 month) and DATE_ADD(@end,INTERVAL -71 month)) group by person.hospcode ) as t
where  t.hospcode = h.hoscode
) as target ,
(SELECT hos_doit from
          (select person.hospcode,count(distinct(person.pid)) as hos_doit from person  
           left join epi on epi.hospcode = person.hospcode and epi.pid = person.pid 
           where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099'  
           and (person.birth BETWEEN DATE_ADD(@start,INTERVAL -71 month) and DATE_ADD(@end,INTERVAL -71 month))  and epi.VACCINETYPE = '035'  group by person.hospcode) as r
where r.hospcode = h.hoscode
) as result 

from chospital_amp h
where h.provcode = '65' and h.distcode = '01' and hostype  in ('03','04','05','07','08','09','12','13')
order by distcode,hoscode asc;
