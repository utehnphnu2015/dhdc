function gen_dial(obj, base, value) {
    obj.highcharts({
        chart: {
            type: "gauge",
            plotBackgroundColor: null,
            plotBackgroundImage: null,
            plotBorderWidth: 0,
            plotShadow: false,
            height: 290,
        },
        credits: {"enabled": false},
        title: {
            text: "<b>ร้อยละ </b>" +value,
            verticalAlign: "bottom",
            y: -80,
            style: {
                color: "#2653E3",
                fontSize: "12px"
            }
        },
        pane: {
            startAngle: -90,
            endAngle: 90,
            background: null,
        },
        yAxis: {
            min: 0,
            max: 100,
            minorTickInterval: "auto",
            minorTickWidth: 1,
            minorTickLength: 10,
            minorTickPosition: "inside",
            minorTickColor: "#666",
            tickPixelInterval: 30,
            tickWidth: 2,
            tickPosition: "inside",
            tickLength: 15,
            tickColor: "#666",
            labels: {
                step: 2,
                rotation: "auto"
            },
            title: {
                //text: "ร้อยละ " + value
            },
            plotBands: [{
                    from: 0,
                    to: base,
                    color: "#DF5353" // red 
                }, {
                    from: base,
                    to: 100,
                    color: "#22F127" // green
                }]
        },
        series: [{
                name: "ร้อยละ",
                data: [value],
                tooltip: {
                    valueSuffix: " "
                },
                dataLabels:{
                    
                    enabled : false
                },
                
            }]// จบ content
    });// จบ chart
}