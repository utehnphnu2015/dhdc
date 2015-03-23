<meta charset="UTF-8">
<h4>รายการไฟล์สำหรับ Update โครงสร้างฐานข้อมูล DHDC</h4>
<p>Download and execute !!!</p>
<ul>
<?php
if ($handle = opendir('.')) {
    while (false !== ($entry = readdir($handle))) {


        if ($entry != "." && $entry != "..") {
            $p = pathinfo($entry);

            $ext = isset($p['extension']) ? strtolower($p['extension']) : '';
            if ($ext == 'sql') {
                ?>
    <li><a href="<?= $entry ?>" target="_blank"><?= $entry ?></a></li>
                <?php
            }
        }
    }
    closedir($handle);
}
?>
</ul>