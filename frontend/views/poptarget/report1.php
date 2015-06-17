<?php

use yii\helpers\Html;
?>
<?php
$this->params['breadcrumbs'][] = ['label' => 'ประชาการกลุ่มเป้าหมาย', 'url' => ['poptarget/index']];
$this->params['breadcrumbs'][] = 'แยกตามกลุ่มอายุ';
?>

<div class='well'>
    <form method="POST">
        ปีงบประมาณ:
        <div class='row'>

            <div class='col-sm-3'>

                <?php
                $list_year = [
                    '2014' => '2557',
                    '2015' => '2558',
                    '2016' => '2559',
                    '2017' => '2560'];
                echo Html::dropDownList('selyear', $selyear, $list_year, [
                    'class' => 'form-control'
                ]);
                ?>
            </div>
            <div class='col-sm-3'>

                <button class='btn btn-danger'>ประมวลผล</button>
            </div>
        </div>


    </form>
</div>

<div class='panel panel-danger'>    
    <div class='panel-heading'>
    <div class='row'>
        
            หมายเหตุ   อายุนับจากวันเดือนปีเกิดถึงวันที่ 1 กรกฎาคม ของทุกปี และตัดข้อมูลประชากรหลังจากวันที่ 1 กรกฎาคมออก เพื่อไม่นับรวมเป็นเป้าของปีนั้น        
        </div>
    </div>
</div>

<a href="#" id="btn_sql">ชุดคำสั่ง</a>
<div id="sql" style="display: none"><?= '' ?></div>

<?php
if (isset($dataProvider)) {
    $dev = Html::a('คุณอุเทน จาดยางโทน', 'https://fb.com/tehnn', ['target' => '_blank']);


    $y = $selyear + 543;
    $y = substr($y, 2, 2);
    $py = $y - 1;

    echo yii\grid\GridView::widget([
//echo \kartik\grid\GridView::widget([
        'dataProvider' => $dataProvider,
        //'responsive' => TRUE,
        //'hover' => true,
        /* 'floatHeader' => true,
          'panel' => [
          'before' => '',
          'type' => \kartik\grid\GridView::TYPE_SUCCESS,
          'after' => 'โดย ' . $dev
          ], */
        'columns' => [
            [
                'attribute' => 'hoscode',
                'label' => 'รหัส'
            ],
            [
                'attribute' => 'hosname',
                'label' => 'สถานบริการ'
            ],
            [
                'attribute' => 'p_all',
                'header' => "ประชากรทั้งหมด<br>(คน)"
            ],
            [
                'attribute' => 'men',
                'header' => "ชาย<br>(คน)"
            ],
            [
                'attribute' => 'women',
                'header' => "หญิง<br>(คน)"
            ],
            [
                'attribute' => '<1y',
                'header' => "ต่ำกว่า 1 ปี<br>(คน)"
            ],
            [
                'attribute' => '1-5y',
                'header' => "1-5 ปี<br>(คน)"
            ],
            [
                'attribute' => '6-12y',
                'header' => "6-12 ปี<br>(คน)"
            ],
            [
                'attribute' => '13-59y',
                'header' => "13-59 ปี<br>(คน)"
            ],
            [
                'attribute' => '>=60y',
                'header' => "60 ปี ขึ้นไป<br>(คน)"
            ],
        ]
    ]);
}
?>

<?php
$script = <<< JS
$('#btn_sql').on('click', function(e) {
    
   $('#sql').toggle();
});
JS;
$this->registerJs($script);
?>



