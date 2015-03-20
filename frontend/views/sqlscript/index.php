<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel frontend\models\SqlscriptSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'คลัง Script';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="sqlscript-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('เพิ่ม SQL', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            
            'topic',
            'sql_script:ntext',
            'user',
            'd_update',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>

</div>
