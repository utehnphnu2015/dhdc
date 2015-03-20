<?php


namespace backend\assets;

use yii\web\AssetBundle;

class MaterialAsset extends AssetBundle{
    public $sourcePath='@themes/material';
    public $baseUrl = '@web';
    
    public $css=[
        'css/material-wfont.min.css',
        'css/material.min.css',
        'css/ripples.min.css',
        'css/style.css',
    ];
    public $js=[
        'js/material.min.js',
        'js/ripples.min.js',
    ];
    public $depends = [
        'yii\web\YiiAsset',
        'yii\bootstrap\BootstrapAsset',
        
    ];
    
  
    
}
