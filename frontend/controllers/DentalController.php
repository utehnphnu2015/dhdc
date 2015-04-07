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
//update 04-04-2558

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

    public function actionIndivReport2($hospcode = null, $date1 = '2014-04-01', $date2 = '2015-04-02') {

        $role = isset(Yii::$app->user->identity->role) ? Yii::$app->user->identity->role : 99;
        if ($role == 99) {
            throw new \yii\web\ConflictHttpException('คุณไม่ได้รับอนุญาตให้ใช้งานหน้านี้');
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

//ANC ที่ตรวจพบมีปัญหาสุขภาพช่องปาก
    public function actionReport4() { //anc ตรวจสุขภาพช่องปาก
        $date1 = "2014-10-01";
        $date2 = date('Y-m-d');
        if (Yii::$app->request->isPost) {
            $date1 = $_POST['date1'];
            $date2 = $_POST['date2'];
        }

        $sql = "select h.hoscode,h.hosname,
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
and p.HOSPCODE=h.hoscode) as target,
(select
count(distinct p.PID) as num
FROM
dental as d,
anc as a,  
person as p ,
procedure_opd as pd  
where
d.PID = a.PID 
and d.SEQ = a.SEQ 
and d.HOSPCODE = a.HOSPCODE
and a.HOSPCODE = p.HOSPCODE 
and p.PID = a.PID
and d.SEQ = pd.SEQ  
and d.PID=pd.PID 
and pd.PROCEDCODE='2330011'
and d.DATE_SERV between '$date1' and '$date2'
and p.NATION='099' and p.DISCHARGE='9' and a.GA between 4 and 45 and p.TYPEAREA in ('1','3')
and (d.NEED_PFILLING > 0 or d.NEED_PEXTRACT > 0 or d.GUM>0)
and p.HOSPCODE=h.hoscode) as result
from
chospital_amp as h
order by h.hoscode";
//update 05-04-2558

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

        return $this->render('report4', [

                    'dataProvider' => $dataProvider,
                    'sql' => $sql,
                    'date1' => $date1,
                    'date2' => $date2
        ]);
    }
    
    
//ANC ที่ตรวจพบมีปัญหาสุขภาพช่องปากได้รับบริการ
    public function actionReport5() { //anc ตรวจสุขภาพช่องปาก
        $date1 = "2014-10-01";
        $date2 = date('Y-m-d');
        if (Yii::$app->request->isPost) {
            $date1 = $_POST['date1'];
            $date2 = $_POST['date2'];
        }

        $sql = "select h.hoscode,h.hosname,
(select count(distinct p.CID) as num
from
anc as a,
person as p 
where a.PID = p.PID 
and p.HOSPCODE = a.HOSPCODE
and p.NATION='099' and p.DISCHARGE='9' and a.GA between 4 and 45 and p.TYPEAREA in ('1','3') 
and a.DATE_SERV between '$date1' and '$date2'  
and p.HOSPCODE=h.hoscode) as target,

(select count(distinct p.CID) as num
from 
(select a.PID,a.HOSPCODE,
DATE_ADD( (DATE_ADD(a.DATE_SERV,INTERVAL -(a.GA*7) DAY)), INTERVAL 10 MONTH) as EDC 
from anc as a where  a.GA between 4 and 45 
group by a.PID,a.HOSPCODE) as new_anc,
person as p,
procedure_opd as pd
where p.PID=new_anc.PID 
and p.HOSPCODE=new_anc.HOSPCODE
and p.PID=pd.PID
and p.HOSPCODE=pd.HOSPCODE
and pd.PROCEDCODE in ('2372700','2382770')
and p.NATION='099' and p.DISCHARGE='9' 
and pd.DATE_SERV < new_anc.EDC
and pd.DATE_SERV between '$date1' and '$date2'
and p.HOSPCODE=h.hoscode ) as EXTRACT,

(select count(distinct p.CID) as num
from 
(select a.PID,a.HOSPCODE,
DATE_ADD( (DATE_ADD(a.DATE_SERV,INTERVAL -(a.GA*7) DAY)), INTERVAL 10 MONTH) as EDC 
from anc as a where  a.GA between 4 and 45 
group by a.PID,a.HOSPCODE) as new_anc,
person as p,
procedure_opd as pd
where p.PID=new_anc.PID 
and p.HOSPCODE=new_anc.HOSPCODE
and p.PID=pd.PID
and p.HOSPCODE=pd.HOSPCODE
and pd.PROCEDCODE in ('23771A1','23771A2','23771A3','23771A4','2387179','23871A1',
'23871A2','23871A3','23871A4','23871B1','23871B2','23871B3','23871B4','23771A1',
'23771A2','23771A3','23771A4','23871A1','23871A2','23871A3','23871A4','23771B1',
'23771B2','23771B3','23771B4','23771C1','23771C2','23771C3','23871B1','23871B2',
'23871B3','23871B4','23871C1','23871C2','23871C3','23871C4','23871U1','2387179',
'2387179','2387225')
and p.NATION='099' and p.DISCHARGE='9' 
and pd.DATE_SERV < new_anc.EDC
and pd.DATE_SERV between '$date1' and '$date2'
and p.HOSPCODE=h.hoscode ) as FILLING,

(select count(distinct p.CID) as num
from 
(select a.PID,a.HOSPCODE,
DATE_ADD( (DATE_ADD(a.DATE_SERV,INTERVAL -(a.GA*7) DAY)), INTERVAL 10 MONTH) as EDC 
from anc as a where  a.GA between 4 and 45 
group by a.PID,a.HOSPCODE) as new_anc,
person as p,
procedure_opd as pd
where p.PID=new_anc.PID 
and p.HOSPCODE=new_anc.HOSPCODE
and p.PID=pd.PID
and p.HOSPCODE=pd.HOSPCODE
and pd.PROCEDCODE in ('2287310','2277310','2277320','2287320')
and p.NATION='099' and p.DISCHARGE='9' 
and pd.DATE_SERV < new_anc.EDC
and pd.DATE_SERV between '$date1' and '$date2'
and p.HOSPCODE=h.hoscode ) as SCALING,

(select count(distinct p.CID) as num
from 
(select a.PID,a.HOSPCODE,
DATE_ADD( (DATE_ADD(a.DATE_SERV,INTERVAL -(a.GA*7) DAY)), INTERVAL 10 MONTH) as EDC 
from anc as a where  a.GA between 4 and 45 
group by a.PID,a.HOSPCODE) as new_anc,
person as p,
procedure_opd as pd
where p.PID=new_anc.PID 
and p.HOSPCODE=new_anc.HOSPCODE
and p.PID=pd.PID
and p.HOSPCODE=pd.HOSPCODE
and pd.PROCEDCODE in ('2377040','2387040')
and p.NATION='099' and p.DISCHARGE='9' 
and pd.DATE_SERV < new_anc.EDC
and pd.DATE_SERV between '$date1' and '$date2' 
and p.HOSPCODE=h.hoscode ) as PRR,

(select count(distinct p.CID) as num
from 
(select a.PID,a.HOSPCODE,
DATE_ADD( (DATE_ADD(a.DATE_SERV,INTERVAL -(a.GA*7) DAY)), INTERVAL 10 MONTH) as EDC 
from anc as a where  a.GA between 4 and 45 
group by a.PID,a.HOSPCODE) as new_anc,
person as p,
procedure_opd as pd
where p.PID=new_anc.PID 
and p.HOSPCODE=new_anc.HOSPCODE
and p.PID=pd.PID
and p.HOSPCODE=pd.HOSPCODE
and pd.PROCEDCODE ='2338610'
and p.NATION='099' and p.DISCHARGE='9' 
and pd.DATE_SERV < new_anc.EDC
and pd.DATE_SERV between '$date1' and '$date2'
and p.HOSPCODE=h.hoscode ) as brush
FROM
chospital_amp as h
order by h.hoscode";
//update 05-04-2558

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

        return $this->render('report5', [

                    'dataProvider' => $dataProvider,
                    'sql' => $sql,
                    'date1' => $date1,
                    'date2' => $date2
        ]);
    }    

    
    public function actionReport6() { //เด็ก 9-12เดือน  ตรวจ
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
and p.NATION='099'
and (TIMESTAMPDIFF(MONTH,p.BIRTH,'$date2') <13 ) 
and h.hoscode=p.HOSPCODE ) as target,
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
and p.NATION='099'
and (TIMESTAMPDIFF(MONTH,p.BIRTH,'$date2') <13 ) 
and dg.DIAGCODE='Z012'
and pd.PROCEDCODE='2330011'
and d.DATE_SERV between '$date1' and '$date2'
and h.hoscode=p.HOSPCODE ) as result
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

        return $this->render('report6', [

                    'dataProvider' => $dataProvider,
                    'sql' => $sql,
                    'date1' => $date1,
                    'date2' => $date2
        ]);
    }
 
    
    
    
        public function actionReport7() { //18เดือนตรวจ
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
and p.NATION='099'
and (TIMESTAMPDIFF(MONTH,p.BIRTH,'$date2')>=18 and TIMESTAMPDIFF(MONTH,p.BIRTH,'$date2')<19 ) 
and h.hoscode=p.HOSPCODE ) as target,
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
and p.NATION='099'
and (TIMESTAMPDIFF(MONTH,p.BIRTH,'$date2')>=18 and TIMESTAMPDIFF(MONTH,p.BIRTH,'$date2')<19 ) 
and dg.DIAGCODE='Z012'
and pd.PROCEDCODE='2330011'
and d.DATE_SERV between '$date1' and '$date2'
and h.hoscode=p.HOSPCODE ) as result
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

        return $this->render('report7', [

                    'dataProvider' => $dataProvider,
                    'sql' => $sql,
                    'date1' => $date1,
                    'date2' => $date2
        ]);
    }

        public function actionReport8() { //18เดือน สอนแปรง
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
and p.NATION='099'
and (TIMESTAMPDIFF(MONTH,p.BIRTH,'$date2')>=18 and TIMESTAMPDIFF(MONTH,p.BIRTH,'$date2')<19 ) 
and h.hoscode=p.HOSPCODE ) as target,
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
and p.NATION='099'
and (TIMESTAMPDIFF(MONTH,p.BIRTH,'$date2')>=18 and TIMESTAMPDIFF(MONTH,p.BIRTH,'$date2')<19 ) 
and pd.PROCEDCODE='2338611'
and d.DATE_SERV between '$date1' and '$date2'
and h.hoscode=p.HOSPCODE ) as result
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

        return $this->render('report8', [

                    'dataProvider' => $dataProvider,
                    'sql' => $sql,
                    'date1' => $date1,
                    'date2' => $date2
        ]);
    }    

    
        public function actionReport9() { //0-2ปีตรวจ
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
and p.NATION='099'
and (TIMESTAMPDIFF(YEAR,p.BIRTH,'$date2')<=2) 
and h.hoscode=p.HOSPCODE ) as target,
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
and p.NATION='099'
and (TIMESTAMPDIFF(YEAR,p.BIRTH,'$date2')<=2) 
and dg.DIAGCODE='Z012'
and pd.PROCEDCODE='2330011'
and d.DATE_SERV between '$date1' and '$date2'
and h.hoscode=p.HOSPCODE ) as result
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

        return $this->render('report9', [

                    'dataProvider' => $dataProvider,
                    'sql' => $sql,
                    'date1' => $date1,
                    'date2' => $date2
        ]);
    }    
    
    
    
        public function actionReport10() { //0-2ปี รับบริการ
        $date1 = "2014-10-01";
        $date2 = date('Y-m-d');
        if (Yii::$app->request->isPost) {
            $date1 = $_POST['date1'];
            $date2 = $_POST['date2'];
        }

        $sql = "select
h.hoscode,
h.hosname,
(select count(distinct p.CID) as nump
from person as p
where p.DISCHARGE='9'
and p.TYPEAREA in (1,3)
and p.NATION='099'
and (TIMESTAMPDIFF(YEAR,p.BIRTH,'$date2')<=2) 
and h.hoscode=p.HOSPCODE ) as target,

(select count(distinct p.CID) as num
from 
person as p,
procedure_opd as pd
where 
(TIMESTAMPDIFF(YEAR,p.BIRTH,pd.DATE_SERV)<=2) 
and p.PID=pd.PID
and p.HOSPCODE=pd.HOSPCODE
and pd.PROCEDCODE in ('2377040','2387040')
and p.NATION='099' and p.DISCHARGE='9' 
and pd.DATE_SERV between '$date1' and '$date2'
and p.HOSPCODE=h.hoscode ) as PRR,

(select count(distinct p.CID) as num
from 
person as p,
procedure_opd as pd
where
(TIMESTAMPDIFF(YEAR,p.BIRTH,pd.DATE_SERV)<=2) 
and p.PID=pd.PID
and p.HOSPCODE=pd.HOSPCODE
and pd.PROCEDCODE in ('2377020','2377021')
and p.NATION='099' and p.DISCHARGE='9' 
and pd.DATE_SERV between '$date1' and '$date2' 
and p.HOSPCODE=h.hoscode ) as FLIORIDE,

(select count(distinct p.CID) as num
from 
person as p,
procedure_opd as pd
where
(TIMESTAMPDIFF(YEAR,p.BIRTH,pd.DATE_SERV)<=2)  
and p.PID=pd.PID
and p.HOSPCODE=pd.HOSPCODE
and pd.PROCEDCODE in ('2377030','2387030')
and p.NATION='099' and p.DISCHARGE='9' 
and pd.DATE_SERV between '$date1' and '$date2' 
and p.HOSPCODE=h.hoscode ) as SEALANT,

(select count(distinct p.CID) as num
from 
person as p,
procedure_opd as pd
where
(TIMESTAMPDIFF(YEAR,p.BIRTH,pd.DATE_SERV)<=2) 
and p.PID=pd.PID
and p.HOSPCODE=pd.HOSPCODE
and pd.PROCEDCODE in ('2377010')
and p.NATION='099' and p.DISCHARGE='9' 
and pd.DATE_SERV between '$date1' and '$date2' 
and p.HOSPCODE=h.hoscode ) as Prophylaxis
FROM
chospital_amp AS h
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

        return $this->render('report10', [

                    'dataProvider' => $dataProvider,
                    'sql' => $sql,
                    'date1' => $date1,
                    'date2' => $date2
        ]);
    }    
        
        public function actionReport11() { //0-2ปีตรวจ
        $date1 = "2014-10-01";
        $date2 = date('Y-m-d');
        if (Yii::$app->request->isPost) {
            $date1 = $_POST['date1'];
            $date2 = $_POST['date2'];
        }

        $sql = "select
h.hoscode,
h.hosname,
(select count(distinct p.CID) as nump
from person as p
where p.DISCHARGE='9'
and p.TYPEAREA in (1,3)
and p.NATION='099'
and (TIMESTAMPDIFF(YEAR,p.BIRTH,'$date2')<=2) 
and h.hoscode=p.HOSPCODE ) as target,
(select count(distinct p.CID) as num
from 
person as p,
procedure_opd as pd
where 
(TIMESTAMPDIFF(YEAR,p.BIRTH,pd.DATE_SERV)<=2) 
and p.PID=pd.PID
and p.HOSPCODE=pd.HOSPCODE
and pd.PROCEDCODE ='2338610'
and p.NATION='099' and p.DISCHARGE='9' 
and pd.DATE_SERV between '$date1' and '$date2' 
and p.HOSPCODE=h.hoscode ) as result
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

        return $this->render('report11', [

                    'dataProvider' => $dataProvider,
                    'sql' => $sql,
                    'date1' => $date1,
                    'date2' => $date2
        ]);
    }
    
    
    
    
        public function actionReport12() { //3-5ปีตรวจ
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
and p.NATION='099'
and (TIMESTAMPDIFF(YEAR,p.BIRTH,'$date2')>=3 and TIMESTAMPDIFF(YEAR,p.BIRTH,'$date2')<6) 
and h.hoscode=p.HOSPCODE ) as target,
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
and p.NATION='099'
and (TIMESTAMPDIFF(YEAR,p.BIRTH,'$date2')>=3 and TIMESTAMPDIFF(YEAR,p.BIRTH,'$date2')<6) 
and dg.DIAGCODE='Z012'
and pd.PROCEDCODE='2330011'
and d.DATE_SERV between '$date1' and '$date2'
and h.hoscode=p.HOSPCODE ) as result
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

        return $this->render('report12', [

                    'dataProvider' => $dataProvider,
                    'sql' => $sql,
                    'date1' => $date1,
                    'date2' => $date2
        ]);
    }        

    
    
        public function actionReport13() { //3-5ปี รับบริการ
        $date1 = "2014-10-01";
        $date2 = date('Y-m-d');
        if (Yii::$app->request->isPost) {
            $date1 = $_POST['date1'];
            $date2 = $_POST['date2'];
        }

        $sql = "select
h.hoscode,
h.hosname,
(select count(distinct p.CID) as nump
from person as p
where p.DISCHARGE='9'
and p.TYPEAREA in (1,3)
and p.NATION='099'
and (TIMESTAMPDIFF(YEAR,p.BIRTH,'$date2')>=3 and TIMESTAMPDIFF(YEAR,p.BIRTH,'$date2')<6) 
and h.hoscode=p.HOSPCODE ) as target,


(select count(distinct p.CID) as num
from 
person as p,
procedure_opd as pd
where
(TIMESTAMPDIFF(YEAR,p.BIRTH,pd.DATE_SERV)>=3 and TIMESTAMPDIFF(YEAR,p.BIRTH,pd.DATE_SERV)<6)  
and p.PID=pd.PID
and p.HOSPCODE=pd.HOSPCODE
and pd.PROCEDCODE in ('2372700','2382770')
and p.NATION='099' and p.DISCHARGE='9' 
and pd.DATE_SERV between '$date1' and '$date2'  
and p.HOSPCODE=h.hoscode ) as EXTRACT,

(select count(distinct p.CID) as num
from 
person as p,
procedure_opd as pd
where
(TIMESTAMPDIFF(YEAR,p.BIRTH,pd.DATE_SERV)>=3 and TIMESTAMPDIFF(YEAR,p.BIRTH,pd.DATE_SERV)<6)  
and p.PID=pd.PID
and p.HOSPCODE=pd.HOSPCODE
and pd.PROCEDCODE in ('23771A1','23771A2','23771A3','23771A4','2387179','23871A1',
'23871A2','23871A3','23871A4','23871B1','23871B2','23871B3','23871B4','23771A1',
'23771A2','23771A3','23771A4','23871A1','23871A2','23871A3','23871A4','23771B1',
'23771B2','23771B3','23771B4','23771C1','23771C2','23771C3','23871B1','23871B2',
'23871B3','23871B4','23871C1','23871C2','23871C3','23871C4','23871U1','2387179',
'2387179','2387225')
and p.NATION='099' and p.DISCHARGE='9' 
and pd.DATE_SERV between '$date1' and '$date2'  
and p.HOSPCODE=h.hoscode ) as FILLING,

(select count(distinct p.CID) as num
from 
person as p,
procedure_opd as pd
where
(TIMESTAMPDIFF(YEAR,p.BIRTH,pd.DATE_SERV)>=3 and TIMESTAMPDIFF(YEAR,p.BIRTH,pd.DATE_SERV)<6)  
and p.PID=pd.PID
and p.HOSPCODE=pd.HOSPCODE
and pd.PROCEDCODE in ('2387030')
and p.NATION='099' and p.DISCHARGE='9' 
and pd.DATE_SERV between '$date1' and '$date2'  
and p.HOSPCODE=h.hoscode ) as SEALANT,

(select count(distinct p.CID) as num
from 
person as p,
procedure_opd as pd
where
(TIMESTAMPDIFF(YEAR,p.BIRTH,pd.DATE_SERV)>=3 and TIMESTAMPDIFF(YEAR,p.BIRTH,pd.DATE_SERV)<6)  
and p.PID=pd.PID
and p.HOSPCODE=pd.HOSPCODE
and pd.PROCEDCODE in ('2377010')
and p.NATION='099' and p.DISCHARGE='9' 
and pd.DATE_SERV between '$date1' and '$date2'  
and p.HOSPCODE=h.hoscode ) as Prophylaxis,

(select count(distinct p.CID) as num
from 
person as p,
procedure_opd as pd
where 
(TIMESTAMPDIFF(YEAR,p.BIRTH,pd.DATE_SERV)>=3 and TIMESTAMPDIFF(YEAR,p.BIRTH,pd.DATE_SERV)<6)  
and p.PID=pd.PID
and p.HOSPCODE=pd.HOSPCODE
and pd.PROCEDCODE in ('2377040','2387040')
and p.NATION='099' and p.DISCHARGE='9' 
and pd.DATE_SERV between '$date1' and '$date2' 
and p.HOSPCODE=h.hoscode ) as PRR,

(select count(distinct p.CID) as num
from 
person as p,
procedure_opd as pd
where
(TIMESTAMPDIFF(YEAR,p.BIRTH,pd.DATE_SERV)>=3 and TIMESTAMPDIFF(YEAR,p.BIRTH,pd.DATE_SERV)<6)
and p.PID=pd.PID
and p.HOSPCODE=pd.HOSPCODE
and pd.PROCEDCODE in ('2377020','2377021')
and p.NATION='099' and p.DISCHARGE='9' 
and pd.DATE_SERV between '$date1' and '$date2' 
and p.HOSPCODE=h.hoscode ) as FLIORIDE
FROM
chospital_amp AS h
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

        return $this->render('report13', [

                    'dataProvider' => $dataProvider,
                    'sql' => $sql,
                    'date1' => $date1,
                    'date2' => $date2
        ]);
    }        
    
}
