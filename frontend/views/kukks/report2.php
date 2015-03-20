<?php
$this->params['breadcrumbs'][] = ['label' => 'หมอประจำครอบครัว', 'url' => ['kukks/index']];
$this->params['breadcrumbs'][] = 'สัดส่วนบุคลากรสาธารณสุขต่อประชากร';
?>


<a href="#" id="btn_sql">ชุดคำสั่ง</a>
<div id="sql" style="display: none"><?= $sql ?></div>
<?php
if (isset($dataProvider))
    $dev = \yii\helpers\Html::a('คุณสุพัฒนา ปิงเมือง', 'https://fb.com/kukks205', ['target' => '_blank']);


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
        [
            'attribute' => 'hoscode',
            'label' => 'รหัสหน่วยงาน'
        ],
         [
            'attribute' => 'hosname',
            'label' => 'หน่วยงาน'
        ],
         [
            'attribute' => 'pop',
            'label' => 'ประชากร(คน)'
        ],
         [
            'attribute' => 'doctor',
            'label' => 'บุคลากรสาธารณสุข(คน)'
        ],
         [
            'attribute' => 'raio',
            'label' => 'สัดส่วน'
        ],
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



