<?php
/* @var $this yii\web\View */
?>
<h3>หมวดรายงาน-ทีมหมอครอบครัว</h3>
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
    echo \yii\helpers\Html::a('1) ร้อยละผู้ป่วยโรคเรื้อรังได้รับการเยี่ยมบ้าน', ['kukks/report1']);
    ?>
</p>

<p>
    <?php
    echo \yii\helpers\Html::a('2) สัดส่วนบุคลากรสาธารณสุขต่อประชากร', ['kukks/report2']);
    ?>
</p>

<p>
    <?php
    echo \yii\helpers\Html::a('3) จำนวน อสม.ต่อหลังคาเรือน', ['kukks/report3']);
    ?>
</p>

<p>
    <?php
    echo \yii\helpers\Html::a('4) ผู้สูงอายุ60ปีขึ้นไปได้รับการเยี่ยมบ้าน', ['kukks/report4']);
    ?>
</p>
<p>
    <?php
    echo \yii\helpers\Html::a('5) หญิงตั้งครรภ์ที่ได้รับการเยี่ยมบ้าน', ['kukks/report5']);
    ?>
</p>

<div class="footerrow" style="padding-top: 60px">
    <div class="alert alert-success">
        หมายเหตุ : ระบบรายงานอยู่ระหว่างพัฒนาอย่างต่อเนื่อง
    </div>
</div>
