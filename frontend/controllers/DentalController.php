<?php

namespace frontend\controllers;

use Yii;

class DentalController extends \yii\web\Controller {

    public $enableCsrfValidation = false;

    public function actionIndex() {
        return $this->render('index');
    }

    public function actionReport1() { //anc ตรวจสุขภาพช่องปาก
        $date1 = "2014-10-01";
        $date2 = date('Y-m-d');
        if (Yii::$app->request->isPost) {
            $date1 = $_POST['date1'];
            $date2 = $_POST['date2'];
        }

        $sql = "select h.hoscode,
h.hosname,
(select count(distinct p.CID) as num
from
anc as a,
person as p 
where a.PID = p.PID 
and p.HOSPCODE = a.HOSPCODE
and p.NATION='099' and p.DISCHARGE='9' and a.GA between 4 and 45 and p.TYPEAREA in ('1','3') 
and a.DATE_SERV between '$date1' and '$date2'  
and p.HOSPCODE=h.hoscode) as target,
(select
count(distinct p.CID)
from
procedure_opd as pd ,
anc as a ,
person as p ,
dental as d
where 
a.PID = p.PID 
and p.HOSPCODE = a.HOSPCODE 
and pd.PROCEDCODE='2330011'
and d.PID=a.PID
and d.HOSPCODE=a.HOSPCODE 
and d.SEQ = pd.SEQ  
and d.PID=pd.PID 
and d.HOSPCODE = pd.HOSPCODE 
and a.DATE_SERV between '$date1' and '$date2' 
and p.NATION='099' and p.DISCHARGE='9' and a.GA between 4 and 45 and p.TYPEAREA in ('1','3')  
and p.HOSPCODE=h.hoscode) as output
from
chospital_amp AS h
order by h.hoscode";

//sql

        try {
            $rawData = \Yii::$app->db->createCommand($sql)->queryAll();
        } catch (\yii\db\Exception $e) {
            throw new \yii\web\ConflictHttpException('sql error');
        }
        $dataProvider = new \yii\data\ArrayDataProvider([
            //'key' => 'hoscode',//
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

    public function actionReport2() { //เด็ก 0-2ปี  ตรวจสุขภาพช่องปาก
        $date1 = "2014-10-01";
        $date2 = date('Y-m-d');
        if (Yii::$app->request->isPost) {
            $date1 = $_POST['date1'];
            $date2 = $_POST['date2'];
        }

        $sql = "SELECT
h.hoscode,
h.hosname,
(select count(distinct p.CID) as nump
from person as p
where p.DISCHARGE='9'
and p.TYPEAREA in (1,3)
and (TIMESTAMPDIFF(YEAR,p.BIRTH,'$date2') <=3 ) 
and h.hoscode=p.HOSPCODE ) as numA,
(select count(distinct p.CID) as nump
from person as p,
dental as d,
procedure_opd as pd,
diagnosis_opd as dg
where
d.HOSPCODE=p.HOSPCODE
and d.PID=p.PID

and d.HOSPCODE=pd.HOSPCODE
and d.PID=pd.PID
and d.SEQ=pd.SEQ

and dg.HOSPCODE=pd.HOSPCODE
and dg.PID=pd.PID
and dg.SEQ=pd.SEQ

and p.DISCHARGE='9'
and p.TYPEAREA in ('1','3')
and (TIMESTAMPDIFF(YEAR,p.BIRTH,'$date2') <3 ) 
and dg.DIAGCODE='Z012'
and pd.PROCEDCODE='2330011'
and d.DATE_SERV between '$date1' and '$date2'
and h.hoscode=p.HOSPCODE ) as numB
from
chospital_amp as h
order by h.hoscode";



        try {
            $rawData = \Yii::$app->db->createCommand($sql)->queryAll();
        } catch (\yii\db\Exception $e) {
            throw new \yii\web\ConflictHttpException('sql error');
        }
        $dataProvider = new \yii\data\ArrayDataProvider([
            //'key' => 'hoscode',//
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
    
    
  /*      public function actionIndivReport2() { //รายละเอียดเด็ก 0-2ปี  ตรวจสุขภาพช่องปาก
        $date1 = "2014-10-01";
        $date2 = date('Y-m-d');
        $hospcode = '';

        if (Yii::$app->request->isPost) {
            $date1 = $_POST['date1'];
            $date2 = $_POST['date2'];
            $hospcode = $_POST['hospcode'];
        }

        $sql = "select p.HOSPCODE,p.CID,p.PID,p.PRENAME,p.`NAME`,p.LNAME,cc.DATE_SERV from person p
        left join (select p.HOSPCODE,p.CID,p.PID,d.DATE_SERV
        from person as p,
        dental as d,
        procedure_opd as pd,
        diagnosis_opd as dg
        where
        d.HOSPCODE=p.HOSPCODE
        and d.PID=p.PID

        and d.HOSPCODE=pd.HOSPCODE
        and d.PID=pd.PID
        and d.SEQ=pd.SEQ

        and dg.HOSPCODE=pd.HOSPCODE
        and dg.PID=pd.PID
        and dg.SEQ=pd.SEQ

        and p.DISCHARGE='9'
        and p.TYPEAREA in ('1','3')
        and (TIMESTAMPDIFF(YEAR,p.BIRTH,'$date2') <=3 ) 
        and dg.DIAGCODE='Z012'
        and pd.PROCEDCODE='2330011'
        and d.DATE_SERV between '$date1' and '$date2' 
        group by p.CID
        order by p.HOSPCODE) as cc on cc.PID=p.PID and cc.HOSPCODE=p.HOSPCODE
        where (TIMESTAMPDIFF(YEAR,p.BIRTH,'$date2') <=3) limit 100";

if ($hospcode != '') {
    
            $sql = "select p.HOSPCODE,p.CID,p.PID,p.PRENAME,p.`NAME`,p.LNAME,cc.DATE_SERV from person p
left join (select p.HOSPCODE,p.CID,p.PID,d.DATE_SERV
from person as p,
dental as d,
procedure_opd as pd,
diagnosis_opd as dg
where
d.HOSPCODE=p.HOSPCODE
and d.PID=p.PID

and d.HOSPCODE=pd.HOSPCODE
and d.PID=pd.PID
and d.SEQ=pd.SEQ

and dg.HOSPCODE=pd.HOSPCODE
and dg.PID=pd.PID
and dg.SEQ=pd.SEQ

and p.DISCHARGE='9'
and p.TYPEAREA in ('1','3')
and (TIMESTAMPDIFF(YEAR,p.BIRTH,'$date2') <=3 ) 
and dg.DIAGCODE='Z012'
and pd.PROCEDCODE='2330011'
and d.DATE_SERV between '$date1' and '$date2' 
group by p.CID
order by p.HOSPCODE) as cc on cc.PID=p.PID and cc.HOSPCODE=p.HOSPCODE
where (TIMESTAMPDIFF(YEAR,p.BIRTH,'$date2') <=3 and p.HOSPCODE=$hospcode ) ";    
    
}



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
        return $this->render('Indiv_report2', [
                    'dataProvider' => $dataProvider,
                    'sql' => $sql,
                    'date1' => $date1,
                    'date2' => $date2,
                    'hospcode' => $hospcode
        ]);





    }
    
    */
    
        public function actionIndivReport2($hospcode = null, $date1 = '2014-04-01', $date2 = '2015-04-02') {

        $role = isset(Yii::$app->user->identity->role) ? Yii::$app->user->identity->role : 99;
        if ($role == 99) {
            throw new \yii\web\ConflictHttpException('ไม่อนุญาต');
        }


$sql = "select p.HOSPCODE as hospcode,p.CID,p.PID as pid,concat(p.NAME,' ',p.LNAME) as fullname,cc.DATE_SERV as screendate,
    if(cc.DATE_SERV>1,'y','n') as result from person p
left join (select p.HOSPCODE,p.CID,p.PID,d.DATE_SERV
from person as p,
dental as d,
procedure_opd as pd,
diagnosis_opd as dg
where
d.HOSPCODE=p.HOSPCODE
and d.PID=p.PID

and d.HOSPCODE=pd.HOSPCODE
and d.PID=pd.PID
and d.SEQ=pd.SEQ

and dg.HOSPCODE=pd.HOSPCODE
and dg.PID=pd.PID
and dg.SEQ=pd.SEQ

and p.DISCHARGE='9'
and p.TYPEAREA in ('1','3')
and (TIMESTAMPDIFF(YEAR,p.BIRTH,'$date2') <=3 ) 
and dg.DIAGCODE='Z012'
and pd.PROCEDCODE='2330011'
and d.DATE_SERV between '$date1' and '$date2' 
group by p.CID
order by p.HOSPCODE) as cc on cc.PID=p.PID and cc.HOSPCODE=p.HOSPCODE
where (TIMESTAMPDIFF(YEAR,p.BIRTH,'$date2') <=3 and p.HOSPCODE=$hospcode ) "; 
        
        // echo $sql;
        //$rawData = \Yii::$app->db->createCommand($sql)->queryAll();
        //print_r($rawData);
        //return;

        try {
            $rawData = \Yii::$app->db->createCommand($sql)->queryAll();
        } catch (\yii\db\Exception $e) {
            throw new \yii\web\ConflictHttpException('sql error');
        }

        return $this->render('indiv_report2', [
                    'rawData' => $rawData,
                    'sql' => $sql,
        ]);
    }

//Dental report 2 indiv
    
    
    
    
    
        public function actionReport3() { //เด็ก 0-2ปี  ทา Fluoride
        $date1 = "2014-10-01";
        $date2 = date('Y-m-d');
        if (Yii::$app->request->isPost) {
            $date1 = $_POST['date1'];
            $date2 = $_POST['date2'];
        }

        $sql = "SELECT
h.hoscode,
h.hosname,
(select count(distinct p.CID) as nump
from person as p,
dental as d,
procedure_opd as pd,
diagnosis_opd as dg
where
d.HOSPCODE=p.HOSPCODE
and d.PID=p.PID

and d.HOSPCODE=pd.HOSPCODE
and d.PID=pd.PID
and d.SEQ=pd.SEQ

and dg.HOSPCODE=pd.HOSPCODE
and dg.PID=pd.PID
and dg.SEQ=pd.SEQ

and p.DISCHARGE='9'
and p.TYPEAREA in ('1','3')
and (TIMESTAMPDIFF(YEAR,p.BIRTH,'$date2' ) <3 ) 
#and dg.DIAGCODE='Z012'
#and pd.PROCEDCODE='2330011'
and d.NEED_FLUORIDE='1'
and d.DATE_SERV between '$date1' and '$date2' 
and h.hoscode=p.HOSPCODE ) as numA,
(select count(distinct p.CID) as nump
from person as p,
dental as d,
procedure_opd as pd
where
d.HOSPCODE=p.HOSPCODE
and d.PID=p.PID

and d.HOSPCODE=pd.HOSPCODE
and d.PID=pd.PID
and d.SEQ=pd.SEQ


and p.DISCHARGE='9'
and p.TYPEAREA in ('1','3')
and (TIMESTAMPDIFF(YEAR,p.BIRTH,'$date2' ) <3 ) 
and pd.PROCEDCODE in ('2377020','2377021')
and d.NEED_FLUORIDE='1'
and d.DATE_SERV between '$date1' and '$date2' 
and h.hoscode=p.HOSPCODE ) as 'Fluolide'
from
chospital_amp as h
order by h.hoscode";



        try {
            $rawData = \Yii::$app->db->createCommand($sql)->queryAll();
        } catch (\yii\db\Exception $e) {
            throw new \yii\web\ConflictHttpException('sql error');
        }
        $dataProvider = new \yii\data\ArrayDataProvider([
            //'key' => 'hoscode',//
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

}
