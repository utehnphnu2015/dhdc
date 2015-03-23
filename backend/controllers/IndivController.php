<?php

namespace backend\controllers;
use backend\models\ChospitalAmp;

class IndivController extends \yii\web\Controller
{
    public function actionIndex()
    {
        return $this->render('index');
    }
    public function actionExec($selyear=2015){
        
        $model = ChospitalAmp::find()->all(); 
      
        foreach ($model as $value) {
                $hospcode = $value->hoscode;
                $sql = "call cal_indiv_screen_report2($selyear,'$hospcode')";
                \Yii::$app->db->createCommand($sql)->execute();
        }
       
       
        
    }

}
