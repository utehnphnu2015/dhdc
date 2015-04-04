<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model frontend\models\Sqlscript */

$this->title = 'แก้ไข script: ' . ' ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'คลัง Script', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => 'script ที่ '.$model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'แก้ไข';
?>
<div class="sqlscript-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
