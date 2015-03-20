set @start = '2014-10-31';
set @end = '2015-03-31';

select  h.hoscode as hospcode ,h.hosname as hospname,

(select count(*)  from prenatal  
           where (prenatal.edc BETWEEN @start and @end )  and hospcode = h.hoscode
) as prenatal,
(select count(*)  from labor
           where (labor.bdate BETWEEN @start and @end ) and hospcode = h.hoscode
) as labor,
(select count(*)  from postnatal  
           where (postnatal.bdate BETWEEN @start and @end ) and hospcode = h.hoscode
) as postnatal,
(select count(*)  from newborn  
           where (newborn.bdate BETWEEN @start and @end ) and hospcode = h.hoscode
) as newborn,
(select count(*)  from newborncare  
           where (newborncare.bdate BETWEEN @start and @end ) and hospcode = h.hoscode
) as newborncare
from chospital_amp h;
