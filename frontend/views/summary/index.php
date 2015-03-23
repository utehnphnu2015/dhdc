<?php

use yii\widgets\Pjax;
$this->title="ผลรวม";
?>
<a href="#" onclick="$('#sql').toggle()">คำสั่ง</a>
<div class="alert alert-success" style="display: none" id="sql"><?= $sql ?></div>

<?php Pjax::begin(); ?>
<?php
echo \kartik\grid\GridView::widget([
    'dataProvider' => $dataProvider,
    'pjax' => true,
    'pjaxSettings' => [
        //'neverTimeout' => true,
        'options' => [
            'enablePushState' => false,
        ],
    ],
    'responsive' => true,
    'hover' => true,
    'panel' => [
        'before' => '',
    //'after'=>''
    ],
]);
?>
<?php Pjax::end(); ?>