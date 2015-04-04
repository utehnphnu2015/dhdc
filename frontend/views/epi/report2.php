<?php

use yii\helpers\Html;
?>
<?php
$this->params['breadcrumbs'][] = ['label' => 'สร้างเสริมภูมิคุ้มกันโรค', 'url' => ['epi/index']];
$this->params['breadcrumbs'][] = 'ผลงานการรณรงค์ฉีดวัคซีน dTC (อายุ 20-50 ปี)';
?>

<a href="#" id="btn_sql">ชุดคำสั่ง</a>
<div id="sql" style="display: none"><?= $sql ?></div>
<?php
if (isset($dataProvider))
    $dev = Html::a('คุณนครินทร์ เกตุวีระพงศ์', 'https://fb.com/nakharin.knott', ['target' => '_blank']);


echo yii\grid\GridView::widget([
//echo \kartik\grid\GridView::widget([
    'dataProvider' => $dataProvider,
    /*'responsive' => TRUE,
    'hover' => true,
    'floatHeader' => true,
    'panel' => [
        'before' => '',
        'type' => \kartik\grid\GridView::TYPE_SUCCESS,
        'after' => 'โดย ' . $dev
    ], */
    'columns' => [
        ['class' => 'yii\grid\SerialColumn'],
        [
            'attribute' => 'hospcode',
            'header' => 'รหัส'
        ],
        [
            'attribute' => 'hospname',
            'label' => 'สถานบริการ'
            
        ],
        [
            'attribute' => 'dtc_all',
            'header' => 'ผลงานฉีด dTC<br>ทั้งหมด<br>(คน)'
        ],
        [
            'attribute' => 'intarget_inhos',
            'header' => 'ผลงานฉีด dTC<br>กลุ่มเป้าหมาย<br>ในสถานบริการ<br>(คน)'
        ],
        [
            'attribute' => 'outtarget_inhos',
            'header' => 'ผลงานฉีด dTC<br>นอกกลุ่มเป้าหมาย<br>ในสถานบริการ<br>(คน)'
        ],
        [
            'attribute' => 'intarget_outhos',
            'header' => 'ผลงานฉีด dTC<br>ในกลุ่มเป้าหมาย<br>นอกสถานบริการ<br>(คน)'
        ],
        [
            'attribute' => 'outtarget_outhos',
            'header' => 'ผลงานฉีด dTC<br>นอกกลุ่มเป้าหมาย<br>นอกสถานบริการ<br>(คน)'
        ],
        [
            'attribute' => 'intarget_thai',
            'header' => 'ผลงานฉีด dTC<br>ในกลุ่มเป้าหมาย<br>คนไทย<br>(คน)'
        ],
        [
            'attribute' => 'outtarget_thai',
            'header' => 'ผลงานฉีด dTC<br>นอกกลุ่มเป้าหมาย<br>คนไทย<br>(คน)'
        ],
        [
            'attribute' => 'intarget_foreign',
            'header' => 'ผลงานฉีด dTC<br>ในกลุ่มเป้าหมาย<br>คนต่างด้าว<br>(คน)'
        ],
        [
            'attribute' => 'outtarget_foreign',
            'header' => 'ผลงานฉีด dTC<br>นอกกลุ่มเป้าหมาย<br>คนต่างด้าว<br>(คน)'
        ],
        [
            'attribute' => 'intarget_inarea',
            'header' => 'ผลงานฉีด dTC<br>ในกลุ่มเป้าหมาย<br>ประชากรในเขต<br>(คน)'
        ],
        [
            'attribute' => 'outtarget_inarea',
            'header' => 'ผลงานฉีด dTC<br>นอกกลุ่มเป้าหมาย<br>ประชากรในเขต<br>(คน)'
        ],
        [
            'attribute' => 'intarget_outarea',
            'header' => 'ผลงานฉีด dTC<br>ในกลุ่มเป้าหมาย<br>ประชากรในเขต<br>(คน)'
        ],
        [
            'attribute' => 'outtarget_outarea',
            'header' => 'ผลงานฉีด dTC<br>นอกกลุ่มเป้าหมาย<br>ประชากรนอกเขต<br>(คน)'
        ],
        [
            'attribute' => 'intarget_foreign_inarea',
            'header' => 'ผลงานฉีด dTC<br>กลุ่มเป้าหมาย<br>ต่างด้าวนอกเขต<br>(คน)'
        ],
        [
            'attribute' => 'outtarget_foreign_inarea',
            'header' => 'ผลงานฉีด dTC<br>นอกกลุ่มเป้าหมาย<br>ต่างด้าวในเขต<br>(คน)'
        ],
        [
            'attribute' => 'intarget_foreign_outarea',
            'header' => 'ผลงานฉีด dTC<br>กลุ่มเป้าหมาย<br>ต่างด้าวนอกเขต<br>(คน)'
        ],
        [
            'attribute' => 'outtarget_foreign_outarea',
            'header' => 'ผลงานฉีด dTC<br>นอกกลุ่มเป้าหมาย<br>ต่างด้าวนอกเขต<br>(คน)'
        ],
    ]
]);
?>

<?php
$script = <<< JS

$(function(){
    $("label[title='Show all data']").hide();
});
        
$('#btn_sql').on('click', function(e) {
    
   $('#sql').toggle();
});
JS;
$this->registerJs($script);
?>



