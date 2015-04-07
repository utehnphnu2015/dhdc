<?php
use miloschuman\highcharts\Highcharts;
use yii\helpers\Html;

$this->params['breadcrumbs'][] = ['label' => 'โรคไม่ติดต่อ', 'url' => ['ncd/index']];
$this->params['breadcrumbs'][] = 'ผู้ป่วยความดันที่มีภาวะแทรกซ้อนทางไต';
?>

<div class='well'>
    <form method="POST">
        ระหว่าง:
        <?php
        echo yii\jui\DatePicker::widget([
            'name' => 'date1',
            'value' => $date1,
            'language' => 'th',
            'dateFormat' => 'yyyy-MM-dd',
            'clientOptions' => [
                'changeMonth' => true,
                'changeYear' => true,
            ],
        ]);
        ?>
        ถึง:
        <?php
        echo yii\jui\DatePicker::widget([
            'name' => 'date2',
            'value' => $date2,
            'language' => 'th',
            'dateFormat' => 'yyyy-MM-dd',
            'clientOptions' => [
                'changeMonth' => true,
                'changeYear' => true,
            ]
        ]);
        ?>
        <button class='btn btn-danger'>ประมวลผล</button>
    </form>
</div>
<a href="#" id="btn_sql">ชุดคำสั่ง</a>
<div id="sql" style="display: none"><?= $sql ?></div>
<?php
if (isset($dataProvider))
    $dev = \yii\helpers\Html::a('DHDC', 'https://www.facebook.com/jub.wifi', ['target' => '_blank']);


//echo yii\grid\GridView::widget([
echo \kartik\grid\GridView::widget([
    'dataProvider' => $dataProvider,
    'responsive' => TRUE,
    'hover' => true,
    'floatHeader' => true,
    'panel' => [
        'before' => '',
        'type' => \kartik\grid\GridView::TYPE_SUCCESS,
        'after' => 'โดย ' . $dev
    ],
    'columns' => [
        'hospcode',
        'hospname',
        [
            'attribute' => 'target',
            'header' => 'ผู้ป่วยความดัน(คน)'
        ],
        [
            'attribute' => 'result',
            'header' => 'ผู้ป่วยความดันที่มีภาวะแทรกซ้อนทางไต(คน)'
        ],
        [
            'class' => '\kartik\grid\FormulaColumn',
            'header' => 'ร้อยละ',
            'value' => function ($model, $key, $index, $widget) {
                $p = compact('model', 'key', 'index');
                // เขียนสูตร
                $target = $widget->col(2, $p);
                if ($target > 0) {
                    $persent = $widget->col(3, $p) / $target * 100;
                    $persent = number_format($persent, 2);
                    return $persent;
                }
            }
        ]
    ]
]);
?>        
<div class="col-md-12">
        <div class="panel panel-warning">
            <div class="panel-heading">
                <h3 class="panel-title"><i class="glyphicon glyphicon-signal"></i> ผู้ป่วยความดันที่มีภาวะแทรกซ้อนทางไต</h3>
            </div>
            <div class="panel-body">
<?php
//print_r($persent1);
echo Highcharts::widget([
    'options' => [
        'chart'=>[
            'type' => 'column'
        ],
        'title' => ['text' => 'ผู้ป่วยความดันที่มีภาวะแทรกซ้อนทางไต'],
        'xAxis' => [
            'categories' => $hospname
        ],
        'yAxis' => [
            'title' => ['text' => 'จำนวน(ร้อยละ)']
        ],
        'series' => [
            [
                'name' => 'ร้อยละ',
                'data' => $persent1,
            ],
        ]
    ],
]);
?>
            </div>
        </div>
</div>
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



