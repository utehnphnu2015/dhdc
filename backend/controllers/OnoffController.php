<?php
namespace backend\controllers;


class OnoffController extends \yii\web\Controller {
    
    public function actionOn(){
        
        $model = \frontend\models\SysOnoffUpload::findOne(1);
        $model->status='on';
        $model->update();
        return $this->redirect(['site/index']);
        
    }
    
     public function actionOff(){
        
        $model = \frontend\models\SysOnoffUpload::findOne(1);
        $model->status='off';
        $model->update();
        return $this->redirect(['site/index']);
        
    }
    
    public function actionOnsql(){
        
        $model = \frontend\models\SysOnoffSql::findOne(1);
        $model->status='on';
        $model->update();
        return $this->redirect(['site/index']);
        
    }
    
     public function actionOffsql(){
        
        $model = \frontend\models\SysOnoffSql::findOne(1);
        $model->status='off';
        $model->update();
        return $this->redirect(['site/index']);
        
    }
    
}
