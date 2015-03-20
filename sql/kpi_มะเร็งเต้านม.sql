set @bdg_date = '2014-09-30';
set @start = '2014-10-31';
set @end = '2015-03-31';

select  h.distcode as amphur,h.hoscode as hospcode ,concat(provcode,distcode,subdistcode,mu) as areacode,h.hosname as hospname,
(SELECT hos_target from
 (select person.hospcode , count(distinct person.pid) as hos_target from person  
           where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099' 
           and (TIMESTAMPDIFF(YEAR,person.birth,@bdg_date) between 30 and 60) and sex = '2' group by person.hospcode ) as t
where  t.hospcode = h.hoscode
) as target ,
(SELECT hos_doit from
          (select person.hospcode,count(distinct(person.pid)) as hos_doit from service 
           inner join diagnosis_opd d on service.hospcode = d.hospcode and service.pid = d.pid  and service.SEQ = d.SEQ
           inner join person on service.hospcode = person.hospcode and service.pid = person.pid 
           where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099'  and sex = '2'
           and (TIMESTAMPDIFF(YEAR,person.birth,@bdg_date) between 30 and 60)  and d.diagcode = 'Z123' 
           and (service.date_serv between @start and @end)  group by person.hospcode) as r
where r.hospcode = h.hoscode
) as result58 

from chospital_amp h
where h.provcode = '65' and h.distcode = '01' and hostype  in ('03','04','05','07','08','09','12','13')
order by distcode,hoscode asc;
