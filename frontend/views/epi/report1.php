<?php

use yii\helpers\Html;
?>
<?php
$this->params['breadcrumbs'][] = ['label' => 'สร้างเสริมภูมิคุ้มกันโรค', 'url' => ['epi/index']];
$this->params['breadcrumbs'][] = 'เด็กอายุ 5 ปีได้รับวัคซีน DTP5';
?>

<div class='well'>
    <form method="POST">
        เกิดระหว่าง:
        <?php
        echo yii\jui\DatePicker::widget([
            'name' => 'date1',
            'value' => $date1,
            'language' => 'th',
            'dateFormat' => 'yyyy-MM-dd',
            'clientOptions' => [
                'changeMonth' => true,
                'changeYear' => true,
            ]
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
    $dev = Html::a('คุณศรศักดิ์ สีหะวงษ์', 'https://fb.com/sosplk', ['target' => '_blank']);


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
            'attribute' => 'hospcode',
            'label' => 'รหัสสถานบริการ'
        ],
                [
            'attribute' => 'hospname',
            'label' => 'สถานบริการ',
            'format' => 'raw',
            'value' => function($model) use($date1,$date2) {
                return Html::a(Html::encode($model['hospname']), [
                            'epi/indiv-report-dtp5',
                            'hospcode' => $model['hospcode'],
                            'date1' => $date1,
                            'date2' => $date2
                ]);
            }// end value
                ],
                [
                    'attribute' => 'target',
                    'label' => 'เป้าหมาย(คน)'
                ],
                [
                    'attribute' => 'result',
                    'label' => 'ผลงาน(คน)'
                ],
                [
                    'class' => '\kartik\grid\FormulaColumn',
                    'header' => 'ร้อยละ',
                    'value' => function ($model, $key, $index, $widget) {
                        $p = compact('model', 'key', 'index');
                        // เขียนสูตร
                        if ($widget->col(2, $p) > 0) {
                            $persent = $widget->col(3, $p) / $widget->col(2, $p) * 100;
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



