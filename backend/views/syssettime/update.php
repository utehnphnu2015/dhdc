<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\SysSetTime */

$this->title = 'Update Time: ' . ' ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Set Times', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="sys-set-time-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
