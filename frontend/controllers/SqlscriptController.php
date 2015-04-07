<?php

namespace frontend\controllers;

use Yii;
use frontend\models\Sqlscript;
use frontend\models\SqlscriptSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use frontend\models\UploadForm;
use yii\web\UploadedFile;

/**
 * SqlscriptController implements the CRUD actions for Sqlscript model.
 */
class SqlscriptController extends Controller {

    public $enableCsrfValidation = false;

    public function behaviors() {

        $role = 0;
        if (!Yii::$app->user->isGuest) {
            $role = Yii::$app->user->identity->role;
        }
        $arr = ['index'];
        if ($role == 1) {
            $arr = ['index', 'view', 'create', 'update', 'delete'];
        }
        if ($role == 2) {
            $arr = ['index', 'view'];
        }


        return [
            'access' => [
                'class' => \yii\filters\AccessControl::className(),
                'denyCallback' => function ($rule, $action) {
                    throw new \yii\web\ForbiddenHttpException("ไม่ได้รับอนุญาต");
                },
                'only' => ['index', 'view', 'create', 'update', 'delete', 'importall'],
                'rules' => [
                    [
                        'allow' => true,
                        'actions' => $arr,
                        'roles' => ['@'],
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
     * Lists all Sqlscript models.
     * @return mixed
     */
    public function actionIndex() {

        if (!file_exists("txt")) {
            mkdir('txt', 0777);
        }
        chmod("txt", 0777);

        $searchModel = new SqlscriptSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
                    'searchModel' => $searchModel,
                    'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Sqlscript model.
     * @param integer $id
     * @return mixed
     */
    public function actionView($id) {
        return $this->render('view', [
                    'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new Sqlscript model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate() {


        $model = new Sqlscript();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        } else {
            return $this->render('create', [
                        'model' => $model,
            ]);
        }
    }

    public function actionUpload() {


        $model = new UploadForm();

        if (Yii::$app->request->isPost) {
            $model->file = UploadedFile::getInstances($model, 'file');

            if ($model->file && $model->validate()) {

                foreach ($model->file as $file) {
                    $model_script = new Sqlscript();
                    $save_name = '';
                    if (strtolower($file->extension) === 'txt' || strtolower($file->extension) === 'sql') {
                        
                        $path = \Yii::getAlias('@webroot') . "/txt/";

                        $fname = iconv('UTF-8', 'tis-620', $file->name);// win
                        $save_name = $path . $fname;                        
                        $file->saveAs($save_name);
                        
                        $model_script->topic = iconv('tis-620', 'UTF-8',$fname);
                        
                        $model_script->sql_script = iconv('tis-620', 'UTF-8', file_get_contents($save_name));

                        $model_script->user = Yii::$app->user->identity->username;
                        $model_script->d_update = date('Y-m-d H:i:s');
                    }
                    $model_script->save();
                }

                return $this->redirect(['sqlscript/index']);
            }
        }

        return $this->render('upload', ['model' => $model]);
    }

    /**
     * Updates an existing Sqlscript model.
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
     * Deletes an existing Sqlscript model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */
    public function actionDelete($id) {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the Sqlscript model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Sqlscript the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id) {
        if (($model = Sqlscript::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }

}
