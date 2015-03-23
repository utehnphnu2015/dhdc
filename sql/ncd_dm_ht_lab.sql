set @start='2014-10-01';
set @end='2015-03-31';
set @bdg_date = '2014-09-30';

select  h.hoscode as hospcode ,h.hosname as hospname,

(SELECT  hos_chronic from 
          (select person.hospcode,count(distinct(person.pid)) as hos_chronic from chronic  
           inner join person on chronic.hospcode = person.hospcode and chronic.pid = person.pid
           where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099' and  (chronic.chronic between 'E10' and 'E149')  
             group by person.hospcode) as c
where c.hospcode  = h.hoscode
) as dmtarget,
(SELECT hos_doit from
          (select person.hospcode,count(distinct(person.pid)) as hos_doit from chronic  
           inner join person on chronic.hospcode = person.hospcode and chronic.pid = person.pid 
           inner join labfu on person.hospcode = labfu.hospcode and person.pid = labfu.pid 
           where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099' and  (chronic.chronic between 'E10' and 'E149')  
           and labfu.labtest = '09' and (labfu.date_serv BETWEEN @start and @end ) 
             group by person.hospcode) as r
where r.hospcode = h.hoscode
) as dmresult,
(SELECT  hos_chronic from 
          (select person.hospcode,count(distinct(person.pid)) as hos_chronic from chronic  
           inner join person on chronic.hospcode = person.hospcode and chronic.pid = person.pid
           where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099' and  (chronic.chronic between 'I10' and 'I159')  
             group by person.hospcode) as c
where c.hospcode  = h.hoscode
) as httarget,
(SELECT hos_doit from
          (select person.hospcode,count(distinct(person.pid)) as hos_doit from chronic  
           inner join person on chronic.hospcode = person.hospcode and chronic.pid = person.pid 
           inner join labfu on person.hospcode = labfu.hospcode and person.pid = labfu.pid 
           where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099' and  (chronic.chronic between 'I10' and 'I159')  
           and labfu.labtest = '09' and (labfu.date_serv BETWEEN @start and @end ) 
             group by person.hospcode) as r
where r.hospcode = h.hoscode
) as htresult 

from chospital_amp h;