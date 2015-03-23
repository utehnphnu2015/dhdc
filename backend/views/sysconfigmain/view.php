<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model backend\models\Sysconfigmain */

$this->title = $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Sysconfigmains', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="sysconfigmain-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            //'id',
            'provcode',
            'distcode',
            'district_code',
            'district_name',
            'note1',
            'note2',
            'note3',
            'note4',
            'note5',
        ],
    ]) ?>

</div>
