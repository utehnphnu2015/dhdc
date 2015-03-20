#คิวรี่ very load 
set @start='2014-10-01';
set @end='2015-03-31';
set @bdg_date = '2014-09-30';

select ncdscreen_all.*,format(ncdscreen_all.htresult*100/ncdscreen_all.httarget,2) as HTpercent,format(ncdscreen_all.dmresult*100/ncdscreen_all.dmtarget,2) as DMpercent from 
(select  h.distcode as amphur,h.hoscode as hospcode ,concat(provcode,distcode,subdistcode,mu) as areacode,h.hosname as hospname,
(SELECT hos_target from
 (select person.hospcode , count(distinct person.pid) as hos_target from person  
           where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099' 
           and (TIMESTAMPDIFF(YEAR,person.birth,@bdg_date) >= 35 )
            group by person.hospcode ) as t
where  t.hospcode = h.hoscode
) as Pop ,
(SELECT  hos_chronic from 
          (select person.hospcode,count(distinct(person.pid)) as hos_chronic from chronic  
           inner join person on chronic.hospcode = person.hospcode and chronic.pid = person.pid 
           where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099' 
           and (TIMESTAMPDIFF(YEAR,person.birth,@bdg_date) >= 35 ) and (chronic.chronic between 'I10' and 'I159') 
             group by person.hospcode) as c
where c.hospcode  = h.hoscode
) as HT,
(SELECT  hos_chronic from 
          (select person.hospcode,count(distinct(person.pid)) as hos_chronic from chronic  
           inner join person on chronic.hospcode = person.hospcode and chronic.pid = person.pid 
           where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099' 
           and (TIMESTAMPDIFF(YEAR,person.birth,@bdg_date) >= 35 ) and (chronic.chronic between 'E10' and 'E149') 
             group by person.hospcode) as c
where c.hospcode  = h.hoscode
) as DM,
(SELECT hos_target from
 (select person.hospcode , count(*) as hos_target from person  
           where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099' 
           and (TIMESTAMPDIFF(YEAR,person.birth,@bdg_date) >= 35 )
           and concat(person.hospcode ,person.pid) not in  
           ( select concat(hospcode,pid) from chronic c where c.chronic between 'I10' and 'I159' )
group by person.hospcode ) as t
where  t.hospcode = h.hoscode
) as HTtarget ,
(SELECT hos_doit from
          (select person.hospcode,count(*) as hos_doit from ncdscreen  
           inner join person on ncdscreen.hospcode = person.hospcode and ncdscreen.pid = person.pid 
           where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099' 
           and (TIMESTAMPDIFF(YEAR,person.birth,@bdg_date) >= 35 ) and date_serv between @start and @end 
            
           and person.pid not in  
           ( select pid from chronic c where c.chronic between 'I10' and 'I159' ) group by person.hospcode) as r
where r.hospcode = h.hoscode
) as HTresult,
(SELECT hos_target from
 (select person.hospcode , count(*) as hos_target from person  
           where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099' 
           and (TIMESTAMPDIFF(YEAR,person.birth,@bdg_date) >= 35 ) 
           and concat(person.hospcode ,person.pid) not in  
           ( select concat(hospcode,pid) from chronic c where c.chronic between 'E10' and 'E149' )
group by person.hospcode ) as t
where  t.hospcode = h.hoscode
) as DMtarget ,
(SELECT hos_doit from
          (select person.hospcode,count(*) as hos_doit from ncdscreen  
           inner join person on ncdscreen.hospcode = person.hospcode and ncdscreen.pid = person.pid 
           where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099' 
           and (TIMESTAMPDIFF(YEAR,person.birth,@bdg_date) >= 35 ) and date_serv between @start and @end 
            
           and person.pid not in  
           ( select pid from chronic c where c.chronic between 'E10' and 'E149' ) group by person.hospcode) as r
where r.hospcode = h.hoscode
) as DMresult 

from chospital_amp h) as ncdscreen_all;