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
                    'amp-name' => ['GET'],
                    'find-emr'=>['GET']
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

    public function actionAmpName() {
        $this->setHeader(200);
        $sql = "SELECT t.district_name as amp from sys_config_main t;";
        $rawData = Yii::$app->db->createCommand($sql)->queryAll();

        return $rawData;
    }

    public function actionFindEmr($cid = null) {        
        $this->setHeader(200);
       
        $cid = trim($cid);
        $sql = "SELECT p.CID as cid,s.HOSPCODE as hospcode,s.DATE_SERV as date_serv,group_concat(DISTINCT dxo.DIAGCODE ORDER BY dxo.DIAGTYPE ASC) as diag,
GROUP_CONCAT(DISTINCT dgo.DNAME SEPARATOR ' , ') as drug
from service s 
INNER JOIN person p on p.HOSPCODE = s.HOSPCODE and p.PID = s.PID 
left join diagnosis_opd dxo on dxo.HOSPCODE = s.HOSPCODE and dxo.PID = s.PID and dxo.SEQ=s.SEQ
left join drug_opd dgo on dgo.HOSPCODE=s.HOSPCODE and dgo.PID=s.PID and dgo.SEQ=s.SEQ
where p.CID = '$cid' 
group by s.SEQ
ORDER BY s.DATE_SERV DESC
limit 10";
        $rawData = Yii::$app->db->createCommand($sql)->queryAll();
        if(count($rawData)>0){
            return $rawData;
        }else{
            return [['cid'=>'','hospcode'=>'','date_serv'=>'','diag'=>'','drug'=>'']];
        }
    }

// end emr
}
