<?php
require_once('condb.php');
$user = $_GET['user'];
$pass = $_GET['pass'];

$sql = "select * from identity where user = '$user' and pass='$pass' limit 1";
$res = mysql_query($sql);
$num = mysql_num_rows($res);

if($num>0){
	echo trim("OK");
}
else{
	echo trim("NO");
}


?>