<?php
use yii\helpers\ArrayHelper;
?>

<h3>สร้างรายงาน</h3>
<?php
$route = Yii::$app->urlManager->createUrl('runquery/result');
?>
<form method="POST" action="<?=$route?>">
    <h4>ชื่อรายงาน</h4>
    <input type="text" class="form-control">
    
    <h4>คำสั่ง SQL</h4>
    <div class="well">กำหนดตัวแปรด้วย { }  เช่น  {date1},ไม่สามารถใช้คำสั่ง update delete empty truncate ได้</div>
        
    <textarea name="sql_code" id="sql_code" class="form-control"></textarea>
    <h4>เลือกกลุ่มรายงาน</h4>
    <select class="form-control">
        <option>แม่และเด็ก</option>
        <option>คัดกรอง</option>
        <option>ประชากร/กลุ่มเป้าหมาย</option>
    </select><br>
    <button class="btn btn-danger"><i class="glyphicon glyphicon-apple"></i> ทดสอบคำสั่ง</button>
    <button class="btn btn-primary" ><i class="glyphicon glyphicon-check"></i> ตกลง</button>  
    
</form>
