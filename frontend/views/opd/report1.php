<?php

use yii\helpers\Html;
?>
<?php
$this->params['breadcrumbs'][] = ['label' => 'บริการผู้ป่วยนอก', 'url' => ['opd/index']];
$this->params['breadcrumbs'][] = 'การมารับบริการผู้ป่วยนอก';
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
                    'label' => ''
                ],
                [
                    'attribute' => 'hosname',
                    'label' => 'สถานบริการ'
                ],
                [
                    'attribute' => 'oct',
                    'label' => "ตค" . $py . "(คน)"
                ],
                [
                    'attribute' => 'oct1',
                    'label' => "ตค" . $py . "(ครั้ง)"
                ],
                [
                    'attribute' => 'nov',
                    'label' => "พย" . $py . "(คน)"
                ],
                [
                    'attribute' => 'nov1',
                    'label' => "พย" . $py . "(ครั้ง)"
                ],
                [
                    'attribute' => 'dec',
                    'label' => "ธค" . $py . "(คน)"
                ],
                [
                    'attribute' => 'dec1',
                    'label' => "ธค" . $py . "(ครั้ง)"
                ],
                [
                    'attribute' => 'jan',
                    'label' => "มค" . $y . "(คน)"
                ],
                [
                    'attribute' => 'jan1',
                    'label' => "มค" . $y . "(ครั้ง)"
                ],
                [
                    'attribute' => 'feb',
                    'label' => "กพ" . $y . "(คน)"
                ],
                [
                    'attribute' => 'feb1',
                    'label' => "กพ" . $y . "(ครั้ง)"
                ],
                [
                    'attribute' => 'mar',
                    'label' => "มีค" . $y . "(คน)"
                ],
                [
                    'attribute' => 'mar1',
                    'label' => "มีค" . $y . "(ครั้ง)"
                ],
                [
                    'attribute' => 'apr',
                    'label' => "เมย" . $y . "(คน)"
                ],
                [
                    'attribute' => 'apr1',
                    'label' => "เมย" . $y . "(ครั้ง)"
                ],
                [
                    'attribute' => 'may',
                    'label' => "พค" . $y . "(คน)"
                ],
                [
                    'attribute' => 'may1',
                    'label' => "พค" . $y . "(ครั้ง)"
                ],
                [
                    'attribute' => 'jun',
                    'label' => "มิย" . $y . "(คน)"
                ],
                [
                    'attribute' => 'jun1',
                    'label' => "มิย" . $y . "(ครั้ง)"
                ],
                [
                    'attribute' => 'jul',
                    'label' => "กค" . $y . "(คน)"
                ],
                [
                    'attribute' => 'jul1',
                    'label' => "กค" . $y . "(ครั้ง)"
                ],
                [
                    'attribute' => 'aug',
                    'label' => "สค" . $y . "(คน)"
                ],
                [
                    'attribute' => 'aug1',
                    'label' => "สค" . $y . "(ครั้ง)"
                ],
                [
                    'attribute' => 'sep',
                    'label' => "กย" . $y . "(คน)"
                ],
                [
                    'attribute' => 'sep1',
                    'label' => "กย" . $y . "(ครั้ง)"
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



