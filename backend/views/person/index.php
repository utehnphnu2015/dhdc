<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\SysUploadPersonTargetSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Person';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="sys-upload-person-target-index">

    <div class="alert alert-success">
        <h4>รายการแฟ้ม PERSON เพื่อใช้เป็นประชากรกลุ่มเป้าหมาย </h4>
    </div>
    <?php
    $dir = \Yii::getAlias('@webroot') . "/persontarget";
    $count = count(scandir($dir)) - 2;
    ?>
    <button class="btn btn-success"  style="margin-bottom: 10px" onclick="exec();">
        <i class="glyphicon glyphicon-file"></i>
        รอนำเข้า <?= $count ?> ไฟล์
    </button>
    
     <button class="btn btn-danger"  style="margin-bottom: 10px" onclick="cls();">
        <i class="glyphicon glyphicon-remove"></i>
        ล้างข้อมูล
    </button>

    <div id="res" style="display: none;margin-bottom: 10px"><h2>กำลังดำเนินการ....</h2></div>

    <?=
    //GridView::widget([
    \kartik\grid\GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'responsive' => TRUE,
        'hover' => true,
        'floatHeader' => true,
        'panel' => [
            'before' => '',
            'type' => \kartik\grid\GridView::TYPE_SUCCESS,
            'after' => ''
        ],
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],
            //'id',
            'file_name',
            'note1',
            //'file_size',
            'note2',
            'note3',
            'upload_date',
            'upload_time',
        // 'note4',
        // 'note5',
        //['class' => 'yii\grid\ActionColumn'],
        ],
    ]);
    ?>

</div>

<?php
$action_route = "index.php?r=person/import";
$action_route2 = "index.php?r=person/truncate";
$script = <<< JS
   
     function exec() {     
        //alert();
        $('#res').toggle();
        $.ajax({
            url: "$action_route",
            data:{},
            success: function (data) {
                $('#res').toggle();
                alert(' นำเข้าสำเร็จ');
                
                window.location.reload();
            }
        });
    }
        
    function cls() {     
        if(!confirm('ยืนยัน?')){ return false;}
        $('#res').toggle();
        $.ajax({
            url: "$action_route2",
            data:{},
            success: function (data) {
                $('#res').toggle();
                alert(' ล้างข้อมูลสำเร็จ');
                
                window.location.reload();
            }
        });
    }
JS;

$this->registerJs($script, yii\web\View::POS_HEAD);
?>
