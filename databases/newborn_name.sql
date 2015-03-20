set @start='2014-04-01';
set @end='2015-03-31';
select person.hospcode,person.name,person.lname from newborn  
           inner join person on newborn.hospcode = person.hospcode and newborn.pid = person.pid 
           where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099'  
           and (newborn.BDATE BETWEEN @start and @end) and  (newborn.BWEIGHT < 2500)
and person.hospcode = '14061';