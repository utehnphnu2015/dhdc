<?php

namespace backend\controllers;

use yii;

class TestController extends \yii\web\Controller {

    public function actionIndex() {
        return $this->render('index');
    }

    protected function exec_sql($sql) {

        $connection = \Yii::$app->db;

        $command = $connection->createCommand($sql);
        
        $command->execute(); //added
      
    }

    protected function SplitSQL($file, $delimiter = ';') {
        set_time_limit(0);

        if (is_file($file) === true) {
            $file = fopen($file, 'r');

            if (is_resource($file) === true) {
                $query = array();

                while (feof($file) === false) {
                    $query[] = fgets($file);

                    if (preg_match('~' . preg_quote($delimiter, '~') . '\s*$~iS', end($query)) === 1) {
                        $query = trim(implode('', $query));

                        if ($this->exec_sql($query) === false) {
                            echo '<h3>ERROR: ' . $query . '</h3>' . "<br>";
                        } else {
                            echo '<h3>SUCCESS: ' . $query . '</h3>' . "<br>";
                        }

                        while (ob_get_level() > 0) {
                            ob_end_flush();
                        }

                        flush();
                    }

                    if (is_string($query) === true) {
                        $query = array();
                    }
                }

                return fclose($file);
            }
        }

        return false;
    }

    function actionUpdb() {
        $path = yii::getAlias('@databases');
        $file = "$path/dhdc_update_20150304_1.sql";
        //$this->SplitSQL($file);
        $sql = file_get_contents($file);
        //echo $sql;
        $this->exec_sql($sql);
    }
    function actionTest2(){
        
        $data = array('1'=>1,'2'=>2);
        //$data=['2'=>1];
        print_r($data);
        
    }

}
