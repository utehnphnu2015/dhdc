<?php

namespace frontend\controllers;

use Yii;

///
class TestController extends \yii\web\Controller {

    public function actionTest1() {
        $sql = Yii::getAlias('@databases/sys_month.sql');
        echo file_get_contents($sql);
    }

    public function actionRpt1() {

        return $this->render('rpt1');
    }

    public function actionChart1() {
        return $this->render('chart1');
    }
     public function actionChart2() {
        return $this->render('chart2');
    }
    
    public function actionChart3(){
        return $this->render('chart3');
    }

    public function actionMap1() {

        return $this->render('map1');
    }

    public function actionMap2() {
        return $this->render('map2');
    }

    public function actionDb2() {
        $rawdata = \Yii::$app->db2->createCommand("select * from test2")->execute();
        print_r($rawdata);
    }

}
