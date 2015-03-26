<?php

namespace frontend\controllers;

use yii;

class KnottController extends \yii\web\Controller {

    public $enableCsrfValidation = false;

    public function actionIndex() {
        return $this->render('index');
    }

    public function actionPanthai1() {
        $date1 = "2014-10-01";
        $date2 = date('Y-m-d');
        $hospcode = '';
        if (Yii::$app->request->isPost) {
            $date1 = $_POST['date1'];
            $date2 = $_POST['date2'];
            $hospcode = $_POST['hospcode'];
        }

        $sql = "select i.diseasethai as diag,count(distinct d.pid) as person,count(DISTINCT d.seq) as visit
from diagnosis_opd d,cdisease i
where d.DIAGCODE=i.diagcode and d.DATE_SERV between '$date1' and '$date2' 
and d.DIAGCODE LIKE 'u%' 
group by d.DIAGCODE
order by visit DESC
limit 10";

        if ($hospcode != '') {
            $sql = "select i.diseasethai as diag,count(distinct d.pid) as person,count(DISTINCT d.seq) as visit
from diagnosis_opd d,cdisease i
where d.DIAGCODE=i.diagcode and d.DATE_SERV between '$date1' and '$date2' 
and d.DIAGCODE LIKE 'u%' and d.HOSPCODE=$hospcode
group by d.DIAGCODE
order by visit DESC
limit 10";
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
        return $this->render('panthai1', [
                    'dataProvider' => $dataProvider,
                    'sql' => $sql,
                    'date1' => $date1,
                    'date2' => $date2,
                    'hospcode' => $hospcode
        ]);
    }

    public function actionPanthai2() {
        $date1 = "2014-10-01";
        $date2 = date('Y-m-d');
        $hospcode = '';
        if (Yii::$app->request->isPost) {
            $date1 = $_POST['date1'];
            $date2 = $_POST['date2'];
            $hospcode = $_POST['hospcode'];
        }

        $sql = "select d.PROCEDCODE,i.desc_r as oper,count(distinct d.pid) as person,count(DISTINCT d.seq) as visit
from procedure_opd d,cicd9ttm_planthai i
where d.PROCEDCODE=i.`code` and d.DATE_SERV between '$date1' and '$date2'
group by d.PROCEDCODE
order by visit DESC
limit 10";

        if ($hospcode != '') {
            $sql = "select d.PROCEDCODE,i.desc_r as oper,count(distinct d.pid) as person,count(DISTINCT d.seq) as visit
from procedure_opd d,cicd9ttm_planthai i
where d.PROCEDCODE=i.`code` and d.DATE_SERV between '$date1' and '$date2'
and d.HOSPCODE=$hospcode 
group by d.PROCEDCODE 
order by visit DESC
limit 10";
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
        return $this->render('panthai2', [
                    'dataProvider' => $dataProvider,
                    'sql' => $sql,
                    'date1' => $date1,
                    'date2' => $date2,
                    'hospcode' => $hospcode
        ]);
    }

    public function actionPanthai3() {

        $selyear = date('Y');

        if (!empty($_POST['selyear'])) {
            $selyear = $_POST['selyear'];
        }

        $sql = "select c.hoscode,c.hosname,
max(if(r.month=10,r.price_drug,null)) as m10_price_drug, max(if(r.month=10,r.price_planthai_drug,null)) as m10_panth_drug,
max(if(r.month=11,r.price_drug,null)) as m11_price_drug, max(if(r.month=11,r.price_planthai_drug,null)) as m11_panth_drug,
max(if(r.month=12,r.price_drug,null)) as m12_price_drug, max(if(r.month=12,r.price_planthai_drug,null)) as m12_panth_drug,
max(if(r.month=01,r.price_drug,null)) as m01_price_drug, max(if(r.month=01,r.price_planthai_drug,null)) as m01_panth_drug,
max(if(r.month=02,r.price_drug,null)) as m02_price_drug, max(if(r.month=02,r.price_planthai_drug,null)) as m02_panth_drug,
max(if(r.month=03,r.price_drug,null)) as m03_price_drug, max(if(r.month=03,r.price_planthai_drug,null)) as m03_panth_drug,
max(if(r.month=04,r.price_drug,null)) as m04_price_drug, max(if(r.month=04,r.price_planthai_drug,null)) as m04_panth_drug,
max(if(r.month=05,r.price_drug,null)) as m05_price_drug, max(if(r.month=05,r.price_planthai_drug,null)) as m05_panth_drug,
max(if(r.month=06,r.price_drug,null)) as m06_price_drug, max(if(r.month=06,r.price_planthai_drug,null)) as m06_panth_drug,
max(if(r.month=07,r.price_drug,null)) as m07_price_drug, max(if(r.month=07,r.price_planthai_drug,null)) as m07_panth_drug,
max(if(r.month=08,r.price_drug,null)) as m08_price_drug, max(if(r.month=08,r.price_planthai_drug,null)) as m08_panth_drug,
max(if(r.month=09,r.price_drug,null)) as m09_price_drug, max(if(r.month=09,r.price_planthai_drug,null)) as m09_panth_drug
from chospital_amp c,rpt_panth_drug_value r
where c.hoscode=r.hoscode and r.year_rep=$selyear
group by c.hoscode";




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


        $sql = "SELECT SQL_BIG_RESULT
e.HOSPCODE as hoscode,
$selyear year_rep,
MONTH(e.date_serv) as month,
SUM(IF(LEFT(e.DIDSTD,2) <> '41' OR LEFT(e.DIDSTD,2) <> '42',e.DRUGPRICE*e.AMOUNT,0))  price_drug ,
SUM(IF(d.didstd IS NOT NULL,e.DRUGPRICE*e.AMOUNT,0))  price_planthai_drug
FROM drug_opd e 
LEFT JOIN cdrug_planthai d ON d.didstd=e.DIDSTD 
LEFT JOIN chospital_amp i ON e.HOSPCODE = i.hoscode 
WHERE e.DATE_SERV BETWEEN CONCAT(($selyear-1),'-10-01') AND CONCAT($selyear,'-09-30')   
GROUP BY e.HOSPCODE, LEFT(DATE(e.DATE_SERV),7)";

        return $this->render('panthai3', [
                    'dataProvider' => $dataProvider,
                    'sql' => $sql,
                    'selyear' => $selyear
        ]);
    }

    public function actionPanthai4() {


        $selyear = date('Y');

        if (!empty($_POST['selyear'])) {
            $selyear = $_POST['selyear'];
        }

        $sql = "select
c.hoscode, 
c.hosname,
max(if(r.quarterly=1,r.op_service_pt,null)) as op_visit_pt_q1,
max(if(r.quarterly=1,r.op_service,null)) as op_visit_q1,
max(if(r.quarterly=1,r.tm_service_pt,null)) as tm_visit_pt_q1,
max(if(r.quarterly=1,r.tm_service,null)) as tm_visit_q1,
max(if(r.quarterly=2,r.op_service_pt,null)) as op_visit_pt_q2,
max(if(r.quarterly=2,r.op_service,null)) as op_visit_q2,
max(if(r.quarterly=2,r.tm_service_pt,null)) as tm_visit_pt_q2,
max(if(r.quarterly=2,r.tm_service,null)) as tm_visit_q2,
max(if(r.quarterly=3,r.op_service_pt,null)) as op_visit_pt_q3,
max(if(r.quarterly=3,r.op_service,null)) as op_visit_q3,
max(if(r.quarterly=3,r.tm_service_pt,null)) as tm_visit_pt_q3,
max(if(r.quarterly=3,r.tm_service,null)) as tm_visit_q3,
max(if(r.quarterly=4,r.op_service_pt,null)) as op_visit_pt_q4,
max(if(r.quarterly=4,r.op_service,null)) as op_visit_q4,
max(if(r.quarterly=4,r.tm_service_pt,null)) as tm_visit_pt_q4,
max(if(r.quarterly=4,r.tm_service,null)) as tm_visit_q4
from chospital_amp c,rpt_panth_visit_ratio r
where c.hoscode=r.pcucode and  r.year_rep=$selyear 
group by c.hoscode";



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

        $sql = "SELECT 
$selyear rep_year,
e.code_rep quarterly,
o.hoscode pcucode,
o.hosname,
IFNULL(e.OP_SERVICE_PT,0) op_service_pt,
IFNULL(e.OP_SERVICE,0) op_service,
IFNULL(t.TM_SERVICE_PT,0) tm_service_pt,
IFNULL(t.TM_SERVICE,0) tm_service,
(round((tm_service/op_service)*100,2)) tm_ratio
FROM chospital_amp o 
LEFT JOIN 
(
SELECT SQL_BIG_RESULT 
e.HOSPCODE,
IF(MONTH(e.DATE_SERV) IN (10,11,12),1,
IF(MONTH(e.DATE_SERV) IN (1,2,3),2,
IF(MONTH(e.DATE_SERV) IN (4,5,6),3,4))) code_rep,
COUNT(DISTINCT e.PID) OP_SERVICE_PT, 
COUNT(DISTINCT e.SEQ) OP_SERVICE 
FROM service e 
LEFT JOIN diagnosis_opd d ON d.HOSPCODE = e.HOSPCODE AND d.PID = e.PID AND d.SEQ = e.SEQ AND DATE_FORMAT(d.DATE_SERV,'%Y-%m-%d') BETWEEN CONCAT(($selyear-1),'-10-01') AND CONCAT($selyear,'-09-30') 
WHERE e.DATE_SERV BETWEEN CONCAT(($selyear-1),'-10-01') AND CONCAT($selyear,'-09-30') 
AND LEFT(d.DIAGCODE,1) <> 'Z'
GROUP BY e.HOSPCODE
) e ON e.HOSPCODE = o.hoscode 

LEFT JOIN 
(
SELECT SQL_BIG_RESULT 
e.HOSPCODE,
IF(MONTH(e.DATE_SERV) IN (10,11,12),1,
IF(MONTH(e.DATE_SERV) IN (1,2,3),2,
IF(MONTH(e.DATE_SERV) IN (4,5,6),3,4))) code_rep,
COUNT(DISTINCT e.PID) TM_SERVICE_PT, 
COUNT(DISTINCT e.SEQ) TM_SERVICE 
FROM
(
SELECT e.HOSPCODE, 
e.PID, 
e.SEQ, 
e.DATE_SERV 
FROM diagnosis_opd e 
WHERE e.DATE_SERV BETWEEN CONCAT(($selyear-1),'-10-01') AND CONCAT($selyear,'-09-30') 
AND LEFT(e.DIAGCODE,1) = 'U'

UNION 
SELECT e.HOSPCODE, 
e.PID, 
e.SEQ, 
e.DATE_SERV 
FROM drug_opd e 
WHERE e.DATE_SERV BETWEEN CONCAT(($selyear-1),'-10-01') AND CONCAT($selyear,'-09-30') 
AND LEFT(e.DIDSTD,2) IN ('41','42') 

UNION 
SELECT e.HOSPCODE, 
e.PID, 
e.SEQ, 
e.DATE_SERV 
FROM procedure_opd e 
LEFT JOIN cicd9ttm_planthai p ON e.PROCEDCODE=p.`code` 
WHERE e.DATE_SERV BETWEEN CONCAT(($selyear-1),'-10-01') AND CONCAT($selyear,'-09-30') 
AND p.code IS NOT NULL 

) e
GROUP BY e.HOSPCODE
) t ON t.HOSPCODE = e.HOSPCODE 
WHERE e.HOSPCODE IS NOT NULL";

        return $this->render('panthai4', [
                    'dataProvider' => $dataProvider,
                    'sql' => $sql,
                    'selyear' => $selyear
        ]);
    }

// จบ action panthai4

    public function actionPanthai5() {
        $date1 = "2014-10-01";
        $date2 = date('Y-m-d');
        $hospcode = '';
        if (Yii::$app->request->isPost) {
            $date1 = $_POST['date1'];
            $date2 = $_POST['date2'];
            $hospcode = $_POST['hospcode'];
        }

        $sql = "SELECT 
e.didstd drug_did,
IFNULL(CONCAT(e.drug_name,', ',e.drug_type),e.didstd) drug_name,
IFNULL(e.all_visit,0) all_visit,
IFNULL(e.uc_visit,0) uc_visit
FROM chospital_amp o 
LEFT JOIN 
(
SELECT 
e.HOSPCODE,
e.DIDSTD didstd,
e.drug_name, 
e.drug_type,
@rep_year year_rep, 
COUNT(DISTINCT e.SEQ) as all_visit, 
COUNT(DISTINCT (IF(s.INSTYPE='0100',e.SEQ,NULL))) as uc_visit 
FROM 
(
SELECT
e.HOSPCODE,
e.PID,
e.SEQ,
e.DATE_SERV,
e.DIDSTD,
d.didstd PASS,
d.drug_name,
d.drug_type 
FROM 
drug_opd e 
LEFT JOIN cdrug_planthai d ON d.didstd=e.DIDSTD 
WHERE 
DATE(e.DATE_SERV) BETWEEN '$date1' AND '$date2' 
AND LEFT(e.DIDSTD,2) IN ('41','42') 
) e
LEFT JOIN service s ON e.HOSPCODE = s.HOSPCODE AND e.PID = s.PID AND e.SEQ = s.SEQ 
GROUP BY  e.DIDSTD ) e ON e.HOSPCODE = o.hoscode 
WHERE  e.didstd IS NOT NULL 
order by all_visit desc";

        if ($hospcode != '') {
            $sql = "SELECT 
o.hoscode pcucode,
e.didstd drug_did,
IFNULL(CONCAT(e.drug_name,', ',e.drug_type),e.didstd) drug_name,
IFNULL(e.all_visit,0) all_visit,
IFNULL(e.uc_visit,0) uc_visit
FROM chospital_amp o 
LEFT JOIN 
(
SELECT  
e.HOSPCODE, 
e.DIDSTD didstd,
e.drug_name, 
e.drug_type,
@rep_year year_rep, 
COUNT(DISTINCT e.SEQ) as all_visit, 
COUNT(DISTINCT (IF(s.INSTYPE='0100',e.SEQ,NULL))) as uc_visit 
FROM 
(
SELECT
e.HOSPCODE,
e.PID,
e.SEQ,
e.DATE_SERV,
e.DIDSTD,
d.didstd PASS,
d.drug_name,
d.drug_type 
FROM 
drug_opd e 
LEFT JOIN cdrug_planthai d ON d.didstd=e.DIDSTD 
WHERE 
DATE(e.DATE_SERV) BETWEEN '$date1' AND '$date2' 
AND LEFT(e.DIDSTD,2) IN ('41','42') 
) e
LEFT JOIN service s ON e.HOSPCODE = s.HOSPCODE AND e.PID = s.PID AND e.SEQ = s.SEQ 
GROUP BY e.HOSPCODE, e.DIDSTD ) e ON e.HOSPCODE = o.hoscode 
WHERE  e.didstd IS NOT NULL and o.hoscode=$hospcode 
order by o.hoscode,all_visit desc";
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
        return $this->render('panthai5', [
                    'dataProvider' => $dataProvider,
                    'sql' => $sql,
                    'date1' => $date1,
                    'date2' => $date2,
                    'hospcode' => $hospcode
        ]);
    }

// จบ action 5
    
        public function actionPanthai6() {

        $selyear = date('Y');

        if (!empty($_POST['selyear'])) {
            $selyear = $_POST['selyear'];
        }

        $sql = "SELECT 
o.hoscode hospcode,o.hosname,
IF(e.INSTYPE='0100','สิทธิ UC','สิทธิอื่นๆ') instype,
year_rep,
e.pt_all,e.service_all,
e.pt_m10,e.service_m10,e.pt_m11,e.service_m11,e.pt_m12,e.service_m12,e.pt_m01,e.service_m01,
e.pt_m02,e.service_m02,e.pt_m03,e.service_m03,e.pt_m04,e.service_m04,e.pt_m05,e.service_m05,
e.pt_m06,e.service_m06,e.pt_m07,e.service_m07,e.pt_m08,e.service_m08,e.pt_m09,e.service_m09
FROM chospital_amp o
LEFT JOIN 
(
SELECT 
e.HOSPCODE, 
s.INSTYPE,
s.SERVPLACE,
$selyear year_rep,
COUNT(DISTINCT e.PID) pt_all,
COUNT(DISTINCT e.SEQ) service_all,
COUNT(DISTINCT IF(MONTH(e.DATE_SERV) IN (10),e.PID,NULL)) pt_m10,
COUNT(DISTINCT IF(MONTH(e.DATE_SERV) IN (10),e.SEQ,NULL)) service_m10,
COUNT(DISTINCT IF(MONTH(e.DATE_SERV) IN (11),e.PID,NULL)) pt_m11,
COUNT(DISTINCT IF(MONTH(e.DATE_SERV) IN (11),e.SEQ,NULL)) service_m11,
COUNT(DISTINCT IF(MONTH(e.DATE_SERV) IN (12),e.PID,NULL)) pt_m12,
COUNT(DISTINCT IF(MONTH(e.DATE_SERV) IN (12),e.SEQ,NULL)) service_m12,
COUNT(DISTINCT IF(MONTH(e.DATE_SERV) IN (01),e.PID,NULL)) pt_m01,
COUNT(DISTINCT IF(MONTH(e.DATE_SERV) IN (01),e.SEQ,NULL)) service_m01,
COUNT(DISTINCT IF(MONTH(e.DATE_SERV) IN (02),e.PID,NULL)) pt_m02,
COUNT(DISTINCT IF(MONTH(e.DATE_SERV) IN (02),e.SEQ,NULL)) service_m02,
COUNT(DISTINCT IF(MONTH(e.DATE_SERV) IN (03),e.PID,NULL)) pt_m03,
COUNT(DISTINCT IF(MONTH(e.DATE_SERV) IN (03),e.SEQ,NULL)) service_m03,
COUNT(DISTINCT IF(MONTH(e.DATE_SERV) IN (04),e.PID,NULL)) pt_m04,
COUNT(DISTINCT IF(MONTH(e.DATE_SERV) IN (04),e.SEQ,NULL)) service_m04,
COUNT(DISTINCT IF(MONTH(e.DATE_SERV) IN (05),e.PID,NULL)) pt_m05,
COUNT(DISTINCT IF(MONTH(e.DATE_SERV) IN (05),e.SEQ,NULL)) service_m05,
COUNT(DISTINCT IF(MONTH(e.DATE_SERV) IN (06),e.PID,NULL)) pt_m06,
COUNT(DISTINCT IF(MONTH(e.DATE_SERV) IN (06),e.SEQ,NULL)) service_m06,
COUNT(DISTINCT IF(MONTH(e.DATE_SERV) IN (07),e.PID,NULL)) pt_m07,
COUNT(DISTINCT IF(MONTH(e.DATE_SERV) IN (07),e.SEQ,NULL)) service_m07,
COUNT(DISTINCT IF(MONTH(e.DATE_SERV) IN (08),e.PID,NULL)) pt_m08,
COUNT(DISTINCT IF(MONTH(e.DATE_SERV) IN (08),e.SEQ,NULL)) service_m08,
COUNT(DISTINCT IF(MONTH(e.DATE_SERV) IN (09),e.PID,NULL)) pt_m09,
COUNT(DISTINCT IF(MONTH(e.DATE_SERV) IN (09),e.SEQ,NULL)) service_m09
FROM 
(
SELECT 
e.HOSPCODE, 
e.PID, 
e.SEQ, 
e.DATE_SERV, 
e.PROCEDCODE, 
icd.tmtype 
FROM 
procedure_opd e 
LEFT JOIN cicd9ttm_planthai icd ON icd.`code` = e.PROCEDCODE 
WHERE icd.tmtype in (1,2,3) and DATE(e.DATE_SERV) BETWEEN CONCAT(($selyear-1),'-10-01') AND CONCAT($selyear,'-09-30') 
AND icd.`code`IS NOT NULL 
) e 
LEFT JOIN service s ON s.HOSPCODE = e.HOSPCODE AND s.PID = e.PID AND s.SEQ = e.SEQ 
GROUP BY e.HOSPCODE,  IF(s.INSTYPE='0100','UC','OTHER') 
) e ON e.HOSPCODE = o.hoscode  ";




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


        $sql = "SELECT 
o.hoscode hospcode,o.hosname,
IF(e.INSTYPE='0100','สิทธิ UC','สิทธิอื่นๆ') instype,
year_rep,
e.pt_all,e.service_all,
e.pt_m10,e.service_m10,e.pt_m11,e.service_m11,e.pt_m12,e.service_m12,e.pt_m01,e.service_m01,
e.pt_m02,e.service_m02,e.pt_m03,e.service_m03,e.pt_m04,e.service_m04,e.pt_m05,e.service_m05,
e.pt_m06,e.service_m06,e.pt_m07,e.service_m07,e.pt_m08,e.service_m08,e.pt_m09,e.service_m09
FROM chospital_amp o
LEFT JOIN 
(
SELECT 
e.HOSPCODE, 
s.INSTYPE,
s.SERVPLACE,
$selyear year_rep,
COUNT(DISTINCT e.PID) pt_all,
COUNT(DISTINCT e.SEQ) service_all,
COUNT(DISTINCT IF(MONTH(e.DATE_SERV) IN (10),e.PID,NULL)) pt_m10,
COUNT(DISTINCT IF(MONTH(e.DATE_SERV) IN (10),e.SEQ,NULL)) service_m10,
COUNT(DISTINCT IF(MONTH(e.DATE_SERV) IN (11),e.PID,NULL)) pt_m11,
COUNT(DISTINCT IF(MONTH(e.DATE_SERV) IN (11),e.SEQ,NULL)) service_m11,
COUNT(DISTINCT IF(MONTH(e.DATE_SERV) IN (12),e.PID,NULL)) pt_m12,
COUNT(DISTINCT IF(MONTH(e.DATE_SERV) IN (12),e.SEQ,NULL)) service_m12,
COUNT(DISTINCT IF(MONTH(e.DATE_SERV) IN (01),e.PID,NULL)) pt_m01,
COUNT(DISTINCT IF(MONTH(e.DATE_SERV) IN (01),e.SEQ,NULL)) service_m01,
COUNT(DISTINCT IF(MONTH(e.DATE_SERV) IN (02),e.PID,NULL)) pt_m02,
COUNT(DISTINCT IF(MONTH(e.DATE_SERV) IN (02),e.SEQ,NULL)) service_m02,
COUNT(DISTINCT IF(MONTH(e.DATE_SERV) IN (03),e.PID,NULL)) pt_m03,
COUNT(DISTINCT IF(MONTH(e.DATE_SERV) IN (03),e.SEQ,NULL)) service_m03,
COUNT(DISTINCT IF(MONTH(e.DATE_SERV) IN (04),e.PID,NULL)) pt_m04,
COUNT(DISTINCT IF(MONTH(e.DATE_SERV) IN (04),e.SEQ,NULL)) service_m04,
COUNT(DISTINCT IF(MONTH(e.DATE_SERV) IN (05),e.PID,NULL)) pt_m05,
COUNT(DISTINCT IF(MONTH(e.DATE_SERV) IN (05),e.SEQ,NULL)) service_m05,
COUNT(DISTINCT IF(MONTH(e.DATE_SERV) IN (06),e.PID,NULL)) pt_m06,
COUNT(DISTINCT IF(MONTH(e.DATE_SERV) IN (06),e.SEQ,NULL)) service_m06,
COUNT(DISTINCT IF(MONTH(e.DATE_SERV) IN (07),e.PID,NULL)) pt_m07,
COUNT(DISTINCT IF(MONTH(e.DATE_SERV) IN (07),e.SEQ,NULL)) service_m07,
COUNT(DISTINCT IF(MONTH(e.DATE_SERV) IN (08),e.PID,NULL)) pt_m08,
COUNT(DISTINCT IF(MONTH(e.DATE_SERV) IN (08),e.SEQ,NULL)) service_m08,
COUNT(DISTINCT IF(MONTH(e.DATE_SERV) IN (09),e.PID,NULL)) pt_m09,
COUNT(DISTINCT IF(MONTH(e.DATE_SERV) IN (09),e.SEQ,NULL)) service_m09
FROM 
(
SELECT 
e.HOSPCODE, 
e.PID, 
e.SEQ, 
e.DATE_SERV, 
e.PROCEDCODE, 
icd.tmtype 
FROM 
procedure_opd e 
LEFT JOIN cicd9ttm_planthai icd ON icd.`code` = e.PROCEDCODE 
WHERE icd.tmtype in (1,2,3) and DATE(e.DATE_SERV) BETWEEN CONCAT(($selyear-1),'-10-01') AND CONCAT($selyear,'-09-30') 
AND icd.`code`IS NOT NULL 
) e 
LEFT JOIN service s ON s.HOSPCODE = e.HOSPCODE AND s.PID = e.PID AND s.SEQ = e.SEQ 
GROUP BY e.HOSPCODE,  IF(s.INSTYPE='0100','UC','OTHER') 
) e ON e.HOSPCODE = o.hoscode ";

        return $this->render('panthai6', [
                    'dataProvider' => $dataProvider,
                    'sql' => $sql,
                    'selyear' => $selyear
        ]);
    } //จบ action 6

}



//จบ controller
