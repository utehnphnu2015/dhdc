<?php

namespace backend\controllers;

class AdjustController extends \yii\web\Controller
{
    protected function exec_sql($sql) {
        $affect_row = \Yii::$app->db->createCommand($sql)->execute();
        return $affect_row;
    }

    protected function query_all($sql) {
        $rawData = \Yii::$app->db->createCommand($sql)->queryAll();
        return $rawData;
    }
    public function actionIndex()
    {
       $sql = "SHOW TABLES LIKE 'tmp_%'";
       $rawData = $this->query_all($sql);
      
       
       $data = array_column($rawData, 'Tables_in_dhdc (tmp_%)' );
       
       foreach ($data as $value) {
           
           $sql = "ALTER TABLE $value
                ADD COLUMN NOTE1 VARCHAR(255),
		ADD COLUMN NOTE2 VARCHAR(255),
		ADD COLUMN NOTE3 VARCHAR(255),
		ADD COLUMN NOTE4 VARCHAR(255)";
           
           $sql = "truncate $value";
           $this->exec_sql($sql);
           
           echo $value; echo "<br>";
           
           
       }
       
    
        
    }
    
    

}
