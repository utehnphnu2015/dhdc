<meta charset="UTF-8">
<h4>รายการไฟล์สำหรับ Update โครงสร้างฐานข้อมูล DHDC</h4>
<p>Download and execute !!!</p>
<ul>
<?php
$dir = './';
$files = scandir($dir);
sort($files);
foreach ($files as $file) {
	$p = pathinfo($file);
	$ext = isset($p['extension']) ? strtolower($p['extension']) : '';
	
    if ($file != '.' && $file != '..' && strtolower($ext)=='sql')  {
		 
        echo "<li><a href='$file' target='_blank'>".$file."</a></li>\r\n";
    }
}

?>
</ul>