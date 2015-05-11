<?php
    require_once('condb.php');
    
    $username= $_GET['user'];
    $keyname = $_GET['regID'];
	$os = $_GET['os'];
	$phone = $_GET['phone'];
	$imei=$_GET['imei'];


    $dateadd = date('Y-m-d H:i:s');
    $sql = " replace INTO `user` (`username`, `keyname` ,`os`,`phone`,`imei`,`dateadd`) VALUES ('$username', '$keyname','$os','$phone','$imei','$dateadd') ";
    
    if(mysql_query($sql)){
        echo strtolower(trim("OK!!"));
    }else{
        echo "You already registed.";
    }
    
?>

