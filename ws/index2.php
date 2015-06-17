<!doctype html>
<html>
    <head>
        <meta charset="UTF-8">
        <style>
            #lb {display:block;}
            #msg { display:block;}
        </style>
    </head>
    <body>
    <center>
        <?php
        if (!empty($_POST[msg])) {


           require_once('condb.php');

            $sql = "select * from (SELECT  username,keyname FROM user where keyname !=''  ORDER BY dateadd desc) t GROUP BY username";

            $res = mysql_query($sql);

            $registatoin_ids = array();
            while ($row = mysql_fetch_array($res)) {
                $registatoin_ids[] = $row['keyname'];
            }

            $msg = $_POST['msg'];
            $send_msg = array("message" => $msg,"id"=>"1056522645012");

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

            echo $result;
            echo "<hr>";
            echo $_POST[msg];
            echo "<hr>";
        }
        ?>
    </center>
    <form  method="POST">
        <div align="center">
            <label id ="lb" for="msg">ข้อความ: </label>
            <textarea id="msg" name="msg" cols="30" rows="5"></textarea>
            <br>   
            <input type="submit"  value="ส่งข้อความ" >
        </div>

    </form>
</body>
</html>

