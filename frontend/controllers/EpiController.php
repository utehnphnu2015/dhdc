<?php

namespace frontend\controllers;
use yii;

class EpiController extends \yii\web\Controller
{
     public $enableCsrfValidation = false;
    public function actionIndex()
    {
        return $this->render('index');
    }
    
    public function actionReport1() {//
        $bdg_date = '2014-09-30';
        $date1 = "2014-10-01";
        $date2 = date('Y-m-d');
        if (Yii::$app->request->isPost) {
            $date1 = $_POST['date1'];
            $date2 = $_POST['date2'];
        }

        $sql = "

select  h.hoscode as hospcode ,h.hosname as hospname,
(SELECT hos_target from
 (select person.hospcode , count(distinct person.pid) as hos_target from person  
           where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099' 
           and (person.birth BETWEEN '$date1' and '$date2') group by person.hospcode ) as t
where  t.hospcode = h.hoscode
) as target ,
(SELECT hos_doit from
          (select person.hospcode,count(distinct(person.pid)) as hos_doit from epi  inner join person on epi.hospcode = person.hospcode and epi.pid = person.pid 
           where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099'  
           and (person.birth BETWEEN '$date1' and '$date2')  and epi.VACCINETYPE = '035'  group by person.hospcode) as r
where r.hospcode = h.hoscode
) as result 

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
    }// จบ report1 (dtp5)
    
        public function actionReportbcg() {//
        $bdg_date = '2014-09-30';
        $date1 = "2014-10-01";
        $date2 = date('Y-m-d');
        if (Yii::$app->request->isPost) {
            $date1 = $_POST['date1'];
            $date2 = $_POST['date2'];
        }

        $sql = "

select  h.hoscode as hospcode ,h.hosname as hospname,
(SELECT hos_target from
 (select person.hospcode , count(distinct person.pid) as hos_target from person  
           where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099' 
           and (person.birth BETWEEN '$date1' and '$date2') group by person.hospcode ) as t
where  t.hospcode = h.hoscode
) as target ,
(SELECT hos_doit from
          (select person.hospcode,count(distinct(person.pid)) as hos_doit from epi  inner join person on epi.hospcode = person.hospcode and epi.pid = person.pid 
           where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099'  
           and (person.birth BETWEEN '$date1' and '$date2')  and epi.VACCINETYPE = '010'  group by person.hospcode) as r
where r.hospcode = h.hoscode
) as result 

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

        return $this->render('reportbcg', [

                    'dataProvider' => $dataProvider,
                    'sql' => $sql,
                    'date1' => $date1,
                    'date2' => $date2
        ]);
    }// จบ reportbcg
    
        public function actionIndivReportBcg($hospcode = null, $date1 = '2014-10-01',$date2 = '2015-04-02') {

        $role = isset(Yii::$app->user->identity->role) ? Yii::$app->user->identity->role : 99;
        if ($role == 99) {
            throw new \yii\web\ConflictHttpException('ไม่อนุญาต');
        }

        $sql = "select distinct person.hospcode,person.pid,concat(person.name,'  ',person.lname) as fullname,if(person.sex=1,'ชาย','หญิง') as sex,
ifnull(TIMESTAMPDIFF(MONTH,person.birth,epi.date_serv),0) as age_y,epi.date_serv,
if((select count(*) from epi e where e.vaccinetype='010' and concat(e.pid,e.hospcode)=concat(person.pid,person.hospcode))>0,'y','n') as result from person  
          left join epi on epi.hospcode = person.hospcode and epi.pid = person.pid  
           where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099'  
           and (person.birth BETWEEN '$date1' and '$date2')  
 and person.hospcode = '$hospcode' 
group by person.hospcode,person.pid
order by person.pid
";
  //echo $sql;
        $rawData = \Yii::$app->db->createCommand($sql)->queryAll();
        //print_r($rawData);
        //return;

        try {
            $rawData = \Yii::$app->db->createCommand($sql)->queryAll();
        } catch (\yii\db\Exception $e) {
            throw new \yii\web\ConflictHttpException('sql error');
        }

        return $this->render('indivreportbcg', [
                    'rawData' => $rawData,
                    'sql' => $sql,
        ]);
    }// indivbcg
    
        public function actionReportmmr() {//
        $bdg_date = '2014-09-30';
        $date1 = "2014-10-01";
        $date2 = date('Y-m-d');
        if (Yii::$app->request->isPost) {
            $date1 = $_POST['date1'];
            $date2 = $_POST['date2'];
        }

        $sql = "

select  h.hoscode as hospcode ,h.hosname as hospname,
(SELECT hos_target from
 (select person.hospcode , count(distinct person.pid) as hos_target from person  
           where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099' 
           and (person.birth BETWEEN '$date1' and '$date2') group by person.hospcode ) as t
where  t.hospcode = h.hoscode
) as target ,
(SELECT hos_doit from
          (select person.hospcode,count(distinct(person.pid)) as hos_doit from epi  inner join person on epi.hospcode = person.hospcode and epi.pid = person.pid 
           where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099'  
           and (person.birth BETWEEN '$date1' and '$date2')  and epi.VACCINETYPE = '061'  group by person.hospcode) as r
where r.hospcode = h.hoscode
) as result 

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

        return $this->render('reportmmr', [

                    'dataProvider' => $dataProvider,
                    'sql' => $sql,
                    'date1' => $date1,
                    'date2' => $date2
        ]);
    }// จบ reportmmr
    
            public function actionIndivReportMmr($hospcode = null, $date1 = '2014-10-01',$date2 = '2015-04-02') {

        $role = isset(Yii::$app->user->identity->role) ? Yii::$app->user->identity->role : 99;
        if ($role == 99) {
            throw new \yii\web\ConflictHttpException('ไม่อนุญาต');
        }

        $sql = "select distinct person.hospcode,person.pid,concat(person.name,'  ',person.lname) as fullname,if(person.sex=1,'ชาย','หญิง') as sex,
TIMESTAMPDIFF(YEAR,person.birth,'$date2') as age_y,epi.date_serv,
if((select count(*) from epi e where e.vaccinetype='061' and concat(e.pid,e.hospcode)=concat(person.pid,person.hospcode))>0,'y','n') as result from person  
          left join epi on epi.hospcode = person.hospcode and epi.pid = person.pid  
           where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099'  
           and (person.birth BETWEEN '$date1' and '$date2')  
 and person.hospcode = $hospcode 
group by person.hospcode,person.pid
order by person.pid
";
 // echo $sql;
        $rawData = \Yii::$app->db->createCommand($sql)->queryAll();
        //print_r($rawData);
        //return;

        try {
            $rawData = \Yii::$app->db->createCommand($sql)->queryAll();
        } catch (\yii\db\Exception $e) {
            throw new \yii\web\ConflictHttpException('sql error');
        }

        return $this->render('indivreportbcg', [
                    'rawData' => $rawData,
                    'sql' => $sql,
        ]);
    }// indivmmr
    
    public function actionReport2() {//
        
        $sql = "SELECT p.HOSPCODE as hospcode,c.hosname as hospname,
count(DISTINCT p.pid,p.HOSPCODE) as 'dtc_all' ,
sum(CASE WHEN p.BIRTH BETWEEN '1965-01-01' and '1995-12-31' and epi.HOSPCODE=epi.VACCINEPLACE THEN '1' ELSE '0' END) AS 'intarget_inhos',
sum(CASE WHEN p.BIRTH not BETWEEN '1965-01-01' and '1995-12-31' and epi.HOSPCODE=epi.VACCINEPLACE THEN '1' ELSE '0' END) AS 'outtarget_inhos',
sum(CASE WHEN p.BIRTH BETWEEN '1965-01-01' and '1995-12-31' and epi.HOSPCODE!=epi.VACCINEPLACE THEN '1' ELSE '0' END) AS 'intarget_outhos',
sum(CASE WHEN p.BIRTH not BETWEEN '1965-01-01' and '1995-12-31' and epi.HOSPCODE!=epi.VACCINEPLACE THEN '1' ELSE '0' END) AS 'outtarget_outhos',
sum(CASE WHEN p.NATION='099' AND p.BIRTH BETWEEN '1965-01-01' and '1995-12-31' THEN '1' ELSE '0' END) AS 'intarget_thai',
sum(CASE WHEN p.NATION='099' AND p.BIRTH not BETWEEN '1965-01-01' and '1995-12-31' THEN '1' ELSE '0' END) AS 'outtarget_thai',
sum(CASE WHEN p.NATION!='099' AND p.BIRTH BETWEEN '1965-01-01' and '1995-12-31'THEN '1' ELSE '0' END) AS 'intarget_foreign',
sum(CASE WHEN p.NATION!='099' AND p.BIRTH not BETWEEN '1965-01-01' and '1995-12-31'THEN '1' ELSE '0' END) AS 'outtarget_foreign',
sum(CASE WHEN p.NATION='099' AND p.BIRTH BETWEEN '1965-01-01' and '1995-12-31' and p.typearea in (1,3) THEN '1' ELSE '0' END) AS 'intarget_inarea',
sum(CASE WHEN p.NATION='099' AND p.BIRTH not BETWEEN '1965-01-01' and '1995-12-31' and p.typearea in (1,3) THEN '1' ELSE '0' END) AS 'outtarget_inarea',
sum(CASE WHEN p.NATION='099' AND p.BIRTH BETWEEN '1965-01-01' and '1995-12-31' and p.typearea not in (1,3) THEN '1' ELSE '0' END) AS 'intarget_outarea',
sum(CASE WHEN p.NATION='099' AND p.BIRTH not BETWEEN '1965-01-01' and '1995-12-31' and p.typearea not in (1,3) THEN '1' ELSE '0' END) AS 'outtarget_outarea',
sum(CASE WHEN p.NATION!='099' AND p.BIRTH BETWEEN '1965-01-01' and '1995-12-31' and p.typearea in (1,3) THEN '1' ELSE '0' END) AS 'intarget_foreign_inarea',
sum(CASE WHEN p.NATION!='099' AND p.BIRTH not BETWEEN '1965-01-01' and '1995-12-31' and p.typearea in (1,3) THEN '1' ELSE '0' END) AS 'outtarget_foreign_inarea',
sum(CASE WHEN p.NATION!='099' AND p.BIRTH BETWEEN '1965-01-01' and '1995-12-31' and p.typearea not in (1,3) THEN '1' ELSE '0' END) AS 'intarget_foreign_outarea',
sum(CASE WHEN p.NATION!='099' AND p.BIRTH not BETWEEN '1965-01-01' and '1995-12-31' and p.typearea not in (1,3) THEN '1' ELSE '0' END) AS 'outtarget_foreign_outarea'
FROM
person p
LEFT JOIN chospital_amp c ON p.HOSPCODE = c.hoscode
INNER JOIN epi ON p.HOSPCODE=epi.HOSPCODE and p.pid=epi.PID
where epi.DATE_SERV between '2014-10-01' and '2015-09-30' and epi.VACCINETYPE='901'
AND p.DISCHARGE = '9' 
group by p.HOSPCODE;";



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
                    
        ]);
    }// จบ report 2
    
    

}
