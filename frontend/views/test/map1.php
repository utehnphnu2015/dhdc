
<?php
use dosamigos\google\maps\LatLng;
use dosamigos\google\maps\services\DirectionsWayPoint;
use dosamigos\google\maps\services\TravelMode;
use dosamigos\google\maps\overlays\PolylineOptions;
use dosamigos\google\maps\services\DirectionsRenderer;
use dosamigos\google\maps\services\DirectionsService;
use dosamigos\google\maps\overlays\InfoWindow;
use dosamigos\google\maps\overlays\Marker;
use dosamigos\google\maps\Map;
use dosamigos\google\maps\services\DirectionsRequest;
use dosamigos\google\maps\overlays\Polygon;
use dosamigos\google\maps\layers\BicyclingLayer;
 
$coord = new LatLng(['lat' => 16, 'lng' => 100]);
$map = new Map([
    'center' => $coord,
    'zoom' => 8,
    
   
]);



// Lets add a marker now
$marker = new Marker([
    'position' => new LatLng(['lat' => 16, 'lng' => 100]),
    'title' => 'My Home Town',
    'icon'=>'home.png'
]);
// Provide a shared InfoWindow to the marker
$marker->attachInfoWindow(
    new InfoWindow([
        'content' => '<p>This is my super cool content</p>'
    ])
);
$map->addOverlay($marker);

$marker = new Marker([
    'position' => new LatLng(['lat' => 15.97, 'lng' => 99.87]),
    'title' => 'My Home Town',
    'icon'=>'home.png'
]);
// Provide a shared InfoWindow to the marker
$marker->attachInfoWindow(
    new InfoWindow([
        'content' => '<p>This is my super cool content</p>'
    ])
);
$map->addOverlay($marker);


$marker = new Marker([
    'position' => new LatLng(['lat' => 16.1, 'lng' => 100.09]),
    'title' => 'My Home Town',
    'icon'=>'home.png'
]);

// Provide a shared InfoWindow to the marker
$marker->attachInfoWindow(
    new InfoWindow([
        'content' => '<p>This is my super cool content</p>'
    ])
);

 
// Add marker to the map
$map->addOverlay($marker);

 

 


// Display the map -finally :)
echo $map->display(['width'=>'600px']);