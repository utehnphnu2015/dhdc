<?php

return [
    'vendorPath' => dirname(dirname(__DIR__)) . '/vendor',
    'components' => [
        'cache' => [
            'class' => 'yii\caching\FileCache',
        ],
    ],
    'modules' => [
        'dynagrid' => [
            'class' => '\kartik\dynagrid\Module',
        // other settings (refer documentation)
        ],
        'gridview' => [
            'class' => '\kartik\grid\Module',
        // other module settings
        ],
    ],
];
