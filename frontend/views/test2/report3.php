<?php
use yii\helpers\Html;
use yii\helpers\Url;
echo yii\grid\GridView::widget([

    'dataProvider' => $dataProvider,
    'columns' => [
        'name', 'lname',
        ['class' => 'yii\grid\ActionColumn',
            'header' => 'การปฏิบัติ',
            'template' => '{new_action1} {new_action2}',
            'headerOptions' => ['class' => 'text-center'],
            'contentOptions' => ['class' => 'text-center'],
            'buttons' => [
                'new_action1' => function ($url, $model) {
                    return Html::a(
                                    '<span id="btn1" class="glyphicon glyphicon-check" data-toggle="tooltip" data-placement="left" title="Check"></span>', $url, [
                                'data' => [
                                    'confirm' => 'Are you sure do it?',
                                    //'method' => 'post',
                                ],
                    ]);
                },
                        'new_action2' => function ($url, $model) {
                    return Html::a(
                                    '<span id="btn2" class="glyphicon glyphicon-remove" data-toggle="tooltip" data-placement="left" title="Remove"></span>', $url, [
                                'data' => [
                                    'confirm' => 'Are you sure do it?',
                                    'method' => 'post',
                                ],
                    ]);
                },
                    ],
            'urlCreator' => function ($action, $model, $key, $index) {
                if ($action === 'new_action1') {
                    $url = Url::to(['controller_name/action_name','id'=>$model['id']]);
                    return $url;
                } elseif ($action === 'new_action2') {
                    $url = Url::to(['json','id'=>$model['id']]);
                    return $url;
                }
            }
                ]
            ]
        ]);
?>