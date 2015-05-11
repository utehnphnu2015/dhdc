<?php
    require_once('condb.php');
    
    $user= $_GET['user'];

	$sql = "delete from user where username='$user'";
	mysql_query($sql);

   
    
?>

