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

        //echo yii\grid\GridView::widget([
        echo \kartik\grid\GridView::widget([
            'dataProvider' => $dataProvider,
            'responsive' => true,
            'hover' => true,
             'floatHeader' => true,
              'panel' => [
              'before' => '',
              'type' => \kartik\grid\GridView::TYPE_SUCCESS,
              'after' => 'โดย ' . $dev
              ], 
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],
            [
                'attribute' => 'hospcode',
                'header' => 'รหัส'
            ],
            [
                'attribute' => 'hospname',
                'label' => 'สถานบริการ',
                'format' => 'raw',
                'value'=>function($model){
                    return Html::a(Html::encode($model['hospname']), ['screen/indivreport2','hospcode'=>$model['hospcode']]);
                
                    
                }
            ],
            [
                'attribute' => 'percentage',
                'header' => 'ครอบคลุม<br>(ร้อยละ)'
            ],
            [
                'attribute' => 'target',
                'header' => 'เป้าหมาย<br>(คน)'
            ],
            [
                'attribute' => 'pt_all',
                'header' => 'ผลงาน<br>ทั้งหมด<br>(คน)'
            ],
            [
                'attribute' => 'pt_m10',
                'header' => 'ผลงาน<br>ต.ค.<br>(คน)'
            ],
            [
                'attribute' => 'pt_m11',
                'header' => 'ผลงาน<br>พ.ย.<br>(คน)'
            ],
            [
                'attribute' => 'pt_m12',
                'header' => 'ผลงาน<br>ธ.ค.<br>(คน)'
            ],
            [
                'attribute' => 'pt_m01',
                'header' => 'ผลงาน<br>ม.ค.<br>(คน)'
            ],
            [
                'attribute' => 'pt_m02',
                'header' => 'ผลงาน<br>ก.พ.<br>(คน)'
            ],
            [
                'attribute' => 'pt_m03',
                'header' => 'ผลงาน<br>มี.ค.<br>(คน)'
            ],
            [
                'attribute' => 'pt_m04',
                'header' => 'ผลงาน<br>เม.ย.<br>(คน)'
            ],
            [
                'attribute' => 'pt_m05',
                'header' => 'ผลงาน<br>พ.ค.<br>(คน)'
            ],
            [
                'attribute' => 'pt_m06',
                'header' => 'ผลงาน<br>มิ.ย.<br>(คน)'
            ],
            [
                'attribute' => 'pt_m07',
                'header' => 'ผลงาน<br>ก.ค.<br>(คน)'
            ],
            [
                'attribute' => 'pt_m08',
                'header' => 'ผลงาน<br>ส.ค.<br>(คน)'
            ],
            [
                'attribute' => 'pt_m09',
                'header' => 'ผลงาน<br>ก.ย.<br>(คน)'
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



