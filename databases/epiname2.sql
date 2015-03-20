set @start='2009-04-01';
set @end='2010-03-31';
set @vac='035';
set @hosp='07484';
select distinct person.hospcode,person.pid,person.name,person.lname,
if((select count(*) from epi e where e.vaccinetype=@vac and concat(e.pid,e.hospcode)=concat(person.pid,person.hospcode))>0,1,0) as vac_chk from person  
          left join epi on epi.hospcode = person.hospcode and epi.pid = person.pid  
           where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099'  
           and (person.birth BETWEEN @start and @end)  
 and person.hospcode = @hosp 
group by person.hospcode,person.pid
HAVING vac_chk = 1
order by person.pid;