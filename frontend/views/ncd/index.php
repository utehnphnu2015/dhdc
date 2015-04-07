<?php
/* @var $this yii\web\View */
use yii\helpers\Html;
?>
<h3>หมวดรายงาน-โรคไม่ติดต่อ</h3>
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
    echo Html::a('1) Color chart ผู้ป่วยความดันโลหิต-HT(ทราบผลคอเลสเตอรอล)(ปรับ 20150217)', ['ncd/report1']);
    ?>
</p>
<p>
    <?php
    echo Html::a('2) Color chart ผู้ป่วยความดันโลหิต-HT(ไม่ทราบผลคอเลสเตอรอล)(ปรับ 20150217)', ['ncd/report2']);
    ?>
</p>
<p>
    <?php
    echo Html::a('3) Color chart ผู้ป่วยเบาหวาน-DM(ทราบผลคอเลสเตอรอล)(ปรับ 20150217)', ['ncd/report3']);
    ?>
</p>
<p>
    <?php
    echo Html::a('4) Color chart ผู้ป่วยเบาหวาน-DM(ไม่ทราบผลคอเลสเตอรอล)(ปรับ 20150217)', ['ncd/report4']);
    ?>
</p>
<p>
    <?php
    echo Html::a('5) ผู้ป่วยเบาหวานได้รับการตรวจ HbA1c และควบคุมน้ำตาลได้ดี (ปรับ 20150217)', ['ncd/report5']);
    ?>
</p>
<p>
    <?php
    echo Html::a('6) ผู้ป่วยความดันโลหิตสูงควบคุมความดันโลหิตได้ดี (ปรับ 20150217)', ['ncd/report6']);
    ?>
</p>
<p>
    <?php
    echo Html::a('7) ผู้ป่วยความดันที่มีภาวะแทรกซ้อนทางไต', ['ncd/report7']);
    ?>
</p>
<p>
    <?php
    echo Html::a('8) ผู้ป่วยความดันที่เป็นโรคเบาหวาน', ['ncd/report8']);
    ?>
</p>
<p>
    <?php
    echo Html::a('9) ผู้ป่วยความดันที่มารับบริการ', ['ncd/report9']);
    ?>
</p>
<p>
    <?php
    echo Html::a('10) ผู้ป่วยความดันที่ควบคุมความดันได้ดี', ['ncd/report10']);
    ?>
</p>



<div class="footerrow" style="padding-top: 60px">
    <div class="alert alert-success">
        หมายเหตุ : ระบบรายงานอยู่ระหว่างพัฒนาอย่างต่อเนื่อง
    </div>
</div>
