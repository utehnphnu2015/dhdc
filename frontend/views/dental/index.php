<?php
/* @var $this yii\web\View 
  use yii\helpers\Html; */
?>
<h3>หมวดรายงานทันตกรรม </h3>

<div class="alert alert-warning">
    <?php
    $model = frontend\models\SysEventLog::find()->orderBy('id DESC')->one();
    $last_process = '';
    if ($model->end_at != 'wait')
        $last_process = date_format(date_create($model->end_at), 'Y-m-d H:i:s');
    ?>
    ประมวลผล <?= $last_process ?>
</div>


<div class="panel panel-success">
    <div class="panel-heading">
        ทันตกรรมกลุ่มหญิงตั้งครรภ์
    </div>
    <div class="list-group">

        <?php
        echo \yii\helpers\Html::a('1) จำนวนหญิงตั้งครรภ์ได้รับการตรวจสุขภาพช่องปาก  <span class="label label-success">update 05-04-58</span> ', ['dental/report1'], ['class' => 'list-group-item']);
        ?>
        <?php
        echo \yii\helpers\Html::a('2) จำนวนหญิงตั้งครรภ์ที่มีปัญหาสุขภาพช่องปาก  <span class="label label-success">update 05-04-58</span> ', ['dental/report4'], ['class' => 'list-group-item']);
        ?>  
        <?php
        echo \yii\helpers\Html::a('3) จำนวนหญิงตั้งครรภ์ที่ได้รับบริการส่งเสริมป้องกันและรักษา  <span class="label label-success">update 05-04-58</span> ', ['dental/report5'], ['class' => 'list-group-item']);
        ?>         
    </div>
    <div class="panel-heading">
        ทันตกรรมในเด็กต่ำกว่า 1 ปี
    </div> 
    <div class="panel-heading">
        ทันตกรรมกลุ่มเด็กอายุต่ำกว่า 3 ปี
    </div>
    <div class="list-group">

        <?php
        echo \yii\helpers\Html::a('1) ร้อยละเด็กต่ำกว่า 3 ปี ได้รับการตรวจสุขภาพช่องปาก <span class="label label-success">update 05-04-58</span> ', ['dental/report2'], ['class' => 'list-group-item']);
        ?>
        <?php
        echo \yii\helpers\Html::a('2) ร้อยละเด็กต่ำกว่า 3 ปี ที่จำเป็นต้องได้รับการทาFluolideได้รับบริการทาFluolide <span class="label label-success">update 05-04-58</span> ', ['dental/report3'], ['class' => 'list-group-item']);
        ?>
    </div>

    <div class="panel-heading">
        ทันตกรรมกลุ่มเด็กอายุ 3 - 5 ปี
    </div>
    <div class="list-group">
         <?php
        echo \yii\helpers\Html::a('1) ร้อยละเด็ก 3 - 5 ปี ได้รับการตรวจสุขภาพช่องปาก <span class="label label-success">update 05-04-58</span> ', ['dental/report2'], ['class' => 'list-group-item']);
        ?>       
    </div>
    <div class="panel-heading">
        ทันตกรรมเด็กนักเรียนระดับชั้นประถม 1 - 6
    </div>

    <div class="panel-heading">
        ทันตกรรมในผู้สูงอายุ
    </div>

    <div class="panel-heading">
        ทันตกรรมในผู้ป่วยโรคเรื้อรัง
    </div>    
</div>


<div class="footerrow" style="padding-top: 60px">
    <div class="alert alert-success">
        หมายเหตุ : ระบบรายงานอยู่ระหว่างพัฒนาอย่างต่อเนื่อง
    </div>
</div>
