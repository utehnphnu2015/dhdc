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
        ทันตกรรมกลุ่มเด็กอายุต่ำกว่า 3 ปี
    </div>
    <div class="list-group">
        <?php
        echo \yii\helpers\Html::a('1) จำนวนเด็กอายุ 9 - 12 เดือนที่ได้รับการตรวจสุขภาพช่องปาก <span class="label label-success">update 05-04-58</span> ', ['dental/report6'], ['class' => 'list-group-item']);
        ?>
        <?php
        echo \yii\helpers\Html::a('2) จำนวนเด็กอายุ 18 เดือนที่ได้รับการตรวจสุขภาพช่องปาก <span class="label label-success">update 05-04-58</span> ', ['dental/report7'], ['class' => 'list-group-item']);
        ?> 
        <?php
        echo \yii\helpers\Html::a('3) จำนวนเด็กอายุ 18 เดือนที่ได้รับการแปรงฟันก่อนนอนจากผู้ปกครอง <span class="label label-success">update 05-04-58</span> ', ['dental/report8'], ['class' => 'list-group-item']);
        ?>  
        <?php
        echo \yii\helpers\Html::a('4) จำนวนเด็กอายุ 0 - 2 ปี ที่ได้รับการตรวจสุขภาพช่องปาก ทั้งหมด <span class="label label-success">update 05-04-58</span> ', ['dental/report9'], ['class' => 'list-group-item']);
        ?>       
        <?php
        echo \yii\helpers\Html::a('5) จำนวนเด็ก 0-2 ปีที่ได้รับบริการส่งเสริมทันตสุขภาพและทันตกรรมป้องกัน <span class="label label-success">update 07-04-58</span> ', ['dental/report10'], ['class' => 'list-group-item']);
        ?>  
        <?php
        echo \yii\helpers\Html::a('6) จำนวนผู้ปกครองเด็กอายุ 0-2 ปีได้รับคำแนะนำและฝึกแปรงฟันให้เด็ก <span class="label label-success">update 07-04-58</span> ', ['dental/report11'], ['class' => 'list-group-item']);
        ?>         
        <?php
        echo \yii\helpers\Html::a('7) ร้อยละเด็กต่ำกว่า 3 ปี ได้รับการตรวจสุขภาพช่องปาก <span class="label label-success">update 05-04-58</span> ', ['dental/report2'], ['class' => 'list-group-item']);
        ?>        
        <?php
        echo \yii\helpers\Html::a('8) ร้อยละเด็กต่ำกว่า 3 ปี ที่จำเป็นต้องได้รับการทาFluolideได้รับบริการทาFluolide <span class="label label-success">update 05-04-58</span> ', ['dental/report3'], ['class' => 'list-group-item']);
        ?>
        <?php
        echo \yii\helpers\Html::a('9) จำนวนเด็ก 3 - 5 ปีได้รับการตรวจสุขภาพช่องปาก <span class="label label-success">update 07-04-58</span> ', ['dental/report12'], ['class' => 'list-group-item']);
        ?>        
        <?php
        echo \yii\helpers\Html::a('10) จำนวนเด็ก 3-5 ปีได้รับบริการ ส่งเสริม ป้องกัน และรักษา <span class="label label-success">update 07-04-58</span> ', ['dental/report13'], ['class' => 'list-group-item']);
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
