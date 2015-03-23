<?php

namespace frontend\controllers;

use yii;
use yii\filters\VerbFilter;
use yii\base\ErrorException;

class RunqueryController extends \yii\web\Controller {

    public $enableCsrfValidation = false;

    protected function call($store_name, $arg = NULL) {
        $sql = "";
        if ($arg != NULL) {
            $sql = "call " . $store_name . "(" . $arg . ");";
        } else {
            $sql = "call " . $store_name . "();";
        }
        return $this->query_all($sql);
    }

    protected function exec_sql($sql) {
        $affect_row = \Yii::$app->db->createCommand($sql)->execute();
        return $affect_row;
    }

    protected function query_all($sql) {
        $rawData = \Yii::$app->db->createCommand($sql)->queryAll();
        return $rawData;
    }

    public function behaviors() {

        $role = 0;
        if (!Yii::$app->user->isGuest) {
            $role = Yii::$app->user->identity->role;
        }
        $arr = [''];
        if ($role == 1) {
            $arr = ['index', 'result'];
        }
        if ($role == 2) {
            $arr = ['index', 'result'];
        }

        return [
            'access' => [
                'class' => \yii\filters\AccessControl::className(),
                'denyCallback' => function ($rule, $action) {
                    throw new \yii\web\ForbiddenHttpException("ไม่ได้รับอนุญาต");
                },
                'only' => ['index', 'result'],
                'rules' => [
                    [
                        'allow' => FALSE,
                        'actions' => $arr,
                        'roles' => ['?'],
                    ],
                    [
                        'allow' => true,
                        'actions' => $arr,
                        'roles' => ['@'],
                    ],
                ],
            ],
        ];
    }

    public function actions() {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
        ];
    }

    public function actionIndex() {

        $saved = false;
        if (\Yii::$app->request->isPost) {

            $sql = trim($_POST['sql_code']);



            $break = FALSE;

            //if (substr($sql, 0, 6)=='delete') {
            if (strpos($sql, 'delete') !== false) {
                $break = true;
            }
            if (strpos($sql, 'insert') !== false) {
                $break = true;
            }
            if (strpos($sql, 'update') !== false) {
                $break = true;
            }
            if (strpos($sql, 'alter') !== false) {
                $break = true;
            }
            if (strpos($sql, 'drop') !== false) {
                $break = true;
            }
            if (strpos($sql, 'show') !== false) {
                $break = true;
            }
            if (strpos($sql, 'truncate') !== false) {
                $break = true;
            }
            if (strpos($sql, 'empty') !== false) {
                $break = true;
            }
            if (strpos($sql, 'create') !== false) {
                $break = true;
            }
            if (strpos($sql, 'replace') !== false) {
                $break = true;
            }

            if ($break) {
                throw new \yii\web\ConflictHttpException('ไม่อนุญาตให้ใช้คำสั่งนี้');
                return;
            }

            try {

                $this->exec_sql('DROP PROCEDURE IF EXISTS tmp_store_proc');
                $sp1 = "CREATE PROCEDURE tmp_store_proc()\r\n";
                $sp1.=" BEGIN \r\n";
                $sp1.= trim($sql);
                $sp1.="\r\n END";


                $this->exec_sql($sp1);
                $rawData = $this->call('tmp_store_proc', NULL);
            } catch (\yii\db\Exception $e) {
                throw new \yii\web\ConflictHttpException($e->getCode() . ' : คำสั่งผิดพลาด SQL ERROR');
                //return;
            }

            if (isset($_POST['save'])) {

                $model = new \frontend\models\Sqlscript();
                $model->topic = 'กรุณาแก้ชื่อ script';
                $model->sql_script = $sql;
                $model->user = Yii::$app->user->identity->username;
                $model->d_update = date('Y-m-d H:i:s');
                if ($model->save()) {
                    $saved = true;
                }
            }



            $dataProvider = new \yii\data\ArrayDataProvider([
                //'key' => 'hoscode',
                'allModels' => $rawData,
                'pagination' => FALSE,
            ]);



            return $this->render('index', [
                        'dataProvider' => $dataProvider,
                        'sql_code' => $sql,
                        'saved' => $saved ? '[บันทึก script แล้ว]' : ''
            ]);
        }

        return $this->render('index', [
                    'saved' => ''
        ]);
    }

    public function actionResult() {
        
    }

}
