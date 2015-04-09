
<?php
/* @var $this yii\web\View */

//$js_url = Yii::getAlias('@web');
//$this->registerJsFile($js_url."/js/bootbox.min.js");


$this->registerCss(".btn-xlarge {
        padding: 18px 28px;
        font-size: 22px; //change this to your desired size
        line-height: normal;
        -webkit-border-radius: 0px;
        -moz-border-radius: 0px;
        border-radius: 0px;
    }");

$this->title = 'DHDC Backend';
?>
<div class="site-index container">

    <div class="well">        
        <h1>ระบบ District HDC BACK-END</h1>
        <div class="alert alert-success">
            <div id="version_current">
                <?php
                $ver = file_get_contents(Yii::getAlias('@version/version.txt'));
                $ver_db = \backend\models\SysVersion::find()->one();
                ?>
                [Your WebApps]=><?=$ver?><br>[Your Database]=><?=$ver_db->version?>
            </div>
            <font color="yellow"><div id="version_new">Checking new version ...</div></font>
            <div class="row">
                <div class="col-sm-3">
                    <form action="../../update/chk_version.php" method="POST" target="_blank">
                        <input type="hidden" name="isadmin" value="<?= md5('utehn') ?>">
                        <button class="btn btn-material-blue-300">
                            1) <i class="glyphicon glyphicon-arrow-up"></i> update web
                        </button>
                    </form>
                </div>
                <div class="col-sm-3">
                    <?php
                    $path = Yii::getAlias('@databases');
                    ?>
                    <a class="btn btn-material-yellow" href="../../databases/" target="_blank">
                        2) <i class="glyphicon glyphicon-arrow-up"></i> update db
                    </a>
                </div>
            </div>

        </div>
    </div>
    <center> 
        <div id="res" style="display: none">
            <img src="images/busy.gif">
        </div>
    </center>
    <div class="well">
        <div class="row">
            <div class="col-sm-4">
                <?php
                $route = \Yii::$app->urlManager->createUrl('sysconfigmain/index');
                ?>
                <a class="btn btn-success btn-xlarge" id="btn_1" href="<?= $route ?>"> 
                    <i class="glyphicon glyphicon-cog"></i>  ตั้งค่าอำเภอ   
                </a>

            </div>

            <div class="col-sm-4">

                <a class="btn btn-info btn-xlarge" id="btn_count_all" href="#"> 
                    <i class="glyphicon glyphicon-circle-arrow-up"></i> นับจำนวนแฟ้ม
                </a>
            </div>

            <div class="col-sm-4">

                <button class="btn btn-danger btn-xlarge" id="btn_process_report"> 
                    <i class="glyphicon glyphicon-refresh"></i> ประมวลผลรายงาน
                </button>


            </div>
        </div>
        <br>
        <div class="row">

            <div class="col-sm-4">
                <?php
                $route = Yii::$app->urlManager->createUrl('user/index');
                ?>
                <a class="btn btn-primary btn-xlarge" href="<?= $route ?>"> 
                    <i class="glyphicon glyphicon-user"></i> จัดการผู้ใช้   
                </a>

            </div>



            <div class="col-sm-4">
                <?php
                $route = Yii::$app->urlManager->createUrl('execute/index');
                ?>
                <a class="btn btn-material-red-300 btn-xlarge" href="<?= $route ?>"> 
                    <i class="glyphicon glyphicon-ok"></i> ตรวจสอบ Process
                </a>
            </div>
            <div class="col-sm-4">
                <?php
                $route = \Yii::$app->urlManager->createUrl('syssettime/index');
                ?>
                <a class="btn btn-success btn-xlarge" id="btn_set_process" href="<?= $route ?>"> 
                    <i class="glyphicon glyphicon-time"></i> ตั้งเวลาประมวลผล
                </a>
            </div>
        </div>
        <br>
        <div class="row">
            <div class="col-sm-4">
                <?php
                $onoff = \frontend\models\SysOnoffUpload::findOne(1);
                $route_on = Yii::$app->urlManager->createUrl('onoff/on');
                $route_off = Yii::$app->urlManager->createUrl('onoff/off');
                if ($onoff->status === 'on'):
                    ?>
                    <a class="btn btn-danger btn-xlarge" href="<?= $route_off ?>">
                        <i class="glyphicon glyphicon-folder-open"></i> ปิด Upload
                    </a>
                <?php else: ?>
                    <a class="btn btn-primary btn-xlarge" href="<?= $route_on ?>">
                        <i class="glyphicon glyphicon-folder-open"></i> เปิด Upload
                    </a>
                <?php endif; ?>
            </div>


            <div class="col-sm-4">
                <?php
                $onoff = \frontend\models\SysOnoffSql::findOne(1);
                $route_on = Yii::$app->urlManager->createUrl('onoff/onsql');
                $route_off = Yii::$app->urlManager->createUrl('onoff/offsql');
                if ($onoff->status === 'on'):
                    ?>
                    <a class="btn btn-danger btn-xlarge" href="<?= $route_off ?>">
                        <i class="glyphicon glyphicon-remove-sign"></i> ปิดใช้งาน SQL
                    </a>
                <?php else: ?>
                    <a class="btn btn-primary btn-xlarge" href="<?= $route_on ?>">
                        <i class="glyphicon glyphicon-refresh"></i> เปิดใช้งาน SQL
                    </a>
                <?php endif; ?>
            </div>

            <div class="col-sm-4">
                <?php
                $route = Yii::$app->urlManager->createUrl('customreport/index');
                ?>
                <a class="btn btn-primary btn-xlarge" href="#"> 
                    <i class="glyphicon glyphicon-list-alt"></i> Custom Report  
                </a>

            </div>

        </div>
        <br>
        <div class="row">

            <div class="col-sm-4">
                <?php
                $route = Yii::$app->urlManager->createUrl('person/index');
                ?>
                <a class="btn btn-primary btn-xlarge" href="<?= $route ?>"> 
                    <i class="glyphicon glyphicon-list-alt"></i> ประชากร  
                </a>

            </div>
            <div class="col-sm-4">
                <?php
                //$route = Yii::$app->urlManager->createUrl(['site/checkfile','param'=>'value']);
                $route = yii\helpers\Url::to(['site/checkfile','param'=>'value']);
                ?>
                <a class="btn btn-material-lime-A100 btn-xlarge" href="<?= $route ?>"> 
                    <i class="glyphicon glyphicon-folder-open"></i> ไฟล์นำเข้าไม่ได้  
                </a>

            </div>
            
         

        </div>


    </div>


</div>


<?php
$route_chk_update = Yii::$app->urlManager->createUrl('update/checkver');
$route_process_report = Yii::$app->urlManager->createUrl('execute/processreport');
$route_file_count = Yii::$app->urlManager->createUrl('execute/filecount');
$route_indiv_exec = yii\helpers\Url::to(['indiv/exec','selyear'=>'2015']);



$script1 = <<< JS
        
 setTimeout(function() {
        
        $.ajax({
       url: "$route_chk_update",       
       success: function(data) { 
           data = '[New Version]=>'+data;
            $('#version_new').html(data);
       }
    });
      
}, 5000);
       
  $(function () {
    
 });
        
 $('#btn_process_report').on('click', function () {
          $('#res').toggle();   
    $.ajax({
       url: "$route_process_report",       
       success: function(data) {
           $('#res').toggle();               
            alert(data+' สำเร็จ'); 
       }
    });
 });
        

        
$('#btn_count_all').on('click', function(e) {                
    
    $('#res').toggle();          
    $.ajax({
       url: "$route_file_count",       
       success: function(data) {
            $('#res').toggle();               
            alert(data+' สำเร็จ');            
       }
    });
});
        
        $('#btn_indiv').on('click', function(e) {                
    
    $('#res').toggle();          
    $.ajax({
       url: "$route_indiv_exec",       
       success: function(data) {
            $('#res').toggle();               
            alert(data+' สำเร็จ');            
       }
    });
});
        
        
JS;

$this->registerJs($script1);
?>
