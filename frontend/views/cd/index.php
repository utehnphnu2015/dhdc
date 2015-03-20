<?php
/* @var $this yii\web\View */
?>
<h3>หมวดรายงาน-โรคติดต่อ</h3>
<div class="alert alert-warning">
    <?php
    $model = frontend\models\SysEventLog::find()->orderBy('id DESC')->one();
    $last_process = '';
    if ($model->end_at != 'wait')
        $last_process = date_format(date_create($model->end_at), 'Y-m-d H:i:s');
    ?>
    ประมวลผล <?= $last_process ?>
</div>

<p>
<div class="alert alert-danger">อยู่ระหว่างดำเนินการ...</div>
</p>
