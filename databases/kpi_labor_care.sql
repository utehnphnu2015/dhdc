set @start='2014-10-01';
set @end='2015-03-31';

select h.distcode as amphur,h.hoscode as hospcode ,concat(provcode,distcode,subdistcode,mu) as areacode,h.hosname as hospname,
(select count(distinct cid) as num 
from 
(select
p.hospcode,p.cid,p.pid,p.prename,p.name,p.lname,
la.lmp,la.bdate,la.btype,
(select po_date 
from 
(select
l.hospcode,
l.pid,

datediff(po.ppcare,l.bdate) as po_date
from
labor as l,
postnatal as po 
where  (l.hospcode = po.hospcode 
and l.pid = po.pid)) as a2
where a2.po_date between '1' and '7' and a2.pid=p.pid and a2.hospcode=p.hospcode
group by a2.pid
) as ppc_no1,
(select po_date 
from 
(select
l.hospcode,l.pid,
datediff(po.ppcare,l.bdate) as po_date
from
labor as l,
postnatal as po 
where  (l.hospcode = po.hospcode and l.pid = po.pid)) as a2
where a2.po_date between '8' and '15'   and a2.pid=p.pid and a2.hospcode=p.hospcode
group by a2.pid
) as ppc_no2,
(select po_date 
from 
(select l.hospcode,l.pid,
datediff(po.ppcare,l.bdate) as po_date
from
labor as l,
postnatal as po 
where  (l.hospcode = po.hospcode and l.pid = po.pid)) as a2
where a2.po_date between '16' and '42'    and a2.pid=p.pid and a2.hospcode=p.hospcode
group by a2.pid
) as ppc_no3
from
labor as la
,person as p 
where  la.pid = p.pid and p.hospcode = la.hospcode
and la.bdate between '2014-10-01' and '2015-09-30'
and p.nation='099' and p.discharge='9' and p.typearea in ('1','3') and la.btype<>'6'
order by p.hospcode 
) as ppc3t where ppc3t.hospcode=h.hoscode
) as target,
(
select count(distinct cid) as num 
from 
(select
p.hospcode,p.cid,p.pid,p.prename,p.name,p.lname,
la.lmp,la.bdate,la.btype,
(select po_date 
from 
(select
l.hospcode,
l.pid,
datediff(po.ppcare,l.bdate) as po_date
from
labor as l,
postnatal as po 
where (l.hospcode = po.hospcode and l.pid = po.pid)) as a2
where a2.po_date between '1' and '7' and a2.pid=p.pid and a2.hospcode=p.hospcode
group by a2.pid
) as ppc_no1,
(select po_date 
from 
(select
l.hospcode,l.pid,
datediff(po.ppcare,l.bdate) as po_date
from
labor as l,
postnatal as po 
where  (l.hospcode = po.hospcode and l.pid = po.pid)) as a2
where a2.po_date between '8' and '15'   and a2.pid=p.pid and a2.hospcode=p.hospcode
group by a2.pid
) as ppc_no2,
(select po_date 
from 
(select 
l.hospcode,
l.pid,
datediff(po.ppcare,l.bdate) as po_date
from
labor as l,
postnatal as po 
where (l.hospcode = po.hospcode and l.pid = po.pid)) as a2
where a2.po_date between '16' and '42'    and a2.pid=p.pid and a2.hospcode=p.hospcode
group by a2.pid
) as ppc_no3
from
labor as la
,person as p 
where  (la.pid = p.pid  and p.hospcode = la.hospcode)
and la.bdate between @start and @end
and p.nation='099' and p.discharge='9' and p.typearea in ('1','3') and la.btype<>'6'
order by p.hospcode 
) as ppc3 where ppc3.hospcode=h.hoscode
and ppc_no1 is not null and ppc_no2 is not null and ppc_no3 is not null 
) as result
from chospital_amp h
where h.provcode = '65' and h.distcode = '01' and hostype  in ('03','04','05','07','08','09','12','13')
order by distcode,hoscode asc;