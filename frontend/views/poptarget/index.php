<?php
/* @var $this yii\web\View 
  use yii\helpers\Html; */
?>
<h3>หมวดประชากรกลุ่มเป้าหมาย </h3>

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
        สรุปจำนวนประชากรกลุ่มเป้าหมาย
    </div>
    <div class="list-group">

        <?php
        echo \yii\helpers\Html::a('1) จำนวนประชากรเป้าหมายแยกตามกลุ่มอายุ  <span class="label label-success">update 17-06-58</span> ', ['poptarget/report1'], ['class' => 'list-group-item']);
        ?>
        <?php
        echo \yii\helpers\Html::a('2) จำนวนประชากรแยกตามกลุ่มโรค  <span class="label label-success">กำลังพัฒนา</span> ', ['poptarget/index'], ['class' => 'list-group-item']);
        ?>  
                
    </div>
    

    
</div>


<div class="footerrow" style="padding-top: 60px">
    <div class="alert alert-success">
        หมายเหตุ : ระบบรายงานอยู่ระหว่างพัฒนาอย่างต่อเนื่อง
    </div>
</div>
