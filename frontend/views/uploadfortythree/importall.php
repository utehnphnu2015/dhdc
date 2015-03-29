<h1>รายการไฟล์</h1>
<div class="alert alert-danger">
    <h3>ควรนำเข้าครั้งละไม่เกิน 5 ไฟล์ ขนาดไฟล์ไม่ควรเกิน 6 M</h3>
</div>
<table class="table table-bordered table-striped">
    <tbody>
        <?php
         

        $allfiles = glob("fortythree/*.{ZIP,zip,Zip}", GLOB_BRACE);


        foreach ($allfiles as $filename) {
            $f = explode('/', $filename);
            ?>
            <tr>
                <td><div id="<?= $f[1] ?>"><?= $f[1] ?></div></td>
                <td><button class="<?= $f[1] ?>" onclick="$(this).hide();
                        excec('<?= $f[1] ?>')">นำเข้า</button></td>
                <td></td>
            </tr>
            <?php
        }
        ?>
    </tbody>
</table>
<?php
$action_route = "index.php?r=ajax/import3";
if (strncasecmp(PHP_OS, 'WIN', 3) !== 0) {
    $action_route = "index.php?r=ajax/import4";
}
$date = date('Ymd');
$time = date('His');

$script = <<< JS
   
    function excec(fname) {      

        $.ajax({
            url: "$action_route",
            data: {fortythree: fname, upload_date: "$date", upload_time: "$time"},
            success: function (data) {
                //alert(data + ' สำเร็จ');
                window.location.reload();
            }
        });
    }
JS;

$this->registerJs($script, yii\web\View::POS_HEAD);
?>
