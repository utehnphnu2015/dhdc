<?php
/* @var $this yii\web\View */
?>
<h3>หมวดรายงาน-แม่และเด็ก</h3>
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
    <?php
    echo \yii\helpers\Html::a('1) หญิงคลอดได้รับการฝากครรภ์ครบ 5 ครั้งตามเกณฑ์', ['mom/report1']);
    ?>
</p>
<p>
    <?php
    echo \yii\helpers\Html::a('2) หญิงคลอดได้รับการฝากครรภ์ครั้งแรก ก่อน 12 สัปดาห์', ['mom/report2']);
    ?>
</p>

<p>
    <?php
    echo \yii\helpers\Html::a('3) ทารกแรกเกิดน้ำหนักน้อยกว่า 2500 กรัม', ['mom/report4']);
    ?>
</p>


<div class="footerrow" style="padding-top: 60px">
    <div class="alert alert-success">
        หมายเหตุ : ระบบรายงานอยู่ระหว่างพัฒนาอย่างต่อเนื่อง
    </div>
</div>
