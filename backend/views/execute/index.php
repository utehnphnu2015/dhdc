<?php
/* @var $this yii\web\View */

use yii\helpers\Html;
use yii\widgets\Pjax;
?>

<?php Pjax::begin(); ?>
<?= Html::a("Refresh", ['execute/index'], ['class' => 'btn btn-lg btn-primary', 'id' => 'refreshButton']) ?>
<p>Server Time: <span style="background-color: white" id="divtoBlink"><?= $time ?></span></p>
<p>
    Current Process: <span style="background-color: white"><?=$fnc_name?></span>
    Start Time: <span style="background-color: white"><?=$fnc_time?></span>
</p>



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

