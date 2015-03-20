<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model backend\models\CustomReport */

$this->title = 'Create Custom Report';
$this->params['breadcrumbs'][] = ['label' => 'Custom Reports', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="custom-report-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
