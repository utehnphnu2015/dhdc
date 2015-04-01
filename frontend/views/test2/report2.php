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

           
        </div>
    </form>
</div>
<a href="#" id="btn_sql">ชุดคำสั่ง</a>
<div id="sql" style="display: none"><?= '' ?></div>

    <?php
    if (isset($dataProvider)) {
        $dev = Html::a('คุณอุเทน จาดยางโทน', 'https://fb.com/tehnn', ['target' => '_blank']);



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



