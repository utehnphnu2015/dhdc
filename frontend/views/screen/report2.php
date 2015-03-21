<?php
use yii\helpers\Html;

$this->params['breadcrumbs'][] = ['label' => 'การคัดกรอง', 'url' => ['screen/index']];
$this->params['breadcrumbs'][] = 'ความครอบคลุมการตรวจคัดกรองมะเร็งปากมดลูกในสตรี 30-60 ปี';
$this->title="DHDC";
?>

<div class='well'>
    <form method="POST">
        ปีงบประมาณ:
        <div class='row'>

            <div class='col-sm-3'>
               
                <?php
                 $list_year =  [
                    '2014' => '2557',
                    '2015' => '2558',
                    '2016' => '2559',
                    '2017' => '2560'];
                 
                echo Html::dropDownList('selyear', $selyear, $list_year,[
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


<a href="#" id="btn_sql">ชุดคำสั่ง</a>
<div id="sql" style="display: none"><?= $sql ?></div>

    <?php
    if (isset($dataProvider)) {
        $dev = Html::a('คุณนครินทร์ เกตุวีระพงศ์', 'https://fb.com/nakharin.knott', ['target' => '_blank']);


        $y = $selyear + 543;
        $y = substr($y, 2, 2);
        $py = $y - 1;

        echo yii\grid\GridView::widget([
        //echo \kartik\grid\GridView::widget([
            'dataProvider' => $dataProvider,
            /*'responsive' => true,
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
                'attribute' => 'target',
                'header' => 'เป้าหมาย (คน)'
            ],
            [
                'attribute' => 'pt_all',
                'header' => 'ผลงานทั้งหมด (คน)'
            ],
            [
                'attribute' => 'pt_m10',
                'header' => 'ผลงาน<br>ตุลาคม (คน)'
            ],
            [
                'attribute' => 'pt_m11',
                'header' => 'ผลงาน<br>พฤศจิกายน (คน)'
            ],
            [
                'attribute' => 'pt_m12',
                'header' => 'ผลงาน<br>ธันวาคม (คน)'
            ],
            [
                'attribute' => 'pt_m01',
                'header' => 'ผลงาน<br>มกราคม (คน)'
            ],
            [
                'attribute' => 'pt_m02',
                'header' => 'ผลงาน<br>กุมภาพันธ์ (คน)'
            ],
            [
                'attribute' => 'pt_m03',
                'header' => 'ผลงาน<br>มีนาคม (คน)'
            ],
            [
                'attribute' => 'pt_m04',
                'header' => 'ผลงาน<br>เมษายน (คน)'
            ],
            [
                'attribute' => 'pt_m05',
                'header' => 'ผลงาน<br>พฤษภาคม (คน)'
            ],
            [
                'attribute' => 'pt_m06',
                'header' => 'ผลงาน<br>มิถุนายน (คน)'
            ],
            [
                'attribute' => 'pt_m07',
                'header' => 'ผลงาน<br>กรกฎาคม (คน)'
            ],
            [
                'attribute' => 'pt_m08',
                'header' => 'ผลงาน<br>สิงหาคม (คน)'
            ],
            [
                'attribute' => 'pt_m09',
                'header' => 'ผลงาน<br>กันยายน (คน)'
            ],
            ],
            
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



