<?php

use kartik\grid\GridView;
use yii\data\ArrayDataProvider;
use yii\helpers\Html;



function filter($sex) {
    $filtersex = Yii::$app->request->getQueryParam('filtersex', ''); 
    if (strlen($filtersex) > 0) {
        if (strpos($sex['sex'], $filtersex) !== false) {
            return true;
        } else {
            return false;
        }
    } else {
        return true;
    }
   
}
$filteredData = array_filter($rawData, 'filter');
$searchModel = ['sex' => Yii::$app->request->getQueryParam('filtersex', '')];

$dataProvider = new ArrayDataProvider([

    'allModels' => $filteredData,
     'sort' => [
         'attributes' => count($rawData[0])>0?array_keys($rawData[0]):array()
        ],
]);


echo \kartik\grid\GridView::widget([
    'dataProvider' => $dataProvider,
    'filterModel' => $searchModel,
    'panel' => ['before' => ''],
    'columns' => [
        ['class' => 'yii\grid\SerialColumn'],
        'cid',
        [
            'attribute' => 'name',
            'value' => 'name',
        ],
        [
            'attribute' => 'lname',
            'value' => 'lname',
        ],
        [
            'attribute' => 'sex',            
            //'value' => 'sex',
            'label'=>'เพศ',
            'filter'=>  Html::dropDownList('filtersex',  isset($_GET['filtersex'])?$_GET['filtersex']:'', [''=>'','1'=>'ชาย','2'=>'หญิง'],['class'=>'form-control'])
        ]
    ]
]);



