<?php

namespace frontend\controllers;

use yii;

class MomController extends \yii\web\Controller
{
    public $enableCsrfValidation = false;
    public function actionIndex()
    {
        return $this->render('index');
    }
    
    public function  actionReport1(){
        
        $date1 = "2014-10-01";
        $date2 = date('Y-m-d');
        if (Yii::$app->request->isPost) {
            $date1 = $_POST['date1'];
            $date2 = $_POST['date2'];
        }
        
        $sql="select h.hoscode as hospcode ,h.hosname as hospname,
(select count(distinct CID) as num 
from 
(select
p.HOSPCODE,p.CID,p.PID,p.PRENAME,p.NAME,p.LNAME,
la.LMP,la.BDATE,la.BTYPE,
(select ga_date 
from 
(select
a.HOSPCODE,
a.PID,
a.DATE_SERV,
a.ANCNO,
a.GA,
l.LMP,
datediff(a.DATE_SERV,l.LMP) as ga_date
from
anc as a,
labor as l 
where a.HOSPCODE = l.HOSPCODE 
and a.PID = l.PID) as a2
where a2.ga_date between '7' and '84' and a2.PID=p.PID and a2.HOSPCODE=p.HOSPCODE
group by a2.PID
) as anc_no1,
(select ga_date 
from 
(select
a.HOSPCODE,a.PID,
a.DATE_SERV,a.ANCNO,a.GA,
l.LMP,
datediff(a.DATE_SERV,l.LMP) as ga_date
from
anc as a,
labor as l 
where a.HOSPCODE = l.HOSPCODE 
and a.PID = l.PID) as a2
where a2.ga_date between '85' and '146'   and a2.PID=p.PID and a2.HOSPCODE=p.HOSPCODE
group by a2.PID
) as anc_no2,
(select ga_date 
from 
(select a.HOSPCODE,a.PID,a.DATE_SERV,a.ANCNO,a.GA,
l.LMP,
datediff(a.DATE_SERV,l.LMP) as ga_date
from
anc as a,
labor as l 
where a.HOSPCODE = l.HOSPCODE 
and a.PID = l.PID) as a2
where a2.ga_date between '147' and '202'    and a2.PID=p.PID and a2.HOSPCODE=p.HOSPCODE
group by a2.PID
) as anc_no3,
(select ga_date 
from 
(select a.HOSPCODE,a.PID,a.DATE_SERV,a.ANCNO,a.GA,l.LMP,
datediff(a.DATE_SERV,l.LMP) as ga_date
from
anc as a,
labor as l 
where a.HOSPCODE = l.HOSPCODE 
and a.PID = l.PID) as a2
where a2.ga_date between '203' and '244'    and a2.PID=p.PID and a2.HOSPCODE=p.HOSPCODE
group by a2.PID
) as anc_no4,
(
select ga_date 
from 
(select
a.HOSPCODE,
a.PID,
a.DATE_SERV,
a.ANCNO,
a.GA,
l.LMP,
datediff(a.DATE_SERV,l.LMP) as ga_date
from
anc as a,
labor as l 
where a.HOSPCODE = l.HOSPCODE 
and a.PID = l.PID) as a2
where a2.ga_date between '245' and '286'    and a2.PID=p.PID and a2.HOSPCODE=p.HOSPCODE
group by a2.PID
) as anc_no5
from
labor as la
,person as p 
where  la.PID = p.PID 
and p.HOSPCODE = la.HOSPCODE
and la.BDATE between '$date1' and '$date2'
and p.NATION='099' and p.DISCHARGE='9' and p.TYPEAREA in ('1','3') and la.BTYPE<>'6'
order by p.HOSPCODE 
) as anc5t where anc5t.HOSPCODE=h.hoscode
) as target,
(
select count(distinct CID) as num 
from 
(select
p.HOSPCODE,p.CID,p.PID,p.PRENAME,p.NAME,p.LNAME,
la.LMP,la.BDATE,la.BTYPE,
(select ga_date 
from 
(select a.HOSPCODE,a.PID,a.DATE_SERV,a.ANCNO,a.GA,l.LMP,
datediff(a.DATE_SERV,l.LMP) as ga_date
from
anc as a,
labor as l 
where a.HOSPCODE = l.HOSPCODE 
and a.PID = l.PID) as a2
where a2.ga_date between '7' and '84' and a2.PID=p.PID and a2.HOSPCODE=p.HOSPCODE
group by a2.PID
) as anc_no1,
(select ga_date 
from 
(select
a.HOSPCODE,a.PID,a.DATE_SERV,a.ANCNO,a.GA,l.LMP,datediff(a.DATE_SERV,l.LMP) as ga_date
from anc as a,
labor as l 
where a.HOSPCODE = l.HOSPCODE 
and a.PID = l.PID) as a2
where a2.ga_date between '85' and '146'   and a2.PID=p.PID and a2.HOSPCODE=p.HOSPCODE
group by a2.PID
) as anc_no2,
(select ga_date 
from  (select a.HOSPCODE,a.PID,a.DATE_SERV,a.ANCNO,a.GA,l.LMP,datediff(a.DATE_SERV,l.LMP) as ga_date
from
anc as a,labor as l 
where a.HOSPCODE = l.HOSPCODE 
and a.PID = l.PID) as a2
where a2.ga_date between '147' and '202'    and a2.PID=p.PID and a2.HOSPCODE=p.HOSPCODE
group by a2.PID
) as anc_no3,
(select ga_date 
from 
(select a.HOSPCODE,a.PID,a.DATE_SERV,a.ANCNO,a.GA,l.LMP,datediff(a.DATE_SERV,l.LMP) as ga_date
from anc as a,labor as l 
where a.HOSPCODE = l.HOSPCODE 
and a.PID = l.PID) as a2
where a2.ga_date between '203' and '244'    and a2.PID=p.PID and a2.HOSPCODE=p.HOSPCODE
group by a2.PID
) as anc_no4,
(
select ga_date 
from 
(select
a.HOSPCODE,
a.PID,
a.DATE_SERV,
a.ANCNO,
a.GA,
l.LMP,
datediff(a.DATE_SERV,l.LMP) as ga_date
from
anc as a,
labor as l 
where a.HOSPCODE = l.HOSPCODE 
and a.PID = l.PID) as a2
where a2.ga_date between '245' and '286'    and a2.PID=p.PID and a2.HOSPCODE=p.HOSPCODE
group by a2.PID
) as anc_no5
from
labor as la
,person as p 
where  la.PID = p.PID 
and p.HOSPCODE = la.HOSPCODE
and la.BDATE between '$date1' and '$date2'
and p.NATION='099' and p.DISCHARGE='9' and p.TYPEAREA in ('1','3') and la.BTYPE<>'6'
order by p.HOSPCODE 
) as anc5t where anc5t.HOSPCODE=h.hoscode 
and anc_no1 is not null and anc_no2 is not null and anc_no3 is not null and anc_no4 is not null and anc_no5 is not null
) as result

from chospital_amp h
order by distcode,hoscode asc";
        
        
        
        try {
            $rawData = \Yii::$app->db->createCommand($sql)->queryAll();
        } catch (\yii\db\Exception $e) {
            throw new \yii\web\ConflictHttpException('sql error');
        }
        $dataProvider = new \yii\data\ArrayDataProvider([
            //'key' => 'hoscode',
            'allModels' => $rawData,
            'pagination' => FALSE,
        ]);

        return $this->render('report1', [

                    'dataProvider' => $dataProvider,
                    'sql' => $sql,
                    'date1' => $date1,
                    'date2' => $date2
        ]);
    }
    
    public function  actionReport2(){
        
        $date1 = "2014-10-01";
        $date2 = date('Y-m-d');
        if (Yii::$app->request->isPost) {
            $date1 = $_POST['date1'];
            $date2 = $_POST['date2'];
        }
        
        $sql="select h.hoscode as hospcode ,h.hosname as hospname,
(select count(distinct CID) as num 
from 
(select
p.HOSPCODE,p.CID,p.PID,p.PRENAME,p.NAME,p.LNAME,
pn.LMP,a.DATE_SERV,
(select ga_date 
from 
(select
a.HOSPCODE,
a.PID,
a.DATE_SERV,
a.ANCNO,
a.GA,
pn.LMP,
datediff(a.DATE_SERV,pn.LMP) as ga_date
from
anc as a,
prenatal as pn
where a.HOSPCODE = pn.HOSPCODE 
and a.PID = pn.PID) as a2
where a2.ga_date between '7' and '84' and a2.PID=p.PID and a2.HOSPCODE=p.HOSPCODE
group by a2.PID
) as anc_no1
from
prenatal as pn
,anc as a
,person as p 
where  pn.PID = p.PID and p.HOSPCODE = pn.HOSPCODE
and pn.PID = a.PID and pn.HOSPCODE = a.HOSPCODE
and a.DATE_SERV between '$date1' and '$date2'
and p.NATION='099' and p.DISCHARGE='9' and p.TYPEAREA in ('1','3') 
order by p.HOSPCODE 
) as anc12wks where anc12wks.HOSPCODE=h.hoscode
) as target,
(
select count(distinct CID) as num 
from 
(select
p.HOSPCODE,p.CID,p.PID,p.PRENAME,p.NAME,p.LNAME,
a.DATE_SERV,
(select ga_date 
from 
(select a.HOSPCODE,a.PID,a.DATE_SERV,a.ANCNO,a.GA,pn.LMP,
datediff(a.DATE_SERV,pn.LMP) as ga_date
from
anc as a,
prenatal as pn
where a.HOSPCODE = pn.HOSPCODE 
and a.PID = pn.PID) as a2
where a2.ga_date between '7' and '84' and a2.PID=p.PID and a2.HOSPCODE=p.HOSPCODE
group by a2.PID
) as anc_no1
from
anc as a
,person as p 
where  a.PID = p.PID 
and p.HOSPCODE = a.HOSPCODE
and a.DATE_SERV between '$date1' and '$date2'
and p.NATION='099' and p.DISCHARGE='9' and p.TYPEAREA in ('1','3') 
order by p.HOSPCODE 
) as anc12wks where anc12wks.HOSPCODE=h.hoscode 
and anc_no1 is not null 
) as result

from chospital_amp h
order by distcode,hoscode asc";
        
         try {
            $rawData = \Yii::$app->db->createCommand($sql)->queryAll();
        } catch (\yii\db\Exception $e) {
            throw new \yii\web\ConflictHttpException('sql error');
        }
        $dataProvider = new \yii\data\ArrayDataProvider([
            //'key' => 'hoscode',
            'allModels' => $rawData,
            'pagination' => FALSE,
        ]);

        return $this->render('report2', [

                    'dataProvider' => $dataProvider,
                    'sql' => $sql,
                    'date1' => $date1,
                    'date2' => $date2
        ]);
        
    }

    public function  actionReport3(){
         
        $date1 = "2014-10-01";
        $date2 = date('Y-m-d');
        if (Yii::$app->request->isPost) {
            $date1 = $_POST['date1'];
            $date2 = $_POST['date2'];
        }
        
        $sql="select  h.hoscode as hospcode ,h.hosname as hospname,
(SELECT hos_target from
 (select person.hospcode , count(distinct person.pid) as hos_target from person  
           where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099' 
           and (person.birth BETWEEN DATE_ADD('$date1',INTERVAL -71 month) and DATE_ADD('$date2',INTERVAL -71 month)) group by person.hospcode ) as t
where  t.hospcode = h.hoscode
) as target ,
(SELECT hos_doit from
          (select person.hospcode,count(distinct(person.pid)) as hos_doit from epi  inner join person on epi.hospcode = person.hospcode and epi.pid = person.pid 
           where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099'  
           and (person.birth BETWEEN DATE_ADD('$date1',INTERVAL -71 month) and DATE_ADD('$date2',INTERVAL -71 month))  and epi.VACCINETYPE = '035'  group by person.hospcode) as r
where r.hospcode = h.hoscode
) as result 

from chospital_amp h
order by distcode,hoscode asc";
        
         try {
            $rawData = \Yii::$app->db->createCommand($sql)->queryAll();
        } catch (\yii\db\Exception $e) {
            throw new \yii\web\ConflictHttpException('sql error');
        }
        $dataProvider = new \yii\data\ArrayDataProvider([
            //'key' => 'hoscode',
            'allModels' => $rawData,
            'pagination' => FALSE,
        ]);

        return $this->render('report3', [

                    'dataProvider' => $dataProvider,
                    'sql' => $sql,
                    'date1' => $date1,
                    'date2' => $date2
        ]);
        
    }
    
    public function actionReport4(){
         $date1 = "2014-10-01";
        $date2 = date('Y-m-d');
        if (Yii::$app->request->isPost) {
            $date1 = $_POST['date1'];
            $date2 = $_POST['date2'];
        }
        
        $sql="select h.distcode as amphur,h.hoscode as hospcode ,concat(provcode,distcode,subdistcode,mu) as areacode,h.hosname as hospname,
(SELECT hos_target from
 (select person.hospcode , count(distinct person.pid) as hos_target from newborn  
           inner join person on newborn.hospcode = person.hospcode and newborn.pid = person.pid 
           where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099'  
           and (newborn.BDATE BETWEEN '$date1' and '$date2') group by person.hospcode ) as t
where  t.hospcode = h.hoscode
) as target ,
(SELECT hos_doit from
          (select person.hospcode,count(distinct(person.pid)) as hos_doit from newborn  
           inner join person on newborn.hospcode = person.hospcode and newborn.pid = person.pid 
           where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099'  
           and (newborn.BDATE BETWEEN '$date1' and '$date2') and  newborn.BWEIGHT < 2500 group by person.hospcode) as r
where r.hospcode = h.hoscode
) as result 
from chospital_amp h
order by distcode,hoscode asc";
        
        try {
            $rawData = \Yii::$app->db->createCommand($sql)->queryAll();
        } catch (\yii\db\Exception $e) {
            throw new \yii\web\ConflictHttpException('sql error');
        }
        $dataProvider = new \yii\data\ArrayDataProvider([
            //'key' => 'hoscode',
            'allModels' => $rawData,
            'pagination' => FALSE,
        ]);

        return $this->render('report4', [

                    'dataProvider' => $dataProvider,
                    'sql' => $sql,
                    'date1' => $date1,
                    'date2' => $date2
        ]);
        
    }
    
}
