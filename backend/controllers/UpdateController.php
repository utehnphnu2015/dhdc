<?php

namespace backend\controllers;

use linslin\yii2\curl;

/**
 * Description of TestController
 *
 * @author UTEHN
 */
class UpdateController extends \yii\web\Controller {

    public function actionCheckver(){
        $curl = new curl\Curl();
        $ver = $curl->get("http://utehn.plkhealth.go.th/dhdc/version/version.txt");
        
        return $ver;
    }


}
