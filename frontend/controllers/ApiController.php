<?php

namespace frontend\controllers;

use yii\web\Controller;
use Yii;
use yii\filters\VerbFilter;
use yii\web\Response;

class ApiController extends Controller {

    public function behaviors() {
        return [

            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'index' => ['get'],
                    'nav-menu' => ['get'],
                    'report-main' => ['get'],
                    'raw-data' => ['get'],
                    'amp-name'=>['GET']
                ],
            ]
        ];
    }

    public function beforeAction($event) {
        $action = $event->id;
        if (isset($this->actions[$action])) {
            $verbs = $this->actions[$action];
        } elseif (isset($this->actions['*'])) {
            $verbs = $this->actions['*'];
        } else {
            return $event->isValid;
        }
        $verb = Yii::$app->getRequest()->getMethod();

        $allowed = array_map('strtoupper', $verbs);

        if (!in_array($verb, $allowed)) {

            $this->setHeader(400);
            echo json_encode(array('status' => 0, 'error_code' => 400, 'message' => 'Method not allowed'), JSON_PRETTY_PRINT);
            exit;
        }

        return true;
    }

    private function setHeader($status) {

        $status_header = 'HTTP/1.1 ' . $status . ' ' . $this->_getStatusCodeMessage($status);
        //$content_type = "application/json; charset=utf-8";


        header($status_header);
        \Yii::$app->response->format = 'json';
        //header('Content-type: ' . $content_type);
        header('X-Powered-By: ' . "UTEHN PHNU");
    }

    private function _getStatusCodeMessage($status) {
        $codes = Array(
            200 => 'OK',
            400 => 'Bad Request',
            401 => 'Unauthorized',
            402 => 'Payment Required',
            403 => 'Forbidden',
            404 => 'Not Found',
            500 => 'Internal Server Error',
            501 => 'Not Implemented',
        );
        return (isset($codes[$status])) ? $codes[$status] : '';
    }

    public function actionNavMenu() {

        $this->setHeader(200);
        $sql = "select * from mob_nav_menu";
        $rawData = Yii::$app->db->createCommand($sql)->queryAll();

        return $rawData;
    }

    public function actionReportMain($group_id = NULL) {

        $this->setHeader(200);
        $sql = "select * from mob_report_main";
        if ($group_id != NULL) {
            $sql = "select * from mob_report_main where group_id='$group_id'";
        }
        $rawData = Yii::$app->db->createCommand($sql)->queryAll();

        return $rawData;
    }

    public function actionRawData($report_id = NULL) {

        $this->setHeader(200);
        $sql = "select * from mob_raw_data";
        if ($report_id != NULL) {
            $sql = "select * from mob_raw_data where report_id='$report_id'";
        }
        $rawData = Yii::$app->db->createCommand($sql)->queryAll();

        return $rawData;
    }
    
    public function actionAmpName(){
        $this->setHeader(200);
        $sql = "SELECT t.district_name as amp from sys_config_main t;";
        $rawData = Yii::$app->db->createCommand($sql)->queryAll();

        return $rawData;
        
    }

}
