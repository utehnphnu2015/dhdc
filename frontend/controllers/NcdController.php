<?php

namespace frontend\controllers;

use yii;

class NcdController extends \yii\web\Controller {

    public $enableCsrfValidation = false;

    public function actionIndex() {
        return $this->render('index');
    }

    public function actionReport1() {//
        $model = \backend\models\Sysconfigmain::find()->one();
        $bdg = $model->note2;

        $date1 = "2014-10-01";
        $date2 = date('Y-m-d');
        if (Yii::$app->request->isPost) {
            $date1 = $_POST['date1'];
            $date2 = $_POST['date2'];
        }

        $sql = "select  h.hoscode as hospcode ,h.hosname as hospname,

(SELECT  hos_chronic from 
          (select person.hospcode,count(distinct(person.pid)) as hos_chronic from chronic  
           inner join person on chronic.hospcode = person.hospcode and chronic.pid = person.pid
           where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099' and  (chronic.chronic between 'I10' and 'I159')  
           and (TIMESTAMPDIFF(YEAR,person.birth,'$bdg') >= 35)  group by person.hospcode) as c
where c.hospcode  = h.hoscode
) as target,IFNULL(l1,0)as l1,IFNULL(l2,0)as l2,IFNULL(l3,0)as l3,IFNULL(l4,0)as l4,IFNULL(l5,0)as l5

from chospital_amp h
LEFT JOIN
(select n.hospcode,sum(if(n.chart = '<10%',1,0)) as l1 ,sum(if(n.chart = '10-<20%',1,0)) as l2 ,
                   sum(if(n.chart = '20-<30%',1,0)) as l3 ,sum(if(n.chart = '30-<40%',1,0)) as l4 ,sum(if(n.chart = '>=40%',1,0)) as l5
                   from sys_ncd_cholesteral_colorchart n
                   where n.date_serv BETWEEN '$date1'  and  '$date2'
                   and  (n.chronic between 'I10' and 'I159') 
                   GROUP BY n.hospcode
) as result  on result.hospcode = h.hoscode
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

    public function actionReport2() {//
        $model = \backend\models\Sysconfigmain::find()->one();
        $bdg = $model->note2;

        $date1 = "2014-10-01";
        $date2 = date('Y-m-d');
        if (Yii::$app->request->isPost) {
            $date1 = $_POST['date1'];
            $date2 = $_POST['date2'];
        }

        $sql = "select  h.hoscode as hospcode ,h.hosname as hospname,

(SELECT  hos_chronic from 
          (select person.hospcode,count(distinct(person.pid)) as hos_chronic from chronic  
           inner join person on chronic.hospcode = person.hospcode and chronic.pid = person.pid         
           where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099' and  (chronic.chronic between 'I10' and 'I159')  
           and (TIMESTAMPDIFF(YEAR,person.birth,'$bdg') >= 35  )  group by person.hospcode) as c
where c.hospcode  = h.hoscode
) as target,IFNULL(l1,0)as l1,IFNULL(l2,0)as l2,IFNULL(l3,0)as l3,IFNULL(l4,0)as l4,IFNULL(l5,0)as l5


from chospital_amp h
LEFT JOIN
(select n.hospcode,sum(if(n.chart = '<10%',1,0)) as l1 ,sum(if(n.chart = '10-<20%',1,0)) as l2 ,
                   sum(if(n.chart = '20-<30%',1,0)) as l3 ,sum(if(n.chart = '30-<40%',1,0)) as l4 ,sum(if(n.chart = '>=40%',1,0)) as l5
                   from sys_ncd_nocholesteral_colorchart n
                   where n.date_serv BETWEEN '$date1'  and  '$date2'
                   and  (n.chronic between 'I10' and 'I159') 
                   GROUP BY n.hospcode
) as result  on result.hospcode = h.hoscode
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

    public function actionReport3() {//
        $model = \backend\models\Sysconfigmain::find()->one();
        $bdg = $model->note2;

        $date1 = "2014-10-01";
        $date2 = date('Y-m-d');
        if (Yii::$app->request->isPost) {
            $date1 = $_POST['date1'];
            $date2 = $_POST['date2'];
        }

        $sql = "select h.hoscode as hospcode ,h.hosname as hospname,

(SELECT  hos_chronic from 
          (select person.hospcode,count(distinct(person.pid)) as hos_chronic from chronic  
           inner join person on chronic.hospcode = person.hospcode and chronic.pid = person.pid
           where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099' and  (chronic.chronic between 'E10' and 'E149')  
           and (TIMESTAMPDIFF(YEAR,person.birth,'$bdg') >= 35  )  group by person.hospcode) as c
where c.hospcode  = h.hoscode
) as target,IFNULL(l1,0)as l1,IFNULL(l2,0)as l2,IFNULL(l3,0)as l3,IFNULL(l4,0)as l4,IFNULL(l5,0)as l5


from chospital_amp h
LEFT JOIN
(select n.hospcode,sum(if(n.chart = '<10%',1,0)) as l1 ,sum(if(n.chart = '10-<20%',1,0)) as l2 ,
                   sum(if(n.chart = '20-<30%',1,0)) as l3 ,sum(if(n.chart = '30-<40%',1,0)) as l4 ,sum(if(n.chart = '>=40%',1,0)) as l5
                   from sys_ncd_cholesteral_colorchart n
                   where n.date_serv BETWEEN '$date1'  and  '$date2'
                   and  (n.chronic between 'E10' and 'E149') 
                   GROUP BY n.hospcode
) as result  on result.hospcode = h.hoscode
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

    public function actionReport4() {//
        $model = \backend\models\Sysconfigmain::find()->one();
        $bdg = $model->note2;


        $date1 = "2014-10-01";
        $date2 = date('Y-m-d');
        if (Yii::$app->request->isPost) {
            $date1 = $_POST['date1'];
            $date2 = $_POST['date2'];
        }

        $sql = "select  h.hoscode as hospcode ,h.hosname as hospname,

(SELECT  hos_chronic from 
          (select person.hospcode,count(distinct(person.pid)) as hos_chronic from chronic  
           inner join person on chronic.hospcode = person.hospcode and chronic.pid = person.pid
           where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099' and  (chronic.chronic between 'E10' and 'E149')  
           and (TIMESTAMPDIFF(YEAR,person.birth,'$bdg') >= 35  )  group by person.hospcode) as c
where c.hospcode  = h.hoscode
) as target,IFNULL(l1,0)as l1,IFNULL(l2,0)as l2,IFNULL(l3,0)as l3,IFNULL(l4,0)as l4,IFNULL(l5,0)as l5


from chospital_amp h
LEFT JOIN
(select n.hospcode,sum(if(n.chart = '<10%',1,0)) as l1 ,sum(if(n.chart = '10-<20%',1,0)) as l2 ,
                   sum(if(n.chart = '20-<30%',1,0)) as l3 ,sum(if(n.chart = '30-<40%',1,0)) as l4 ,sum(if(n.chart = '>=40%',1,0)) as l5
                   from sys_ncd_nocholesteral_colorchart n
                   where n.date_serv BETWEEN '$date1'  and  '$date2'
                   and  (n.chronic between 'E10' and 'E149') 
                   GROUP BY n.hospcode
) as result  on result.hospcode = h.hoscode
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
    
    public function  actionReport5(){
        $model=  \backend\models\Sysconfigmain::find()->one();
        $bdg=$model->note2;
        $date1 = "2014-10-01";
        $date2 = date('Y-m-d');
        if (Yii::$app->request->isPost) {
            $date1 = $_POST['date1'];
            $date2 = $_POST['date2'];
        }
        
        $sql="select h.hoscode as hospcode ,h.hosname as hospname,

(SELECT  hos_chronic from 
          (select person.hospcode,count(distinct(person.pid)) as hos_chronic from chronic  
           inner join person on chronic.hospcode = person.hospcode and chronic.pid = person.pid
           where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099' and  (chronic.chronic between 'E10' and 'E149')  
           and (TIMESTAMPDIFF(YEAR,person.birth,'$bdg') >= 35 )  group by person.hospcode) as c
where c.hospcode  = h.hoscode
) as target,
(SELECT hos_doit from
          (select person.hospcode,count(distinct(person.pid)) as hos_doit from chronic  
           inner join person on chronic.hospcode = person.hospcode and chronic.pid = person.pid            
           inner join labfu on person.hospcode = labfu.hospcode and person.pid = labfu.pid 
           where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099' and  (chronic.chronic between 'E10' and 'E149') 
           and labfu.labtest = '05' and (labfu.date_serv BETWEEN '$date1' and '$date2' ) 
           and (TIMESTAMPDIFF(YEAR,person.birth,labfu.date_serv) >= 35 )  group by person.hospcode) as r
where r.hospcode = h.hoscode
) as result ,
(SELECT hos_doit from
          (select person.hospcode,count(distinct(person.pid)) as hos_doit from chronic  
           inner join person on chronic.hospcode = person.hospcode and chronic.pid = person.pid 
           inner join labfu on person.hospcode = labfu.hospcode and person.pid = labfu.pid 
           where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099' and  (chronic.chronic between 'E10' and 'E149') 
           and labfu.labtest = '05' and labfu.LABRESULT < 7 and (labfu.date_serv BETWEEN '$date1' and '$date2' ) 
           and (TIMESTAMPDIFF(YEAR,person.birth,labfu.date_serv) >= 35 )  group by person.hospcode) as r
where r.hospcode = h.hoscode
) as control

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

        return $this->render('report5', [

                    'dataProvider' => $dataProvider,
                    'sql' => $sql,
                    'date1' => $date1,
                    'date2' => $date2
        ]);
    }
    
    public function actionReport6(){
        $model=  \backend\models\Sysconfigmain::find()->one();
        $bdg=$model->note2;
        $date1 = "2014-10-01";
        $date2 = date('Y-m-d');
        if (Yii::$app->request->isPost) {
            $date1 = $_POST['date1'];
            $date2 = $_POST['date2'];
        }
        
        $sql="select  h.hoscode as hospcode ,h.hosname as hospname,
(SELECT  hos_chronic from 
          (select person.hospcode,count(distinct(person.pid)) as hos_chronic from chronic  
           inner join person on chronic.hospcode = person.hospcode and chronic.pid = person.pid          
           where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099' and  (chronic.chronic between 'I10' and 'I159')  
           and (TIMESTAMPDIFF(YEAR,person.birth,'$bdg') >= 35 )  group by person.hospcode) as c
where c.hospcode  = h.hoscode
) as target,
(SELECT hos_doit from
          (select person.hospcode,count(distinct(person.pid)) as hos_doit from chronic  
           inner join person on chronic.hospcode = person.hospcode and chronic.pid = person.pid 
           inner join chronicfu on person.hospcode = chronicfu.hospcode and person.pid = chronicfu.pid 
           where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099' and  (chronic.chronic between 'I10' and 'I159')  
           and (chronicfu.sbp <140 and chronicfu.dbp < 90) and (chronicfu.date_serv BETWEEN '$date1' and '$date2' ) 
           and (TIMESTAMPDIFF(YEAR,person.birth,chronicfu.date_serv) >= 35 )  group by person.hospcode) as r
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

        return $this->render('report6', [

                    'dataProvider' => $dataProvider,
                    'sql' => $sql,
                    'date1' => $date1,
                    'date2' => $date2
        ]);
        
    }
    
    
     public function actionReport7() {//hdc_ncd_ht_ตรวจไต.sql
        $model = \backend\models\Sysconfigmain::find()->one();
        $bdg = $model->note2;
        $date1 = "2014-10-01";
        $date2 = date('Y-m-d');
        if (Yii::$app->request->isPost) {
            $date1 = $_POST['date1'];
            $date2 = $_POST['date2'];
        }

        $sql = "select  h.hoscode as hospcode ,concat(provcode,distcode,subdistcode,mu) as areacode,h.hosname as hospname, 
ifnull(ncd_target.hos_target,0) as target,ifnull(ncd_do.hos_doit,0) as result,(ifnull(ncd_do.hos_doit,0)/ifnull(ncd_target.hos_target,0))*100 AS persent1
from  chospital_amp h
LEFT JOIN
          (SELECT person.hospcode,count(distinct(person.pid)) as hos_target from chronic  
           INNER JOIN person on chronic.hospcode = person.hospcode and chronic.pid = person.pid 
           where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099' and  chronic.chronic BETWEEN 'I10' and 'I15' 
           and (TIMESTAMPDIFF(YEAR,person.birth,'$bdg') >=35  ) GROUP BY person.hospcode) AS ncd_target 
on  h.hoscode = ncd_target.hospcode
LEFT JOIN
          (SELECT person.hospcode,count(distinct(person.pid)) as hos_doit from diagnosis_opd  
            INNER JOIN person on diagnosis_opd.hospcode = person.hospcode and diagnosis_opd.pid = person.pid 
            INNER JOIN chronic on person.hospcode = chronic.hospcode  and person.pid = chronic.pid
           where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099' and  chronic.chronic BETWEEN 'I10' and 'I15' 
           and chronic.chronic BETWEEN 'I10' and 'I15'
           and diagnosis_opd.diagcode in ('I120','I129')
           and date_serv BETWEEN '$date1' and '$date2' and (TIMESTAMPDIFF(YEAR,person.birth,date_serv) >=35  ) GROUP BY person.hospcode) as ncd_do 
on  h.hoscode = ncd_do.hospcode
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
        for ($i = 0; $i < count($rawData); $i++) {
            $hospname[] = $rawData[$i]['hospname'];
            $persent1[] = 1*($rawData[$i]['persent1']);
        }


        return $this->render('report7', [

                    'dataProvider' => $dataProvider,
                    'sql' => $sql,
                    'date1' => $date1,
                    'date2' => $date2,
                    'hospname' => $hospname,
                    'persent1' => $persent1
        ]);
    }
    
     public function actionReport8() {//hdc_ncd_ht_เบาหวาน.sql
        $model = \backend\models\Sysconfigmain::find()->one();
        $bdg = $model->note2;
        $date1 = "2014-10-01";
        $date2 = date('Y-m-d');
        if (Yii::$app->request->isPost) {
            $date1 = $_POST['date1'];
            $date2 = $_POST['date2'];
        }

        $sql = "select h.hoscode as hospcode ,concat(provcode,distcode,subdistcode,mu) as areacode,h.hosname as hospname,

(SELECT  hos_chronic from 
          (select person.hospcode,count(distinct(person.pid)) as hos_chronic from chronic  
           inner join person on chronic.hospcode = person.hospcode and chronic.pid = person.pid
           where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099' and  (chronic.chronic between 'I10' and 'I15')  
           and (TIMESTAMPDIFF(YEAR,person.birth,'$bdg') >=35  )  group by person.hospcode) as c
where c.hospcode  = h.hoscode
) as target,
(SELECT hos_doit from
          (select person.hospcode,count(distinct(person.pid)) as hos_doit from chronic  
           inner join person on chronic.hospcode = person.hospcode and chronic.pid = person.pid 
           inner join diagnosis_opd on person.hospcode = diagnosis_opd.hospcode and person.pid = diagnosis_opd.pid 
           where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099'  and  (chronic.chronic between 'I10' and 'I15') 
           and diagnosis_opd.diagcode in ('E10', 'E11')  and (diagnosis_opd.date_serv BETWEEN '$date1' and '$date2' ) 
           and (TIMESTAMPDIFF(YEAR,person.birth,diagnosis_opd.date_serv) >= 35 )  group by person.hospcode) as r
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
        for ($i = 0; $i < count($rawData); $i++) {
            $hospname[] = $rawData[$i]['hospname'];
            if($rawData[$i]['result']==NULL OR $rawData[$i]['target']==NULL ){
               $persent1[]=0;
            }else{
                $persent1[] =  ($rawData[$i]['result']/$rawData[$i]['target'])*100;
            }
           // $persent1[] = sum($rawData) ;
        }


        return $this->render('report8', [

                    'dataProvider' => $dataProvider,
                    'sql' => $sql,
                    'date1' => $date1,
                    'date2' => $date2,
                    'hospname' => $hospname,
                    'persent1' => $persent1
        ]);
    }
    
    public function actionReport9() {//hdc_ncd_ht_เบาหวาน.sql
        $model = \backend\models\Sysconfigmain::find()->one();
        $bdg = $model->note2;
        $date1 = "2014-10-01";
        $date2 = date('Y-m-d');
        if (Yii::$app->request->isPost) {
            $date1 = $_POST['date1'];
            $date2 = $_POST['date2'];
        }

        $sql = "select  h.distcode as amphur,h.hoscode as hospcode ,concat(provcode,distcode,subdistcode,mu) as areacode,h.hosname as hospname,
(SELECT  hos_chronic from 
          (select person.hospcode,count(distinct(person.pid)) as hos_chronic from chronic  inner join person on chronic.hospcode = person.hospcode and chronic.pid = person.pid 
           where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099' and  (chronic.chronic between 'I10' and 'I15')  
           and (TIMESTAMPDIFF(YEAR,person.birth,'$bdg') >= 35 )  group by person.hospcode) as c
where c.hospcode  = h.hoscode
) as target,
(SELECT hos_doit from
          (select person.hospcode,count(distinct(person.pid)) as hos_doit from diagnosis_opd  inner join person on diagnosis_opd.hospcode = person.hospcode and diagnosis_opd.pid = person.pid 
           where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099' #and date_serv between '$date1' and '$date2' 
           and (diagnosis_opd.diagcode BETWEEN 'I10' and 'I15')  and (TIMESTAMPDIFF(YEAR,person.birth,date_serv) >= 35 )  group by person.hospcode) as r
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
        for ($i = 0; $i < count($rawData); $i++) {
            $hospname[] = $rawData[$i]['hospname'];
            if($rawData[$i]['result']==NULL OR $rawData[$i]['target']==NULL ){
               $persent1[]=0;
            }else{
                $persent1[] =  ($rawData[$i]['result']/$rawData[$i]['target'])*100;
            }
           // $persent1[] = sum($rawData) ;
        }


        return $this->render('report9', [

                    'dataProvider' => $dataProvider,
                    'sql' => $sql,
                    'date1' => $date1,
                    'date2' => $date2,
                    'hospname' => $hospname,
                    'persent1' => $persent1
        ]);
    }
    
    public function actionReport10() {//hdc_ncd_ht_ควบคุมความดันได้ดี.sql
        $model = \backend\models\Sysconfigmain::find()->one();
        $bdg = $model->note2;
        $date1 = "2014-10-01";
        $date2 = date('Y-m-d');
        if (Yii::$app->request->isPost) {
            $date1 = $_POST['date1'];
            $date2 = $_POST['date2'];
        }

        $sql = "select  h.hoscode as hospcode ,concat(provcode,distcode,subdistcode,mu) as areacode,h.hosname as hospname,
(SELECT  hos_chronic from 
          (select person.hospcode,count(distinct(person.pid)) as hos_chronic from chronic  
           inner join person on chronic.hospcode = person.hospcode and chronic.pid = person.pid 
           where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099' and  (chronic.chronic between 'I10' and 'I15')  
           and (TIMESTAMPDIFF(YEAR,person.birth,'$bdg') >= 35 )  group by person.hospcode) as c
where c.hospcode  = h.hoscode
) as target,
(SELECT hos_doit from
          (select person.hospcode,count(distinct(person.pid)) as hos_doit from chronic  
           inner join person on chronic.hospcode = person.hospcode and chronic.pid = person.pid 
           inner join chronicfu on person.hospcode = chronicfu.hospcode and person.pid = chronicfu.pid 
           where person.discharge = '9' and person.typearea in ('1', '3') and person.nation ='099'  and  (chronic.chronic between 'I10' and 'I15')
           and (chronicfu.sbp <140 and chronicfu.dbp < 90) and (chronicfu.date_serv BETWEEN '$date1' and '$date2' ) 
           and (TIMESTAMPDIFF(YEAR,person.birth,chronicfu.date_serv) >= 35 )  group by person.hospcode) as r
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
        for ($i = 0; $i < count($rawData); $i++) {
            $hospname[] = $rawData[$i]['hospname'];
            if($rawData[$i]['result']==NULL OR $rawData[$i]['target']==NULL ){
               $persent1[]=0;
            }else{
                $persent1[] =  ($rawData[$i]['result']/$rawData[$i]['target'])*100;
            }
           // $persent1[] = sum($rawData) ;
        }


        return $this->render('report10', [

                    'dataProvider' => $dataProvider,
                    'sql' => $sql,
                    'date1' => $date1,
                    'date2' => $date2,
                    'hospname' => $hospname,
                    'persent1' => $persent1
        ]);
    }

}
