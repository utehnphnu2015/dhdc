<?php

use yii\data\ArrayDataProvider;
use kartik\dynagrid\DynaGrid;
use kartik\grid\GridView;
use yii\helpers\Html;
use yii\grid\CheckboxColumn;
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
    'sex',
    [
        'class' => 'kartik\grid\CheckboxColumn',
        //'order' => DynaGrid::ORDER_FIX_RIGHT
    ],
];


echo DynaGrid::widget([
   
    'columns' => $columns,
    'storage' => DynaGrid::TYPE_COOKIE,
    //'theme' => 'panel-success',
    'gridOptions' => [
        'dataProvider' => $dataProvider,
        //'filterModel' => $searchModel,
        'panel' => ['heading' => '<h3 class="panel-title"></h3>'],
    ],
    'options' => ['id' => 'mygrid'] // a unique identifier is important
]);
?>
<button id="save">save</button>
<?php    
    $this->registerJs("
        var chks=[];
        $('#save').click(function () {
            chks=[];
            $('.kv-grid-table').find('tr').each(function () {
                var row = $(this);
                if (row.find('input[type=\"checkbox\"]').is(':checked')) 
                {
                    //alert(row.find('input[type=\"checkbox\"]').val());
                    chks.push(row.find('input[type=\"checkbox\"]').val());
                }
            });
            alert(chks);
        });

    ");  
    
    ?>
  
