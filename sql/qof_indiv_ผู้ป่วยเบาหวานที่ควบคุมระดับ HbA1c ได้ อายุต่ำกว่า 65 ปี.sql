set @date1='2014-10-01';
set @date2='2015-09-30';
set @bdgdate='2014-10-01';
set @hospcode=11255;

select a.hospcode,a.pid,a.pt_name,a.sex,a.age_y,a.last_a1c,if(last_a1c<=7,'y','n') as result
from (select c.hospcode,c.PID,concat(p.name,' ',p.lname) as pt_name,if(p.sex=1,'ชาย','หญิง') as sex,
TIMESTAMPDIFF(YEAR,p.birth,@bdgdate ) as age_y,
(select l1.LABRESULT
from labfu l1
where l1.HOSPCODE=c.HOSPCODE and l1.DATE_SERV between @date1 and @date2
and l1.LABTEST=05 
and l1.PID=c.PID
order by l1.PID, l1.D_UPDATE desc
limit 0,1) as last_a1c
from chronic c 
inner join person p on c.hospcode = p.hospcode and c.pid = p.pid 
inner join card cr on cr.HOSPCODE=p.HOSPCODE and cr.PID=p.PID
where p.typearea in ('1', '3') and p.nation ='099' 
and (c.chronic between 'E10' and 'E149') and (TIMESTAMPDIFF(YEAR,p.birth,@bdgdate) < 65 ) 
and cr.INSTYPE_NEW=0100 and c.hospcode=@hospcode
group by c.PID) a;