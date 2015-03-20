<?php

namespace backend\controllers;

use Yii;
use backend\models\SysUploadPersonTarget;
use backend\models\SysUploadPersonTargetSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\helpers\Html;


class PersonController extends Controller
{
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['post'],
                ],
            ],
        ];
    }

  
    public function actionIndex()
    {
        $searchModel = new SysUploadPersonTargetSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

   
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

  
   

    protected function findModel($id)
    {
        if (($model = SysUploadPersonTarget::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
    
     public function actionImport() {

        $full_dir = \Yii::getAlias('@webroot') . "/persontarget";

        $dir = opendir($full_dir);
        while (($file = readdir($dir)) !== false) {
            if ($file !== "." && $file !== "..") {


                $p = pathinfo($file);
                $ftxt = $p['filename'];
                $ftxt = strtolower($ftxt);
                $ext = $p['extension'];
                if (strtolower($ext) == 'txt') {
                    
                    $info = explode("_", $file);
                    $rep=isset($info[1])?$info[1]:'';
                    $hos=isset($info[2])?$info[2]:'';
                    
                    $model = new SysUploadPersonTarget();
                    $model->file_name = $file;


                    $transaction = \Yii::$app->db->beginTransaction();
                    try {

                        $sql = "LOAD DATA LOCAL INFILE '$full_dir/$file'";
                        $sql.= " REPLACE INTO TABLE person_target";
                        $sql.= " FIELDS TERMINATED BY '|'  LINES TERMINATED BY '\r\n' IGNORE 1 LINES";
                        $sql.= " SET rep_year='$rep'";
                        $count = \Yii::$app->db->createCommand($sql)->execute();
                        $transaction->commit();
                        
                        $model->note1 = substr($hos,0,5);
                        $model->note2 = strval($count); 
                        $model->note3 = substr($rep,0,4);
                        $model->upload_date = date('Ymd');
                        $model->upload_time = date('His');
                        
                        $model->save();
                        
                        echo "Import $file Success!\r\n<br>";
                    } catch (Exception $e) {
                        $transaction->rollBack();
                        echo $e->message();
                    }
                }
            }
        }

        closedir($dir);

        $dir = opendir($full_dir);
        while (($file = readdir($dir)) !== false) {
            if ($file !== "." && $file !== "..") {
                if ($file !== "." && $file !== "..") {
                    unlink("$full_dir/$file");
                }
            }
        }
    }

    public function actionTruncate() {

        if (!\Yii::$app->user->isGuest) {
            $user = Html::encode(Yii::$app->user->identity->username);

            if ($user == 'admin') {

                \Yii::$app->db->createCommand("truncate sys_upload_person_target;")->execute();
                \Yii::$app->db->createCommand("truncate person_target;")->execute();
                echo "Truncate success!!";
            }
        }
    }

    
    
}
