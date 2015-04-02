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
        
        $date1 = "2014-04-01";
        $date2 = date('Y-m-d');
        if (Yii::$app->request->isPost) {
            $date1 = $_POST['date1'];
            $date2 = $_POST['date2'];
        }
        
        $sql="select h.distcode as amphur,h.hoscode as hospcode ,concat(provcode,distcode,subdistcode,mu) as areacode,h.hosname as hospname,
(select total from
(select anc.hospcode,count(distinct anc.pid) as total 
from labor 
INNER JOIN anc ON labor.hospcode = anc.hospcode AND labor.pid = anc.pid 
INNER JOIN person ON person.hospcode = anc.hospcode AND person.pid = anc.pid 
WHERE person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099' and person.sex = '2' 
      and labor.btype<>'6'   and labor.bdate BETWEEN  '$date1' AND '$date2'
GROUP BY person.hospcode  ) as t
where t.hospcode =h.hoscode ) as LaborTarget,

( select  total from
(
select labor.hospcode,count(*) as total  
from labor 
INNER JOIN 
(select anc1.hospcode,anc1.pid,anc1.gravida,count(distinct anc1.pid) as total 
from anc anc1
WHERE anc1.ga <= 12  
GROUP BY anc1.hospcode,anc1.pid  ) as anc1
ON labor.hospcode = anc1.hospcode AND labor.pid = anc1.pid
inner join 
(select anc2.hospcode,anc2.pid,anc2.gravida,count(distinct anc2.pid) as total 
from anc anc2
WHERE anc2.ga BETWEEN 13 AND 18 
GROUP BY anc2.hospcode,anc2.pid  ) as anc2
on anc1.hospcode = anc2.hospcode and anc1.pid = anc2.pid and anc1.gravida = anc2.gravida
inner join 
(select anc3.hospcode,anc3.pid,anc3.gravida,count(distinct anc3.pid) as total 
from anc anc3
WHERE anc3.ga BETWEEN 19 AND 26
GROUP BY anc3.hospcode,anc3.pid  ) as anc3
on anc1.hospcode = anc3.hospcode and anc1.pid = anc3.pid and anc1.gravida = anc3.gravida
inner join 
(select anc4.hospcode,anc4.pid,anc4.gravida,count(distinct anc4.pid) as total 
from anc anc4
WHERE anc4.ga BETWEEN 27 AND 32
GROUP BY anc4.hospcode,anc4.pid  ) as anc4
on anc1.hospcode = anc4.hospcode and anc1.pid = anc4.pid and anc1.gravida = anc4.gravida
inner join 
(select anc5.hospcode,anc5.pid,anc5.gravida,count(distinct anc5.pid) as total 
from anc anc5
WHERE anc5.ga BETWEEN 33 AND 40 
GROUP BY anc5.hospcode,anc5.pid  ) as anc5
on anc1.hospcode = anc5.hospcode and anc1.pid = anc5.pid and anc1.gravida = anc5.gravida

INNER JOIN person ON person.hospcode = labor.hospcode AND person.pid = labor.pid 
WHERE person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099' and person.sex = '2' 
             and labor.bdate BETWEEN  '$date1' AND '$date2'
GROUP BY labor.hospcode
) as a5
where a5.hospcode = h.hoscode) as 5timesResult


from chospital_amp h

order by distcode,hoscode asc;";
        
        
        
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
        
        $date1 = "2014-04-01";
        $date2 = date('Y-m-d');
        if (Yii::$app->request->isPost) {
            $date1 = $_POST['date1'];
            $date2 = $_POST['date2'];
        }
        
        $sql="select h.distcode as amphur,h.hoscode as hospcode ,concat(provcode,distcode,subdistcode,mu) as areacode,h.hosname as hospname,
(select total from
(select anc.hospcode,count(distinct anc.pid) as total 
from labor 
INNER JOIN anc ON labor.hospcode = anc.hospcode AND labor.pid = anc.pid 
INNER JOIN person ON person.hospcode = anc.hospcode AND person.pid = anc.pid 
WHERE person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099' and person.sex = '2' 
      and labor.btype<>'6'   and labor.bdate BETWEEN  '$date1' AND '$date2'
GROUP BY person.hospcode  ) as t
where t.hospcode =h.hoscode ) as LaborTarget,

( select  total from
(
select labor.hospcode,count(*) as total  
from labor 
INNER JOIN 
(select anc1.hospcode,anc1.pid,anc1.gravida,count(distinct anc1.pid) as total 
from anc anc1
WHERE anc1.ga <= 12  
GROUP BY anc1.hospcode,anc1.pid  ) as anc1
ON labor.hospcode = anc1.hospcode AND labor.pid = anc1.pid
INNER JOIN person ON person.hospcode = labor.hospcode AND person.pid = labor.pid 
WHERE person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099' and person.sex = '2' 
      and labor.btype<>'6'   and labor.bdate BETWEEN  '$date1' AND '$date2'
GROUP BY labor.hospcode
) as 12wks
where 12wks.hospcode = h.hoscode) as 12wksResult

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
         $date1 = "2014-04-01";
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
