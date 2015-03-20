<?php
$this->params['breadcrumbs'][] = 'รายงาน Individual ด้วย stimusoft';
///
?>

<?php


$rpt_name1= 'rpt1.mrt';
$route1 = "http://localhost:8080/dhdc/?report=$rpt_name1&" . http_build_query(['h' =>'03','date1'=>'2014-09-30','date2'=>date('Y-m-d')]);

$rpt_name2= 'newborn2500.mrt';
$route2 = "http://localhost:8080/dhdc/?report=$rpt_name2&" . http_build_query(['start'=>'2014-09-30','end'=>date('Y-m-d')]);


?>

<p>
<a href="<?=$route1?>" target="_blank">1)รายงานทดสอบ-1</a>
</p>
<p>
<a href="<?=$route2?>" target="_blank">2)รายงานทดสอบ-2</a>
</p>
<p>
<a href="<?=$route1?>" target="_blank">3)รายงานทดสอบ-3</a>
</p>
<p>
<a href="<?=$route1?>" target="_blank">4)รายงานทดสอบ-4</a>
</p>
