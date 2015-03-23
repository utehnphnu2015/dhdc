<?php
/* @var $this yii\web\View */
?>
<h3>หมวดรายงาน-ประชากร</h3>
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
    echo \yii\helpers\Html::a('1) ปิรามิดประชากร(จำนวนประชากรแยกกลุ่มอายุ)', ['pop/pyramid']);
    
    ?>
</p>

<p>
    <?php
    echo \yii\helpers\Html::a('2) จำนวนประชากรแยกตามประเภทการอยู่อาศัย', ['pop/checktype']);
    
    ?>
</p>

<p>
    <?php
    echo \yii\helpers\Html::a('3) ตรวจสอบ 13 หลัก', ['pop/checkcid']);
    
    ?>
</p>

<p>
    <?php
    echo \yii\helpers\Html::a('4) สิทธิการรักษาของประชากรในเขตพื้นที่รับผิดชอบ', ['pop/sit']);
    
    ?>
</p>



<div class="footerrow" style="padding-top: 60px">
    <div class="alert alert-success">
        หมายเหตุ : ระบบรายงานอยู่ระหว่างพัฒนาอย่างต่อเนื่อง
    </div>
</div>
