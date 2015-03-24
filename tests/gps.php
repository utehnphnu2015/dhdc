<script src="https://code.jquery.com/jquery-2.1.3.min.js"></script>

<div id="out_put">
    <form action="" method="POST">
        Time:<input type="text" name="dtime" id="dtime" style="width: 380px"><br>
        Latitude:<input type="text" name="lat" id="lat"><br>
        Longitude:<input type="text" name="lng" id="lng"><br>
        <button type="submit">Save</button>            
    </form>    
</div>

<script>
    (function ($) {
       var runGPS=1;       
        var timer = setInterval(function () {           
            if (runGPS == 1) {
                navigator.geolocation.getCurrentPosition(function (pos) {
                    var dtime = new Date();                    
                    var lat = pos.coords.latitude;
                    var lng = pos.coords.longitude;
                    $("#dtime").val(dtime);
                    $("#lat").val(lat);
                    $("#lng").val(lng);
                   
                });
            }
        }, 1000);// 1000 = 1 sec
    })(jQuery);
</script>