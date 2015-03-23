<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model frontend\models\UploadFortythree */

$this->title = Yii::t('app', 'Update {modelClass}: ', [
    'modelClass' => 'Upload Fortythree',
]) . ' ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Upload Fortythrees'), 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = Yii::t('app', 'Update');
?>
<div class="upload-fortythree-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
