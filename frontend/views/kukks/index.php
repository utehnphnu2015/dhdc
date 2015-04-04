<?php
/* @var $this yii\web\View */
?>
<h3>หมวดรายงาน :: ทีมหมอครอบครัว (Family Care Team)</h3>
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
        ทีมหมอครอบครัว
    </div>
    <div class="panel-body">

        <p>
            <?php
            echo \yii\helpers\Html::a('1) สัดส่วนบุคลากรสาธารณสุขต่อประชากร ', ['kukks/report2']).' <span class="label label-success">update 04-04-58</span>';
            ?>
        </p>

        <p>
            <?php
            echo \yii\helpers\Html::a('2) จำนวน อสม.ต่อหลังคาเรือน', ['kukks/report3']).' <span class="label label-success">update 04-04-58</span>';
            ?>
        </p>
    </div>
    <div class="panel-heading">
        เยี่ยมบ้าน
    </div>
        <div class="panel-body">
        <p>
            <?php
            echo \yii\helpers\Html::a('1) ผู้ป่วยโรคเรื้อรังได้รับการเยี่ยมบ้าน', ['kukks/report1']).' <span class="label label-success">update 04-04-58</span>';
            ?>
        </p>


        <p>
            <?php
            echo \yii\helpers\Html::a('2) ผู้สูงอายุ60ปีขึ้นไปได้รับการเยี่ยมบ้าน', ['kukks/report4']).' <span class="label label-success">update 04-04-58</span>';
            ?>
        </p>
        <p>
            <?php
            echo \yii\helpers\Html::a('3) หญิงตั้งครรภ์ที่ได้รับการเยี่ยมบ้าน', ['kukks/report5']).' <span class="label label-success">update 04-04-58</span>';
            ?>
        </p>
    </div>

</div>





<div class="footerrow" style="padding-top: 60px">
    <div class="alert alert-success">
        หมายเหตุ : ระบบรายงานอยู่ระหว่างพัฒนาอย่างต่อเนื่อง
    </div>
</div>
