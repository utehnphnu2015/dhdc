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
    
    
    

}
