<?php
$this->params['breadcrumbs'][] = ['label' => 'การคัดกรอง', 'url' => ['screen/index']];
$this->params['breadcrumbs'][] = 'ประชาชนอายุ 35 ปีขึ้นไปได้รับการคัดกรองเบาหวาน-ความดันโลหิต';
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
    $dev = \yii\helpers\Html::a('คุณศรศักดิ์ สีหะวงษ์ ปรับปรุงเมื่อ:2015-02-17', 'https://fb.com/sosplk', ['target' => '_blank']);
    
    
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
            'header' => 'เป้าหมาย(คน)'
        ],
        [
            'attribute' => 'chronic',
            'header' => 'ผู้ป่วย(คน)'
        ],
        [
            'attribute' => 'result',
            'header' => 'ผลงาน(คน)'
        ],
        [
            'class' => '\kartik\grid\FormulaColumn',
            'header' => 'ร้อยละ',
            'value' => function ($model, $key, $index, $widget) {
                $p = compact('model', 'key', 'index');
                // เขียนสูตร
                $target=$widget->col(2, $p)-$widget->col(3, $p);
                if ($target > 0) {
                    $persent = $widget->col(4, $p) / $target * 100;
                    $persent = number_format($persent, 2);
                    return $persent;
                }
            }
        ]
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



