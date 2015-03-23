<?php
$zip = new \ZipArchive();
$dir = getcwd();
if ($zip->open("./update.zip") === TRUE) {
    $zip->extractTo("../../");
    $zip->close();
}
unlink("./update.zip");