<?php
/* @var $this yii\web\View */
?>
<h3>หมวดรายงาน-การคัดกรอง</h3>
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
    echo \yii\helpers\Html::a('1) ประชาชนอายุ 35 ปีขึ้นไปได้รับการคัดกรองเบาหวาน-ความดันโลหิต(ปรับ 20150217)', ['screen/report1']);
    ?>
</p>
<p>
    <?php
    echo \yii\helpers\Html::a('2) ความครอบคลุมการตรวจคัดกรองมะเร็งปากมดลูกในสตรี 30-60 ปี', ['screen/report2']);
    ?>
</p>
<p>
    <?php
    echo \yii\helpers\Html::a('3) ความครอบคลุมการตรวจคัดกรองมะเร็งเต้านมในสตรี 30-60 ปี', ['screen/report3']);
    ?>
</p>



<div class="footerrow" style="padding-top: 60px">
    <div class="alert alert-success">
        หมายเหตุ : ระบบรายงานอยู่ระหว่างพัฒนาอย่างต่อเนื่อง
    </div>
</div>
