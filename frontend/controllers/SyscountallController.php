<?php

namespace frontend\controllers;

use Yii;
use frontend\models\SysCountAll;
use frontend\models\SysCountAllSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * SyscountallController implements the CRUD actions for SysCountAll model.
 */
class SyscountallController extends Controller {

    public function actionIndex() {
        $sql = "SELECT  t.hospcode,
sum(t.person) as person,
sum(t.death) as death,
sum(t.service) as service,
sum(t.ncdscreen) as ncdscreen,
sum(t.accident) as accident,
sum(t.procedure_opd) as procedure_opd,
sum(t.anc) as anc,
sum(t.chronicfu) as chronicfu,
sum(t.labfu) as labfu,
sum(t.diagnosis_opd) as diagnosis_opd,
sum(t.chronic) as chronic,
sum(t.fp) as fp,
sum(t.epi) as epi,
sum(t.nutrition) as nutrition,
sum(t.prenatal) as prenatal,
sum(t.labor) as labor,
sum(t.postnatal) as postnatal,
sum(t.newborn) as newborn,
sum(t.newborncare) as newborncare,
sum(t.dental) as dental,
sum(t.admission) as admission,
sum(t.diagnosis_ipd) as diagnosis_ipd,
sum(t.procedure_ipd) as procedure_ipd

from sys_count_all t where t.hospcode in (select hoscode from chospital_amp)
GROUP BY t.hospcode";
              

        $rawData = \Yii::$app->db->createCommand($sql)->queryAll();
        $dataProvider = new \yii\data\ArrayDataProvider([
            'key' => 'hospcode',
            'allModels' => $rawData,
            'pagination' => FALSE,
        ]);

        return $this->render('index', [
                    'dataProvider' => $dataProvider,
                    
        ]);
    }

    public function actionIndex2() {
        $searchModel = new SysCountAllSearch();

        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);
        //$searchModel->month = date('Ym');
        //$dataProvider->month = date('Ym');
        //$searchModel->hospcode=$hospcode;

        return $this->render('index2', [
                    'searchModel' => $searchModel,
                    'dataProvider' => $dataProvider,
        ]);
    }

}
