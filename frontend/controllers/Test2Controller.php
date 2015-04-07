<?php

namespace frontend\controllers;
use Yii;

class Test2Controller extends \yii\web\Controller {

     public $enableCsrfValidation = false;
    public function actionIndex() {
        return $this->render('index');
    }

    public function actionReportTest2() {

        $sql = "select * from person limit 10";


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
                    'sql' => $sql
        ]);
    }

    public function actionTest3() {
        echo iconv('tis-620','UTF-8',file_get_contents("./txt/test.txt"));
    }
    
    public function actionLoad(){
        $data=[];
        if(Yii::$app->request->isPost){
            $data = Yii::$app->request->post();
        }
        
        return $this->render('load',[
            'data'=>$data
        ]);
    }

}
