<?php
use miloschuman\highcharts\Highcharts;
?>
<div style="display: none">
    <?=
    Highcharts::widget([
        'scripts' => [
            'highcharts-more', // enables supplementary chart types (gauge, arearange, columnrange, etc.)
            //'modules/exporting', // adds Exporting button/menu to chart
            'themes/grid',       // applies global 'grid' theme to all charts
            'highcharts-3d',
            'modules/drilldown'
        ]
    ]);
    ?>
</div>
<div id="container"></div>
<?php
$sql = "SELECT h.hoscode,h.hosname
,(select COUNT(DISTINCT p.HOSPCODE,p.PID) from person p where p.HOSPCODE = h.hoscode ) as total
 from chospital_amp h";
$rawData = Yii::$app->db->createCommand($sql)->queryAll();

$main_data=[];
foreach ($rawData as $data) {   
    $main_data[] = [ 'name' => $data['hosname'], 'y' => $data['total']*1, 'drilldown' => $data['hoscode']];    
}
$main = json_encode($main_data);

$sql = "SELECT h.hoscode,h.hosname
,(select COUNT(DISTINCT p.HOSPCODE,p.PID) from person p 
where p.HOSPCODE = h.hoscode and p.TYPEAREA=1) as type1
,(select COUNT(DISTINCT p.HOSPCODE,p.PID) from person p 
where p.HOSPCODE = h.hoscode and p.TYPEAREA=2) as type2
,(select COUNT(DISTINCT p.HOSPCODE,p.PID) from person p 
where p.HOSPCODE = h.hoscode and p.TYPEAREA=3) as type3
,(select COUNT(DISTINCT p.HOSPCODE,p.PID) from person p 
where p.HOSPCODE = h.hoscode and p.TYPEAREA=4) as type4
 from chospital_amp h";

$rawData = Yii::$app->db->createCommand($sql)->queryAll();

$sub_data=[];
foreach ($rawData as $data) {
   
    $sub_data[] = [
    'id' => $data['hoscode'],
    'name' => $data['hosname'],
    'data' => [['type1',$data['type1']*1],['type2', $data['type2']*1],['type3',$data['type3']*1],['type4',$data['type4']*1]]
];
    
}

$sub = json_encode($sub_data);

$this->registerJs("$(function () {

    $('#container').highcharts({
        chart: {
            type: 'column'
        },
        title: {
            text: 'แผนภูมิแท่งเปรียบเทียบประชากร'
        },
        xAxis: {
            type: 'category'
        },
        yAxis: {
            title: {
                text: '<b>คน</b>'
            },
        },

        legend: {
            enabled: true
        },

        plotOptions: {
            series: {
                borderWidth: 0,
                dataLabels: {
                    enabled: true
                }
            }
        },

        series: [
        {
            name: 'ประชากร',
            colorByPoint: true,
            data:$main
            
        }
        ],
        drilldown: {
            series:$sub
            
        }
    });
});", yii\web\View::POS_END);
?>

