<?php

namespace backend\controllers;

use Yii;
use backend\models\Sysconfigmain;
use backend\models\SysconfigmainSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use backend\models\Campur;

/**
 * SysconfigmainController implements the CRUD actions for Sysconfigmain model.
 */
class SysconfigmainController extends Controller {

    public function behaviors() {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['post'],
                ],
            ],
        ];
    }

    function adjust($districtcode) {

        $camp = Campur::find()->where(['ampurcodefull' => $districtcode])->one();
        $distcode = $camp->ampurcode;
        $district_name = $camp->ampurname;

        $config_main = Sysconfigmain::find()->where(['district_code' => $districtcode])->one();
        $config_main->distcode = $distcode;
        $config_main->district_name = $district_name;
        $config_main->update();
    }

    function add_hospital() {
        $cfg_main = Sysconfigmain::find()->one();

        $sql = "DROP TABLE IF EXISTS chospital_amp;";
        \yii::$app->db->createCommand($sql)->execute();

       echo $sql = "CREATE TABLE chospital_amp SELECT * from chospital h 
                WHERE h.provcode = $cfg_main->provcode 
                and h.distcode=$cfg_main->distcode
                and h.hostype NOT in (01,02,10,13,15,16);";
        
        \yii::$app->db->createCommand($sql)->execute();
        
        $sql = "UPDATE chospital_amp c set c.hosname = REPLACE(c.hosname, 'โรงพยาบาลส่งเสริมสุขภาพตำบล', 'รพ.สต.');";
         \yii::$app->db->createCommand($sql)->execute();
         
         $sql = "UPDATE chospital_amp c set c.hosname = REPLACE(c.hosname, 'โรงพยาบาล', 'รพ.');";
         \yii::$app->db->createCommand($sql)->execute();
         
         $sql = "UPDATE chospital_amp c set c.hosname = REPLACE(c.hosname, 'สถานีอนามัย', 'สอ.');";
         \yii::$app->db->createCommand($sql)->execute();
         
          $sql = "UPDATE chospital_amp c set c.hosname = REPLACE(c.hosname, 'ศูนย์สุขภาพชุมชน', 'ศสช.');";
         \yii::$app->db->createCommand($sql)->execute();
         
         /*
         $sql = "delete from chospital_amp where hostype  not in ('03','04','05','06','07','08','09','12','13') ;";
         \yii::$app->db->createCommand($sql)->execute();
         */
        return;
    }

    /**
     * Lists all Sysconfigmain models.
     * @return mixed
     */
    public function actionIndex() {
        $searchModel = new SysconfigmainSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
                    'searchModel' => $searchModel,
                    'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Sysconfigmain model.
     * @param integer $id
     * @return mixed
     */
    public function actionView($id) {
        return $this->render('view', [
                    'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new Sysconfigmain model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate() {
        $model = new Sysconfigmain();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            $this->adjust($model->district_code);
            $this->add_hospital();
            return $this->redirect(['view', 'id' => $model->id]);
        } else {
            return $this->render('create', [
                        'model' => $model,
            ]);
        }
    }

    /**
     * Updates an existing Sysconfigmain model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionUpdate($id) {
        $model = $this->findModel($id);


        if ($model->load(Yii::$app->request->post()) && $model->save()) {

            $this->adjust($model->district_code);
            $this->add_hospital();

            return $this->redirect(['view', 'id' => $model->id]);
        } else {
            return $this->render('update', [
                        'model' => $model,
            ]);
        }
    }

    /**
     * Deletes an existing Sysconfigmain model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */
    public function actionDelete($id) {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the Sysconfigmain model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Sysconfigmain the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id) {
        if (($model = Sysconfigmain::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }

    public function actionListamp($provcode) {

        $amp = Campur::find()->where(['changwatcode' => $provcode])->all();
        foreach ($amp as $a) {
            echo "<option value='$a->ampurcodefull'>$a->ampurname</option>";
        }
    }

}
