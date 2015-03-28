<?php



use yii\data\ArrayDataProvider;

use kartik\dynagrid\DynaGrid;
use kartik\grid\GridView;
?>

<?php

//print_r($rawData);
$dataProvider = new ArrayDataProvider([

    'allModels' => $rawData,
    'sort' => [
        'attributes' => count($rawData[0]) > 0 ? array_keys($rawData[0]) : array()
    ],
        ]);


$columns = [
    
    'pid',
    'name'
    
];


echo DynaGrid::widget([
    'columns'=>$columns,
    'storage'=>DynaGrid::TYPE_SESSION,
    //'theme'=>'panel-danger',
    'gridOptions'=>[
        'dataProvider'=>$dataProvider,
        //'filterModel'=>$searchModel,
        'panel'=>['heading'=>'<h3 class="panel-title">Library</h3>'],
    ],
    'options'=>['id'=>'dynagrid-1'] // a unique identifier is important
]);

?>
