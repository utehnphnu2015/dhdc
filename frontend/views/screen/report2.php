<?php
$this->params['breadcrumbs'][] = ['label' => 'การคัดกรอง', 'url' => ['screen/index']];
$this->params['breadcrumbs'][] = 'ความครอบคลุมการตรวจคัดกรองมะเร็งปากมดลูกในสตรี 30-60 ปี ภายใน 5 ปี';
$this->title="DHDC";
?>


<a href="#" id="btn_sql">ชุดคำสั่ง</a>
<div id="sql" style="display: none"><?= $sql ?></div>
<?php
if (isset($dataProvider))
    $dev = \yii\helpers\Html::a('คุณศรศักดิ์ สีหะวงษ์', 'https://fb.com/sosplk', ['target' => '_blank']);
    
    
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
            'attribute' => 'result',
            'header' => 'ผลงาน(คน)'
        ],
        
        [
            'class' => '\kartik\grid\FormulaColumn',
            'header' => 'ร้อยละ',
            'value' => function ($model, $key, $index, $widget) {
                $p = compact('model', 'key', 'index');
                // เขียนสูตร
                $target=$widget->col(2, $p);
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

<?php
$script = <<< JS
$('#btn_sql').on('click', function(e) {
    
   $('#sql').toggle();
});
JS;
$this->registerJs($script);
?>



