<?php

use miloschuman\highcharts\Highcharts;
use yii\data\Pagination;

$this->title = "District HDC";
?>
<div style='display: none'>
    <?=
    Highcharts::widget([
        'scripts' => [
            'highcharts-more',
            'themes/grid',
            //'modules/exporting',
            'modules/solid-gauge',
        ]
    ]);
    ?>
</div>
<?php
$this->registerJsFile('./js/chart_dial.js');
$dir_web = Yii::$app->request->BaseUrl;
$this->registerJsFile($dir_web . '/js/chart-donut.js', ['depends' => [\yii\web\JqueryAsset::className()]]);
?>
<div class="container">

    <div class="row">

        <div class="col-lg-4" style="text-align: center;">
            <?php
            $t = 'person';
            $this->registerJs("
                        var obj_div=$('#$t');
                        gen_donut(obj_div,'แฟ้ม $t',98);
                    ");
            ?>           
            <div id="<?= $t ?>" style="width: 300px; height: 200px; float: left"></div>
        </div>

        <div class="col-lg-4" style="text-align: center;">
            <?php
            $this->registerJs("
                        var obj_div=$('#ch2');
                        gen_donut(obj_div,'แฟ้ม CHRONIC',60);
                    ");
            ?>           
            <div id="ch2" style="width: 300px; height: 200px; float: left"></div>
        </div>

        <div class="col-lg-4" style="text-align: center;">
            <?php
            $this->registerJs("
                        var obj_div=$('#ch3');
                        gen_donut(obj_div,'แฟ้ม SERVICE',90);
                    ");
            ?>           
            <div id="ch3" style="width: 300px; height: 200px; float: left"></div>
        </div>

    </div>
    <p></p>

    <div class="row">

        <div class="col-lg-4" style="text-align: center;cursor: pointer">
            <?php
            $this->registerJs("
                        var obj_div=$('#ch4');
                        gen_donut(obj_div,'แฟ้ม DIAGNOSIS',70);
                    ");
            ?>           
            <div id="ch4" style="width: 300px; height: 200px; float: left"></div>
        </div>

        <div class="col-lg-4" style="text-align: center;">
            <?php
            $this->registerJs("
                        var obj_div=$('#ch5');
                        gen_donut(obj_div,'แฟ้ม PROCEDURE',40);
                    ");
            ?>           
            <div id="ch5" style="width: 300px; height: 200px; float: left"></div>
        </div>

        <div class="col-lg-4" style="text-align: center;">
            <?php
            $this->registerJs("
                        var obj_div=$('#ch6');
                        gen_donut(obj_div,'แฟ้ม NCDSCREEN',80);
                    ");
            ?>           
            <div id="ch6" style="width: 300px; height: 200px; float: left"></div>
        </div>



    </div>


    <?php
    $pagination = new Pagination([
        'totalCount' => 43
        , 'pageSize' => 6
    ]);

    echo \yii\widgets\LinkPager::widget([
        'pagination' => $pagination,
    ]);
    ?>



</div>

