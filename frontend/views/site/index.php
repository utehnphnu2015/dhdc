<?php

use miloschuman\highcharts\Highcharts;

$this->title = "District HDC";
?>
<div style='display: none'>
    <?=
    Highcharts::widget([
        'scripts' => [
            'highcharts-more',
            'themes/grid'
        //'modules/exporting',
        ]
    ]);
    ?>
</div>
<?php
$this->registerJsFile('./js/chart_dial.js');
?>
<div class="container">

    <div class="row">
        <div class="col-lg-4" style="text-align: center;">
            <?php
            $command = Yii::$app->db->createCommand("SELECT sum(target) FROM sys_chart_dial_1");
            $target = $command->queryScalar();
            
            $command = Yii::$app->db->createCommand("SELECT sum(chronic) FROM sys_chart_dial_1");
            $chronic = $command->queryScalar();
            
            $target = $target-$chronic;
            
            $command = Yii::$app->db->createCommand("SELECT sum(result) FROM sys_chart_dial_1");
            $result = $command->queryScalar();        

            $a=0.00;
            if($target>0){
                $a = $result/$target*100;
                $a = number_format($a,2);
            }
            $base = 90;
            $this->registerJs("
                        var obj_div=$('#ch1');
                        gen_dial(obj_div,$base,$a);
                    ");
            ?>
            <h4>ประชาชนอายุ 35 ปีขึ้นไปได้รับการคัดกรอง<br>เบาหวาน-ความดันโลหิต </h4>
            <div id="ch1"></div>
        </div>

        <div class="col-lg-4" style="text-align: center;">
            <?php
            $command = Yii::$app->db->createCommand("SELECT sum(target) FROM sys_chart_dial_2");
            $target = $command->queryScalar();
            
            $command = Yii::$app->db->createCommand("SELECT sum(result) FROM sys_chart_dial_2");
            $result = $command->queryScalar();  
            
            $a=0.00;
            if($target>0){
                $a = $result/$target*100;
                $a = number_format($a,2);
            }
             $base = 90;
            $this->registerJs("
                        var obj_div=$('#ch2');
                        gen_dial(obj_div,$base,$a);
                    ");
            ?>
            <h4>ผู้ป่วยเบาหวานได้รับการตรวจ HbA1c <br>และควบคุมน้ำตาลได้ดี </h4>
            <div id="ch2"></div>
        </div>

        <div class="col-lg-4" style="text-align: center;">
            <?php
            
            $command = Yii::$app->db->createCommand("SELECT sum(target) FROM sys_chart_dial_3");
            $target = $command->queryScalar();
            
            $command = Yii::$app->db->createCommand("SELECT sum(result) FROM sys_chart_dial_3");
            $result = $command->queryScalar();  
            
            $a=0.00;
            if($target>0){
                $a = $result/$target*100;
                $a = number_format($a,2);
            }
             $base = 90;
            
            $this->registerJs("
                        var obj_div=$('#ch3');
                        gen_dial(obj_div,$base,$a);
                    ");
            ?>
            <h4>ผู้ป่วยความดันโลหิตสูงควบคุม<br>ความดันโลหิตได้ดี</h4>
            <div id="ch3"></div>
        </div>
    </div>

    <div class="row">
        <div class="col-lg-4" style="text-align: center;">
            <?php
            
            $command = Yii::$app->db->createCommand("SELECT sum(target) FROM sys_chart_dial_4");
            $target = $command->queryScalar();
            
            $command = Yii::$app->db->createCommand("SELECT sum(result) FROM sys_chart_dial_4");
            $result = $command->queryScalar();  
            
            $a=0.00;
            if($target>0){
                $a = $result/$target*100;
                $a = number_format($a,2);
            }
             $base = 90;
            
            $this->registerJs("
                        var obj_div=$('#ch4');
                        gen_dial(obj_div,$base,$a);
                    ");
            ?>
            <h4>หญิงมีครรภ์ได้รับการฝากครรภ์ครบ <br>5 ครั้งตามเกณฑ์ </h4>
            <div id="ch4"></div>
        </div>

        <div class="col-lg-4" style="text-align: center;">
            <?php
            
            $command = Yii::$app->db->createCommand("SELECT sum(target) FROM sys_chart_dial_5");
            $target = $command->queryScalar();
            
            $command = Yii::$app->db->createCommand("SELECT sum(result) FROM sys_chart_dial_5");
            $result = $command->queryScalar();  
            
            $a=0.00;
            if($target>0){
                $a = $result/$target*100;
                $a = number_format($a,2);
            }
             $base = 85;
            
            $this->registerJs("
                        var obj_div=$('#ch5');
                        gen_dial(obj_div,$base,$a);
                    ");
            ?>
            <h4>หญิงมีครรภ์ได้รับการฝากครรภ์ครั้งแรก<br>ก่อน 12 สัปดาห์</h4>
            <div id="ch5"></div>
        </div>

        <div class="col-lg-4" style="text-align: center;">
            <?php
            
            $command = Yii::$app->db->createCommand("SELECT sum(target) FROM sys_chart_dial_6");
            $target = $command->queryScalar();
            
            $command = Yii::$app->db->createCommand("SELECT sum(result) FROM sys_chart_dial_6");
            $result = $command->queryScalar();  
            
            $a=0.00;
            if($target>0){
                $a = $result/$target*100;
                $a = number_format($a,2);
            }
             $base = 90;
             
            $this->registerJs("
                        var obj_div=$('#ch6');
                        gen_dial(obj_div,$base,$a);
                    ");
            ?>
            <h4><br>เด็กอายุ 5 ปีได้รับวัคซีน DTP5</h4>
            <div id="ch6"></div>
        </div>
    </div>


</div>

</div>
