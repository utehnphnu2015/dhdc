<?php
//
use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel frontend\models\SysCountAllSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'ผลรวมข้อมูลรายแฟ้ม';
$this->params['breadcrumbs'][] = $this->title;
?>
<div>
    <?=
    yii\grid\GridView::widget([
        'dataProvider' => $dataProvider,
        //'condensed' => true,
        //'responsive' => TRUE,
        //'panel' => ['before' => '',],
        //'floatHeader' => true,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],
            [
                'attribute' => 'hospcode',
                'format' => 'raw',
                'value' => function($model) {
                    $hospcode = $model['hospcode'];
                    return Html::a(Html::encode($hospcode), ['syscountall/index2']);
                }
                    ],
                    'person',
                    'death',
                    'service',
                    'accident',
                    'diagnosis_opd',
                    'procedure_opd',
                    'ncdscreen',
                    'chronicfu',
                    'labfu',
                    'chronic',
                    'fp',
                    'epi',
                    'nutrition',
                    'prenatal',
                    'anc',
                    'labor',
                    'postnatal',
                    'newborn',
                    'newborncare',
                    'dental',
                    'admission',
                    'diagnosis_ipd',
                    'procedure_ipd',
                ],
            ]);
            ?>
</div>