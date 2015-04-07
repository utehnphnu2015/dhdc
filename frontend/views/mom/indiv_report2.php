<a href="#" id="btn_sql">ชุดคำสั่ง</a>
<div id="sql" style="display: none"><?= $sql ?></div>
<?php

use yii\data\ArrayDataProvider;
use yii\helpers\Html;

$this->params['breadcrumbs'][] = ['label' => 'แม่และเด็ก', 'url' => ['mom/index']];
$this->params['breadcrumbs'][] = ['label' => 'หญิงคลอดได้รับการฝากครรภ์ครั้งแรกก่อน 12 สัปดาห์', 'url' => ['mom/report2']];
$this->params['breadcrumbs'][] = 'รายบุคคล';
$this->title = "DHDC";

if (!count($rawData) > 0) {
    throw new \yii\web\ConflictHttpException("ไม่มีข้อมูล");
}

function filter($col) {
    $filterresult = Yii::$app->request->getQueryParam('filterresult', '');
    if (strlen($filterresult) > 0) {
        if (strpos($col['result'], $filterresult) !== false) {
            return true;
        } else {
            return false;
        }
    } else {
        return true;
    }
}

$filteredData = array_filter($rawData, 'filter');
$searchModel = ['result' => Yii::$app->request->getQueryParam('$filterresult', '')];

$dataProvider = new ArrayDataProvider([

    'allModels' => $filteredData,
    'pagination' => false,
    'sort' => [
        'attributes' => count($rawData[0]) > 0 ? array_keys($rawData[0]) : array()
        ]]);


echo \kartik\grid\GridView::widget([
    'dataProvider' => $dataProvider,
    'filterModel' => $searchModel,
    'panel' => ['before' => ''],
    'floatHeader' => true,
    'columns' => [
        ['class' => 'yii\grid\SerialColumn'],
        [
            'attribute' => 'hospcode',
            'label' => 'สถานบริการ'
        ],
        [
            'attribute' => 'pid',
            'label' => 'รหัสบุคคล'
        ],
        [
            'attribute' => 'fullname',
            'label' => 'ชื่อ - นามสกุล'
        ],
        [
            'attribute' => 'bdate',
            'label' => 'วันที่คลอด'
        ],
        [
            'attribute' => 'ga',
            'label' => 'อายุครรภ์'
        ],
        [
            'attribute' => 'result',
            'label' => 'ผลงาน',
            'value' => function($model) {
                if ($model['result'] === 'y') {
                    return Html::encode('ผ่าน');
                } elseif ($model['result'] === 'n') {
                    return Html::encode('ไม่ผ่าน');
                } else {
                    return Html::encode('NA');
                }
            },
            'filter' => Html::dropDownList('filterresult', isset($_GET['filterresult']) ? $_GET['filterresult'] : '', ['' => 'ทั้งหมด', 'y' => 'ผ่าน', 'n' => 'ไม่ผ่าน'], ['class' => 'form-control'])
        ]
    ]
]);
?>

<?php
$script = <<< JS
$('#btn_sql').on('click', function(e) {    
   $('#sql').toggle();
});
JS;
$this->registerJs($script);
?>



