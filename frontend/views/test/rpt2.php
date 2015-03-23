<?php

use kartik\grid\GridView;
use yii\data\ArrayDataProvider;
use yii\helpers\Html;

$sql = "select cid ,name,lname,sex from person limit 100 ";

$rawData = Yii::$app->db->createCommand($sql)->queryAll();

$filtersex = Yii::$app->request->getQueryParam('filtersex', '');

function filter($sex='') {
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

$searchModel = ['sex' => $filtersex];

$dataProvider = new ArrayDataProvider([

    'allModels' => $filteredData,
     'sort' => [
            'attributes' => ['cid', 'name', 'lname','sex'],
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
            'value' => 'sex',
            'label'=>'เพศ',
            'filter'=>  Html::dropDownList('filtersex',  isset($_GET['filtersex'])?$_GET['filtersex']:'', [''=>'','1'=>'ชาย','2'=>'หญิง'],['class'=>'form-control'])
        ]
    ]
]);



