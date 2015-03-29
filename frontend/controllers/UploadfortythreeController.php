<?php

namespace frontend\controllers;

use Yii;
use frontend\models\UploadFortythree;
use frontend\models\UploadFortythreeSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\web\UploadedFile;
use yii\data\ActiveDataProvider;

/**
 * UploadFortythreeController implements the CRUD actions for UploadFortythree model.
 */
class UploadfortythreeController extends Controller {

    public $enableCsrfValidation = false;

    public function behaviors() {

        $role = 0;
        if (!Yii::$app->user->isGuest) {
            $role = Yii::$app->user->identity->role;
        }
        $arr = ['index'];
        if ($role == 1 ) {
            $arr = ['index', 'view', 'create', 'update', 'delete','importall'];
        }
        if( $role == 2) {
             $arr = ['index', 'view', 'create'];
        }

        return [
            'access' => [
                'class' => \yii\filters\AccessControl::className(),
                'denyCallback' => function ($rule, $action) {
                    throw new \yii\web\ForbiddenHttpException("ไม่ได้รับอนุญาต");
                },
                'only' => ['index', 'view', 'create', 'update', 'delete','importall'],
                'rules' => [
                    [
                        'allow' => true,
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
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['post'],
                ],
            ],
        ];
    }

    /**
     * Lists all UploadFortythree models.
     * @return mixed
     */
    public function actionIndex() {
        $searchModel = new UploadFortythreeSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
                    'searchModel' => $searchModel,
                    'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single UploadFortythree model.
     * @param integer $id
     * @return mixed
     */
    public function actionView($id) {
        return $this->render('view', [
                    'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new UploadFortythree model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate() {
        //set_time_limit(0);
        //ini_set('max_execution_time', 1800);//ตั้งค่า php.ini
        //ini_set('post_max_size', '64M');
        //ini_set('upload_max_filesize', '64M');

        $model = new UploadFortythree();

        if ($model->load(Yii::$app->request->post())) {

            $upfile = UploadedFile::getInstance($model, 'file');
            if (!$upfile) {
                return $this->render('create', [
                            'model' => $model,
                ]);
            }
            $hos = '-';
            $hospcode = explode("_", $upfile->baseName);
            if (strtoupper($hospcode[1]) === 'F43') {
                $hos = $hospcode[2];
            } else {
                $hos = $hospcode[1];
            }
            $model->hospcode = $hos;
            $newname = $upfile->baseName . "." . $upfile->extension;
            $model->file_name = $newname;
            $model->file_size = strval($upfile->size / 1000000);
            $model->note1 = $upfile->baseName;
            $model->note2 = 'รอนำเข้า';

            $model->save();
            $path = './fortythree/';
            $pathbackup = './fortythreebackup/';
            $upfile->saveAs($path . $newname);
            copy($path . $newname, $pathbackup . $newname);

            $ubuntu_path = "/var/lib/mysql/fortythree/";
            if (strncasecmp(PHP_OS, 'WIN', 3) !== 0) {
                //copy($path . $newname, $ubuntu_path . $newname);
            }


            return $this->redirect(['view', 'id' => $model->id]);

            //}
        } else {
            return $this->render('create', [
                        'model' => $model,
            ]);
        }
    }

    /**
     * Updates an existing UploadFortythree model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionUpdate($id) {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        } else {
            return $this->render('update', [
                        'model' => $model,
            ]);
        }
    }

    /**
     * Deletes an existing UploadFortythree model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */
    public function actionDelete($id) {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the UploadFortythree model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return UploadFortythree the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id) {
        if (($model = UploadFortythree::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }

    public function actionDetail($filename, $upload_date, $upload_time) {

        $model = \frontend\models\SysCountImport::find()
                ->where(['filename' => $filename,
                    'upload_date' => $upload_date,
                    'upload_time' => $upload_time])
                ->one();
        if ($model) {

            return $this->render('detail', [
                        'model' => $model,
            ]);
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
    
    public function actionImportall(){
        return $this->render('importall');
    }

}
