<?php

use yii\helpers\Html;
use backend\models\Sysconfigmain;

/* @var $this yii\web\View */
$this->title = 'เกียวกับ';
$this->params['breadcrumbs'][] = $this->title;
$sys = Sysconfigmain::find()->one();
?>
<div class="site-about">
    <h1>ผู้ดูแลระบบ</h1>
    <p>- <?= $sys->note1 ?></p>
</div>
<hr>
<div class="site-about">
    <h3>ทีมพัฒนาโปรแกรม และรายงาน</h3>

    <p>- <?= Html::a('คุณอุเทน จาดยางโทน', 'https://fb.com/tehnn', ['target' => '_blank']) ?> (สสจ.พิษณุโลก) Project Manager </p>
    <p>- <?= Html::a('คุณสุพัฒนา ปิงเมือง', 'https://fb.com/kukks205', ['target' => '_blank']) ?> (รพสต.ผักตบ อ.หนองหาน จ.อุดรธานี) Co-Programmer</p>
    <p>- <?= Html::a('คุณสุจินต์ สุกกล้า', 'https://fb.com/jub.wifi', ['target' => '_blank']) ?> (รพท.ศรีสังวรณ์ สุโขทัย) Co-Programmer</p>
    <p>- <?= Html::a('คุณนครินทร์ เกตุวีระพงศ์', 'https://fb.com/nakharin.knott', ['target' => '_blank']) ?> (รพ.วัดโบสถ์ จ.พิษณุโลก) Co-Programmer</p>
    <p>- <?= Html::a('คุณศรศักดิ์ สีหะวงษ์', 'https://fb.com/sosplk', ['target' => '_blank']) ?> (สสจ.พิษณุโลก) Report Programmer & CUT Tool</p>
    <p>- <?= Html::a('คุณภศล สุริยะ', 'https://www.facebook.com/chondlatitsuriya', ['target' => '_blank']) ?> (รพ.ชาติตระการ จ.พิษณุโลก) Implementor & Custom-Report Programmer</p>
    <p>- <?= Html::a('คุณจิรชาย นาบุญมี', 'https://www.facebook.com/jodonpeng', ['target' => '_blank']) ?> (สสอ.ร้องกวาง จ.แพร่) Report Programmer</p>
    <p>- <?= Html::a('คุณเดชา สายบุญตั้ง', 'https://www.facebook.com/decha.saiboontung', ['target' => '_blank']) ?> (รพ.ด่านซ้าย จ.เลย) Tester</p>

</div>
<div>
    <?= Html::a('กลุ่ม Facebook DHDC', 'https://www.facebook.com/groups/1533692120236074/', ['target' => '_blank']) ?>
</div>

<div>
    <?= Html::a('Source Code', 'https://github.com/utehnphnu2015/', ['target' => '_blank']) ?>
</div>

