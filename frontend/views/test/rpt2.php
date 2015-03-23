<?php

use kartik\grid\GridView;
use yii\data\ArrayDataProvider;

$sql = "select cid ,name,lname,sex from person limit 100 ";

$rawData = Yii::$app->db->createCommand($sql)->queryAll();

function filter($item) {
    $sexfilter = Yii::$app->request->getQueryParam('filtersex', '');

    if (strlen($sexfilter) > 0) {
        if (strpos($item['sex'], $sexfilter) != false) {
            return true;
        } else {
            return false;
        }
    } else {
        return true;
    }
}

$filteredData = array_filter($rawData, 'filter');


$sexfilter = Yii::$app->request->getQueryParam('filtersex', '');
$namefilter = Yii::$app->request->getQueryParam('filtername', '');

$searchModel = [ 'name' => $namefilter, 'sex' => $sexfilter];


$dataProvider = new ArrayDataProvider([
    //'key'=>'id',
    'allModels' => $filteredData,
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
            "attribute" => "sex",
            'filter' => '<input class="form-control" name="filtersex" value="' . $searchModel['sex'] . '" type="text">',
            'value' => 'sex',
        ]
    ]
]);


