<?php
/* @var $this yii\web\View */

use yii\helpers\Html;
?>


<h3>หมวดรายงาน-ภูมิคุ้มกันโรค</h3>
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
    echo Html::a('1) เด็กอายุ 5 ปีได้รับวัคซีน DTP5', ['report1']);
    ?>
</p>

<p>
    <?php
    echo Html::a('2) ผลงานการรณรงค์ฉีดวัคซีน dTC (อายุ 20-50 ปี)', ['report2']);
    ?>
</p>


<div class="footerrow" style="padding-top: 60px">
    <div class="alert alert-success">
        หมายเหตุ : ระบบรายงานอยู่ระหว่างพัฒนาอย่างต่อเนื่อง
    </div>
</div>
