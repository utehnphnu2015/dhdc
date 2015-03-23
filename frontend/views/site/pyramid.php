<?php
use miloschuman\highcharts\Highcharts;

$male = [-1746181, -1884428, -2089758, -2222362, -2537431, -2507081, -2443179,
    -2664537, -3556505, -3680231, -3143062, -2721122, -2229181, -2227768,
    -2176300, -1329968, -836804, -354784, -90569, -28367, -3878];
$js_male = implode(',', $male);

$female = [1656154, 1787564, 1981671, 2108575, 2403438, 2366003, 2301402, 2519874,
    3360596, 3493473, 3050775, 2759560, 2304444, 2426504, 2568938, 1785638,
    1447162, 1005011, 330870, 130632, 21208];

$js_female = implode(',', $female);

$categories = ['0-4', '5-9', '10-14', '15-19',
    '20-24', '25-29', '30-34', '35-39', '40-44',
    '45-49', '50-54', '55-59', '60-64', '65-69',
    '70-74', '75-79', '80-84', '85-89', '90-94',
    '95-99', '100 + '];
$js_categories = implode("','", $categories);

$this->registerJs("
        var categories = ['$js_categories'];    
        $('#ch1').highcharts({
            chart: {
                type: 'bar',
                plotBackgroundImage:'./images/bg_pop.png',
                height:460
            },
            credits:{'enabled':false},
            title: {
                text: 'ปิรามิดประชากร ปี '+2558
            },
            subtitle: {
                text: 'person 43 แฟ้ม'
            },
            xAxis: [{
                categories: categories,
                reversed: false,
                labels: {
                    step: 1
                }
            }, { 
                opposite: true,
                reversed: false,
                categories: categories,
                linkedTo: 0,
                labels: {
                    step: 1
                }
            }],
            yAxis: {
                title: {
                    text: null
                },
                labels: {
                    formatter: function () {
                        return (Math.abs(this.value) / 1000000);
                    }
                },
                min: -4000000,
                max: 4000000
            },
            plotOptions: {
                series: {
                    stacking: 'normal'
                }
            },
            tooltip: {
                formatter: function () {
                    return '<b>' + this.series.name + ', อายุ ' + this.point.category + '</b><br/>' +
                        'Population: ' + Highcharts.numberFormat(Math.abs(this.point.y), 0);
                }
            },
            series: [{
                name: 'ชาย',
                data: [$js_male]
            }, {
                name: 'หญิง',
                data: [$js_female]
            }]
        });
    ");
?>
<div style="display: none">
    <?=
    Highcharts::widget([
        'scripts' => [
            'highcharts-more', // enables supplementary chart types (gauge, arearange, columnrange, etc.)
            //'modules/exporting', // adds Exporting button/menu to chart
            'themes/grid'        // applies global 'grid' theme to all charts
        ]
    ]);
    ?>
</div>
<div id="ch1"></div>

