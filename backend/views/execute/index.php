<?php
/* @var $this yii\web\View */

use yii\helpers\Html;
use yii\widgets\Pjax;
?>
<div class="alert alert-material-red-200" style="color: whitesmoke"><h3>ตรวจสอบการทำงานเบื้องหลัง</h3></div>
<?php Pjax::begin(); ?>
<?= Html::a("Refresh", ['execute/index'], ['class' => 'btn btn-lg btn-primary', 'id' => 'refreshButton','style'=>'display:none']) ?>
<div style="border-bottom: gray solid 1px;padding-bottom: 5px">
    Server Time: <span style="background-color: white;margin: 15px" id="divtoBlink"><b><?= $time ?></b></span>
    Current Process: <span style="background-color: white;margin: 15px"><b><?=$fnc_name?></b></span>
    Start Time: <span style="background-color: white;margin: 15px"><b><?=$fnc_time?></b></span>
</div>
<br>


<?php
echo kartik\grid\GridView::widget([
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
        //'before' => '',
    //'after'=>''
    ]
]);
?>
<?php Pjax::end(); ?>

<?php
$script = <<< JS
$(document).ready(function() {
    setInterval(function(){ $("#refreshButton").click(); }, 5000);
});

setInterval(function () {
    $("#divtoBlink").css("background-color", function () {
        this.switch = !this.switch
        return this.switch ? "yellow" : "white"
    });
}, 1000)

JS;
$this->registerJs($script);
?>

