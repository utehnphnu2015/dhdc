<?php
$this->registerJsFile("https://www.google.com/jsapi", ['position' => 1]);
$a1 = 1000;
$this->registerJs(" 
      google.load(\"visualization\", \"1\", {packages:[\"geochart\"]});
      google.setOnLoadCallback(drawRegionsMap);

      function drawRegionsMap() {

        var data = google.visualization.arrayToDataTable([
          ['จังหวัด', 'จำนวน'],
          ['Bangkok', 2000],
          ['Phitsanulok', 2000],
          ['Phare', 1000],
          ['Nakonratchasrima', 1000],
          
        ]);

        var options = {};
        //options['dataMode'] = 'regions';
        options['region']='TH';
        var chart = new google.visualization.GeoChart(document.getElementById('regions_div'));

        chart.draw(data, options);
      };
       

     ", yii\web\View::POS_HEAD);
?>


  <div id="regions_div" style="width: 600px; height: 450px;"></div>
