<div class="alert alert-warning">
    <h1>รายการไฟล์ที่นำเข้าไม่ได้</h1>
    <h3>*โปรดตรวจสอบที่ frontend/web/fortythree และทำการลบออก</h3>
</div>
<div class="well">
    <table class="table table-bordered table-condensed table-striped table-hover">
        <th>รายการ</th><th>ประเภท</th>
        <?php
        $frontend = $dirname = Yii::getAlias('@frontend');

        $dirname = "$frontend/web/fortythree";

        $dir = opendir($dirname);
        while (($file = readdir($dir)) !== false) {
            if ($file !== "." && $file !== "..") {

                $p = pathinfo($file);

                if (!isset($p['extension'])) {
                    echo "<tr><td>$file</td><td>Folder</td></tr>";
                } else {
                    echo "<tr><td>$file</td><td>File</td></tr>";
                }
            }
        }

        closedir($dir);
        ?>
    </table>
</div>
<br>
<br>
<br>


