<?php

use yii\data\ArrayDataProvider;
use kartik\dynagrid\DynaGrid;
use kartik\grid\GridView;
use yii\helpers\Html;
?>

<?php

$dataProvider = new ArrayDataProvider([

    'allModels' => $rawData,
    'sort' => [
        'attributes' => count($rawData[0]) > 0 ? array_keys($rawData[0]) : array()
    ],]);



$columns = [

    'pid',
    'name',
    'lname',
    'sex'
];


echo DynaGrid::widget([
    'columns' => $columns,
    'storage' => DynaGrid::TYPE_COOKIE,
    'theme' => 'panel-success',
    'gridOptions' => [
        'dataProvider' => $dataProvider,
        //'filterModel' => $searchModel,
        'panel' => ['heading' => '<h3 class="panel-title"></h3>'],
    ],
    'options' => ['id' => 'dynagrid-1'] // a unique identifier is important
]);
?>
