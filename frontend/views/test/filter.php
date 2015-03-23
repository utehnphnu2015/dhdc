<?php

use yii\data\ArrayDataProvider;
use kartik\grid\GridView;

function filter($item) {
    $mailfilter = Yii::$app->request->getQueryParam('filteremail', '');

    if (strlen($mailfilter) > 0) {
        if (strpos($item['email'], trim($mailfilter)) !== false) {
            return true;
        } else {
            return false;
        }
    } else {
        return true;
    }
}

$rawData = [
    array("id" => 1, "name" => "Cyrus", "email" => "risusconsequatdolorvitae.org"),
    array("id" => 2, "name" => "Justin", "email" => "ac.facilisis.facilisisat.ca"),
    array("id" => 3, "name" => "Mason", "email" => "in.cursus.etarcuacorci.ca"),
    array("id" => 4, "name" => "Fulton", "email" => "afaucibusorciluctus.edu"),
    array("id" => 5, "name" => "Neville", "email" => "eleifendconsequatlectus.com"),
    array("id" => 6, "name" => "Jasper", "email" => "lectus.justomiAliquam.com"),
    array("id" => 7, "name" => "Neville", "email" => "Morbi.non.sapiendapibusquam.org"),
    array("id" => 8, "name" => "Neville", "email" => "condimentum.egetegestas.edu"),
    array("id" => 9, "name" => "Ronan", "email" => "orci.adipiscinginterdumligulaeu.com"),
    array("id" => 10, "name" => "Raphael", "email" => "nec.tempuscommodohendrerit.co.uk"),
];


$filteredresultData = array_filter($rawData, 'filter');

$mailfilter = Yii::$app->request->getQueryParam('filteremail', '');
$namefilter = Yii::$app->request->getQueryParam('filtername', '');
$searchModel = ['id' => null, 'name' => $namefilter, 'email' => $mailfilter];



$dataProvider = new ArrayDataProvider([
    //'key' => 'id',
    'allModels' => $filteredresultData,
    'sort' => [
        'attributes' => ['id', 'name', 'email'],
        ]]);

echo GridView::widget([
    'dataProvider' => $dataProvider,
    'filterModel' => $searchModel,
    'columns' => [
        ['class' => 'yii\grid\SerialColumn'],
        'id',
        [
            'attribute' => 'name',
            'value' => 'name',
        ],
        [
            "attribute" => "email",
            'filter' => '<input class="form-control" name="filteremail" value="' . $searchModel['email'] . '" type="text">',
            'value' => 'email',
        ]
    ]
]);
