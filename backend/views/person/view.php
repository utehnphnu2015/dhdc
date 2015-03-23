<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model backend\models\SysUploadPersonTarget */

$this->title = $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Sys Upload Person Targets', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="sys-upload-person-target-view">

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
            'id',
            'file_name',
            'file_size',
            'upload_date',
            'upload_time',
            'note1',
            'note2',
            'note3',
            'note4',
            'note5',
        ],
    ]) ?>

</div>
