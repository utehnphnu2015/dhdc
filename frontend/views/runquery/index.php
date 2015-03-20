<?php

use yii\helpers\ArrayHelper;
use yii\widgets\Pjax;
?>

<h4>คำสั่ง SQL  <?= $saved ?></h4>
<div class="alert alert-danger">กรุณาใส่เครื่องหมาย ; ปิดท้ายคำสั่ง ตัวอย่างเช่น select * from person limit 100;</div>
<?php
$route = Yii::$app->urlManager->createUrl('runquery/result');
?>
<form method="POST" >
    <div style="margin-bottom: 3px">
        <textarea name="sql_code" id="sql_code" class="form-control" rows='6'><?= @$sql_code ?></textarea>
    </div>
    <div>
        <?php
        $onof = \frontend\models\SysOnoffSql::findOne(1);
        if ($onof->status === 'on'):
            ?>
            <button class="btn btn-danger"><i class="glyphicon glyphicon-refresh"></i> รันชุดคำสั่ง</button>
            <button name="save" value="yes" class="btn btn-success"><i class="glyphicon glyphicon-floppy-saved"></i> จัดเก็บ</button>
            <a href="<?= yii\helpers\Url::to(['sqlscript/index']) ?>" class="btn btn-primary">คลัง script</a>
        <?php else: ?>
            <label> ผู้ดูแลระบบปิดใช้งาน </label>

        <?php endif; ?>
    </div>
</form>

<hr>
<div style="overflow: auto">
    <?php
    if (isset($dataProvider))
    //echo yii\grid\GridView::widget([
        echo \kartik\grid\GridView::widget([
            'dataProvider' => $dataProvider,
            'responsive' => TRUE,
            'hover' => true,
            'floatHeader' => true,
           
            'panel' => [
                'before' => '',
                'type' => \kartik\grid\GridView::TYPE_INFO

            //'after'=>''
            ],
        ]);
    ?>
</div>

<?php
$script = <<< JS
$(function(){
    $("label[title='Show all data']").hide();
});        

JS;
$this->registerJs($script);
?>

