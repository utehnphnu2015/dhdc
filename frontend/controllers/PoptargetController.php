<?php

namespace frontend\controllers;

use yii;

class PoptargetController extends \yii\web\Controller {

    public $enableCsrfValidation = false;

    public function actionIndex() {
        return $this->render('index');
    }

    public function actionReport1() {//ผู้มารับบริการผู้ป่วยนอก คน/ครั้ง
        $selyear = date('Y');
        
        if (!empty($_POST['selyear'])) {
            $selyear = $_POST['selyear'];
            
        }
        $sql = "SELECT c.hoscode,c.hosname,count(distinct p.pid) as p_all,
sum(if(p.SEX=1,1,0)) as men,sum(if(p.SEX=2,1,0)) as women,
sum(if(TIMESTAMPDIFF(month,p.BIRTH,concat($selyear,'-07-01'))<12,1,0)) as '<1y',
sum(if(TIMESTAMPDIFF(year,BIRTH,concat($selyear,'-07-01'))>=1 and TIMESTAMPDIFF(year,BIRTH,concat($selyear,'-07-01'))<6,1,0)) as '1-5y',
sum(if(TIMESTAMPDIFF(year,BIRTH,concat($selyear,'-07-01'))>=6 and TIMESTAMPDIFF(year,BIRTH,concat($selyear,'-07-01'))<12,1,0)) as '6-12y',
sum(if(TIMESTAMPDIFF(year,BIRTH,concat($selyear,'-07-01'))>=13 and TIMESTAMPDIFF(year,BIRTH,concat($selyear,'-07-01'))<60,1,0)) as '13-59y',
sum(if(TIMESTAMPDIFF(year,p.BIRTH,concat($selyear,'-07-01'))>=60,1,0)) as '>=60y'
from chospital_amp c
left join person p on p.HOSPCODE=c.hoscode 
where p.TYPEAREA in (1,3) and p.BIRTH<concat($selyear,'-07-01')
group by p.HOSPCODE";

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
        $sql ="";
        return $this->render('report1', [
                    'dataProvider' => $dataProvider,
                    'sql'=>$sql,
                    'selyear' => $selyear
        ]);
    }

    
}



//จบ controller
