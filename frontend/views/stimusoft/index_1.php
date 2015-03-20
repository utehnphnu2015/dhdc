<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\CustomReportSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Custom Reports (Stimusoft)';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="custom-report-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>


    <?=
    GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],
            //'id',
            [
                'attribute' => 'rpt_topic',
                'format' => 'raw',
                'value' => function ($data) {
                    $tomcat_url = $data->note1;
                    $rpt_file = $data->rpt_file;
                    $url = "$tomcat_url?report=$rpt_file";
                    return Html::a($data->rpt_topic, $url, ['target' => '_blank']);
                },
                    ],
                    //'rpt_file',
                    'rpt_group',
                    //'note1',
                    'note2',
                    'note3',
                // 'note4',
                ],
            ]);
            ?>

</div>
