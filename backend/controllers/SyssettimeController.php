<?php

namespace backend\controllers;

use Yii;
use backend\models\SysSetTime;
use yii\data\ActiveDataProvider;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * SysSetTimeController implements the CRUD actions for SysSetTime model.
 */
class SyssettimeController extends Controller {

//
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

    protected function exec_sql($sql) {
        $affect_row = \Yii::$app->db->createCommand($sql)->execute();
        return $affect_row;
    }

    protected function call($store_name, $arg = NULL) {
        $sql = "";
        if ($arg != NULL) {
            $sql = "call " . $store_name . "(" . $arg . ");\n";
        } else {
            $sql = "call " . $store_name . "();\n";
        }
        //$this->exec_sql($sql);
        return $sql;
    }

    protected function call2($store_name, $arg1 = NULL, $arg2 = NULL) {
        $sql = "";
        if ($arg1 != NULL and $arg2 != NULL) {
            $sql = "call $store_name($arg1,$arg2);\n";
        }
        //$this->exec_sql($sql);
        return $sql;
    }

    public function create_event() {

        $this->exec_sql("SET GLOBAL event_scheduler = ON;");
        $this->exec_sql("DROP EVENT IF EXISTS event1;");
        $this->exec_sql("DROP EVENT IF EXISTS event2;");
        $this->exec_sql("DROP EVENT IF EXISTS event3;");
        $this->exec_sql("DROP EVENT IF EXISTS event4;");


        $bdg = '2014-09-30';
        $model = \backend\models\Sysconfigmain::find()->one();
        if ($model) {
            $bdg = $model->note2;
        }
        $bdg = "'" . $bdg . "'";

        $y = date('Y');


        $t = SysSetTime::find()->one();
        if (count($t) > 0) {
            $date = date('Y-m-d');
            $time = $t->event_time;
            $days = $t->days;

            $sql = "CREATE EVENT event1
            ON SCHEDULE EVERY '$days' DAY
            STARTS '$date $time'
            DO BEGIN\n\n";

            $sql .= $this->call("start_process", NULL);

            $sql .= $this->call("clear_import_not_success", NULL);
            $sql .= $this->call("clear_null_hospcode", NULL);
            $sql .= $this->call("clear_upload_error", NULL);

            $sql .= $this->call("merge_newborncare", NULL);
            $sql .= $this->call("cal_chart_dial_1", $bdg);
            $sql .= $this->call("cal_chart_dial_2", $bdg);
            $sql .= $this->call("cal_chart_dial_3", $bdg);
            $sql .= $this->call("cal_chart_dial_4", NULL);
            $sql .= $this->call("cal_chart_dial_5", NULL);
            $sql .= $this->call("cal_chart_dial_6", NULL);

            $sql .= $this->call("cal_ncd_cholesteral_colorchart", $bdg);
            $sql .= $this->call("cal_ncd_nocholesteral_colorchart", $bdg);


            $sql .= $this->call("cal_pyramid_level_1", $bdg);
            $sql .= $this->call("cal_pyramid_level_2");
            $sql .= $this->call("cal_pyramid_level_3");

            $sql .= $this->call("cal_sys_person_type");
            $sql .= $this->call("cal_count_service", $y - 1);
            $sql .= $this->call("cal_count_service", $y);

            $sql .=$this->call("cal_rpt_visit_oldman", $y - 1);
            $sql .=$this->call("cal_rpt_visit_oldman", $y);

            //รายงานแผนไทย-knott
            $sql .=$this->call("cal_rpt_panth_visit_ratio", $y - 1);
            $sql .=$this->call("cal_rpt_panth_visit_ratio", $y);
            $sql .=$this->call("cal_rpt_panth_drug_value", $y - 1);
            $sql .=$this->call("cal_rpt_panth_drug_value", $y);
            $sql .=$this->call("cal_rpt_cervical_cancer_screening", $y - 1);
            $sql .=$this->call("cal_rpt_cervical_cancer_screening", $y);


          


            //จบ ใส่ store

            $sql .= $this->call("end_process", NULL);

            $sql.="\nEND;";

            $this->exec_sql($sql);
        }
    }

    public function actionIndex() {
        $dataProvider = new ActiveDataProvider([
            'query' => SysSetTime::find(),
        ]);

        return $this->render('index', [
                    'dataProvider' => $dataProvider,
        ]);
    }

    public function actionView($id) {
        return $this->render('view', [
                    'model' => $this->findModel($id),
        ]);
    }

    public function actionCreate() {
        $model = new SysSetTime();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            $this->create_event();
            return $this->redirect(['view', 'id' => $model->id]);
        } else {
            return $this->render('create', [
                        'model' => $model,
            ]);
        }
    }

    public function actionUpdate($id) {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            $this->create_event();
            return $this->redirect(['view', 'id' => $model->id]);
        } else {
            return $this->render('update', [
                        'model' => $model,
            ]);
        }
    }

    public function actionDelete($id) {
        $this->findModel($id)->delete();
        $this->create_event();
        return $this->redirect(['index']);
    }

    protected function findModel($id) {
        if (($model = SysSetTime::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }

}
