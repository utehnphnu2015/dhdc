<meta charset="UTF-8"/>
<?php

require_once('condb.php');

$sql = "select * from (SELECT  username,keyname FROM user  ORDER BY dateadd desc) t GROUP BY username";

$res = mysql_query($sql);

$registatoin_ids = array();
while ($row = mysql_fetch_array($res)) {
    $registatoin_ids[] = $row['keyname'];
}

$msg = 'ttttttt';
$send_msg = array("message" => $msg);

$url = 'https://android.googleapis.com/gcm/send';
$fields = array
    (
    'registration_ids' => $registatoin_ids,
    'data' => $send_msg
);
$headers = array
    (
    'Authorization: key=AIzaSyB7_KJZGLgrdqiuKoJGN1J7-svohJY5eiw',
    'Content-Type: application/json'
);
$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $url);
curl_setopt($ch, CURLOPT_POST, true);
curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($fields));
$result = curl_exec($ch);
curl_close($ch);
echo "$result";
?>

<hr>

<center>
<?php echo $msg;?>
    <br>
<a href="index.php">ย้อนกลับ</a>
</center>
