<?php

namespace frontend\controllers;

use Yii;

class KukksController extends \yii\web\Controller {

    public $enableCsrfValidation = false;
    
      

    public function actionIndex() {//หน้ารวม//
        return $this->render('index');
    }

    public function actionReport1() {//ร้อยละผู้ป่วยโรคเรื้อรังได้รับการเยี่ยมบ้าน//
        $date1 = "2014-10-01";
        $date2 = date('Y-m-d');
        if (Yii::$app->request->isPost) {
            $date1 = $_POST['date1'];
            $date2 = $_POST['date2'];
        }

        $sql = "select h.hoscode,h.hosname,
(select count(distinct p.CID) as num from 
chronic as c,
person as p
where 
p.PID=c.PID 
and p.HOSPCODE=c.HOSPCODE
and p.DISCHARGE='9'
and c.TYPEDISCH='03'
and p.TYPEAREA in (1,3)
and p.HOSPCODE=h.hoscode) as chronic,

(select count(distinct p.CID) as num from 
chronic as c,
person as p,
community_service as com
where 
p.PID=c.PID 
and p.HOSPCODE=c.HOSPCODE
and com.PID=p.PID
and com.HOSPCODE=p.HOSPCODE
and p.DISCHARGE='9'
and c.TYPEDISCH='03'
and p.TYPEAREA in (1,3)
and com.DATE_SERV between '$date1' and '$date2'
and com.COMSERVICE like '1A%' 
and p.HOSPCODE=h.hoscode) as visit

from chospital_amp h 
ORDER BY h.hoscode";



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
    
        public function actionReport2() {//สัดส่วน
        

        $sql = "select care_team.hoscode,care_team.hosname,care_team.pop,care_team.doctor,
concat('1 : ',round((care_team.pop/care_team.doctor),0)) as raio from
(select h.hoscode,h.hosname,
(select count(distinct CID) 
from person p 
where p.DISCHARGE='9' 
and p.TYPEAREA in ('1','3')
and p.HOSPCODE=h.hoscode
) as pop,
(select count(distinct CID) as doc
from provider pv
where (pv.CID is not null or pv.CID != '') and pv.PROVIDERTYPE in ('03','04','05','06') 
and (pv.OUTDATE is null or pv.OUTDATE ='') and pv.HOSPCODE=h.hoscode) as doctor
from chospital_amp h  where h.hostype='03' 
) as care_team";



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
    }
    
    
            public function actionReport3() {//อสม
        

        $sql = "select  h.hoscode,h.hosname,t.`จำนวนหลังคาเรือน`  ,t.`จำนวน อสม.`,t.`จำนวน อสม.ต่อหลังคาเรือน` from chospital_amp h 
LEFT JOIN 
(
select h.hoscode,h.hosname,home2.num_house as 'จำนวนหลังคาเรือน'  ,
home2.num_osm as 'จำนวน อสม.' ,
concat('1 : ',round((home2.num_house/home2.num_osm),0)) as 'จำนวน อสม.ต่อหลังคาเรือน'
from chospital_amp h
join (select home.HOSPCODE,
count(distinct home.HID) as num_house,
count(distinct home.VHVID) as num_osm
from
home
group by home.HOSPCODE) as home2 on home2.HOSPCODE=h.hoscode 
) t on t.hoscode = h.hoscode";



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
                    
        ]);
    }
    

    
    
    
    
    public function actionReport4() {//ร้อยละผู้สูงอายุได้รับการเยี่ยมบ้าน
        $date1 = "2014-10-01";
        $date2 = date('Y-m-d');
        if (Yii::$app->request->isPost) {
            $date1 = $_POST['date1'];
            $date2 = $_POST['date2'];
            //$selyear = $_POST['selyear']; //  ตัวนี้เกินมาครับ/อุเทน         
        }

/*$sql = "select temp.hoscode,temp.hosname,temp.target,temp.hv,round((temp.hv*100/temp.target),2) as percent from (select h.hoscode,h.hosname,
(SELECT
count(distinct p.CID)
FROM
person as p
where  p.NATION='099' and p.DISCHARGE='9' and p.TYPEAREA in ('1','3') and p.HOSPCODE=h.hoscode and (TIMESTAMPDIFF(YEAR,p.birth,'2014-09-30')>= 60)) as target,
(select count(distinct hhv.CID) as num from 
(SELECT
comserv.HOSPCODE,
comserv.PID,
comserv.SEQ,
comserv.DATE_SERV,
comserv.COMSERVICE,
p.CID
FROM
community_service as comserv
,person as p
where p.PID=comserv.PID and p.HOSPCODE=comserv.HOSPCODE
and comserv.DATE_SERV between '$date1' and '$date2' 
and upper(comserv.COMSERVICE) like '1A4%' and (TIMESTAMPDIFF(YEAR,p.birth,'2014-09-30')>= 60)
group by p.CID) as hhv where hhv.HOSPCODE=h.hoscode) as hv
from chospital_amp h order by h.hoscode  ) as temp";
*/
        $sql="select h.hoscode,h.hosname,
(select count(distinct p.CID) as num from 
person as p
where 
p.DISCHARGE='9'
and p.TYPEAREA in (1,3)
and (TIMESTAMPDIFF(YEAR,p.birth,'2014-09-30')>= 60)
and p.HOSPCODE=h.hoscode) as target,
(select count(distinct p.CID) as num 
from person as p,
community_service as com
where 
com.PID=p.PID
and com.HOSPCODE=p.HOSPCODE
and p.DISCHARGE='9'
and p.TYPEAREA in (1,3)
and com.DATE_SERV between '$date1' and '$date2'
and (TIMESTAMPDIFF(YEAR,p.birth,'$date2')>= 60)
and upper(com.COMSERVICE) like '1A4%'
and p.HOSPCODE=h.hoscode) as visit
from chospital_amp h ";


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
    
    
    
        public function actionReport5() {//ร้อยละหญิงตั้งครรภ์ได้รับการเยี่ยมบ้าน
        $date1 = "2014-10-01";
        $date2 = date('Y-m-d');
        if (Yii::$app->request->isPost) {
            $date1 = $_POST['date1'];
            $date2 = $_POST['date2'];
        }

        $sql = "select temp.hoscode,temp.hosname,temp.target,temp.hv,round((temp.hv*100/temp.target),2) as 'percent' from (select h.hoscode,h.hosname,
(SELECT
count(distinct p.CID)
FROM
anc as a,
person as p
where p.PID=a.PID and p.HOSPCODE=a.HOSPCODE
and a.DATE_SERV between '$date1' and '$date2'
and p.NATION='099' and p.DISCHARGE='9' and p.TYPEAREA in ('1','3') and p.HOSPCODE=h.hoscode) as 'target',
(select count(distinct hhv.CID) as num from 
(SELECT
comserv.HOSPCODE,
comserv.PID,
comserv.SEQ,
comserv.DATE_SERV,
comserv.COMSERVICE,
p.CID
FROM
community_service as comserv
,person as p
where p.PID=comserv.PID and p.HOSPCODE=comserv.HOSPCODE
and comserv.DATE_SERV between '$date1' and '$date2'
and upper(comserv.COMSERVICE) like '1A20%'
group by p.CID) as hhv where hhv.HOSPCODE=h.hoscode) as 'hv'
from chospital_amp h order by h.hoscode) as temp";



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
    

}
