set @date1='2014-10-01';
set @date2='2015-09-30';
set @bdgdate='2014-10-01';
set @hospcode=11255;

select a.hospcode,a.pid,a.pt_name,a.sex,a.age_y,a.last_a1c,a.fpg1,a.fpg2,a.dtx1,a.dtx2,
if(last_a1c is not null,if(last_a1c<=7,'y','n'),
if(fpg1 BETWEEN 70 and 130 and fpg2 BETWEEN 70 and 130,'y',
if(dtx1 BETWEEN 70 and 130 and dtx2 BETWEEN 70 and 130,'y',
if(fpg1 BETWEEN 70 and 130 and dtx1 BETWEEN 70 and 130,'y','n')))) as result
from (
SELECT p.hospcode,p.pid,concat(p.name,' ',p.lname) as pt_name,if(p.sex=1,'ชาย','หญิง') as sex,
TIMESTAMPDIFF(YEAR,p.birth,@bdgdate) as age_y,

(select l1.LABRESULT
from labfu l1
where l1.HOSPCODE=c.HOSPCODE and l1.DATE_SERV between @date1 and @date2
and l1.LABTEST=05 
and l1.PID=c.PID
order by l1.PID, l1.D_UPDATE desc
limit 0,1) as last_a1c,

(select l2.LABRESULT
from labfu l2
where l2.HOSPCODE=c.HOSPCODE and l2.DATE_SERV between @date1 and @date2
and l2.LABTEST=01 
and l2.PID=c.PID
order by l2.PID, l2.D_UPDATE desc
limit 0,1) as fpg1,

(select l3.LABRESULT
from labfu l3
where l3.HOSPCODE=c.HOSPCODE and l3.DATE_SERV between @date1 and @date2
and l3.LABTEST=01 
and l3.PID=c.PID
order by l3.PID, l3.D_UPDATE desc
limit 1,1) as fpg2,

(select l4.LABRESULT
from labfu l4
where l4.HOSPCODE=c.HOSPCODE and l4.DATE_SERV between @date1 and @date2
and l4.LABTEST=03 
and l4.PID=c.PID
order by l4.PID, l4.D_UPDATE desc
limit 0,1) as dtx1,

(select l5.LABRESULT
from labfu l5
where l5.HOSPCODE=c.HOSPCODE and l5.DATE_SERV between @date1 and @date2
and l5.LABTEST=03 
and l5.PID=c.PID
order by l5.PID, l5.D_UPDATE desc
limit 1,1) as dtx2

from person p
inner join chronic c on c.HOSPCODE=p.HOSPCODE and c.PID=p.PID
left outer join service s on s.HOSPCODE=p.HOSPCODE and s.PID=p.PID
where p.TYPEAREA in (1,3) and (TIMESTAMPDIFF(YEAR,p.birth,@bdgdate) > 15 ) and p.HOSPCODE=@hospcode 
and (c.chronic between 'E10' and 'E149') and s.INSTYPE=0100 and s.DATE_SERV between @date1 and @date2
group by s.PID) a
