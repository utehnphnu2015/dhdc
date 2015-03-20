<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model backend\models\SysUploadPersonTarget */

$this->title = 'Create Sys Upload Person Target';
$this->params['breadcrumbs'][] = ['label' => 'Sys Upload Person Targets', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="sys-upload-person-target-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
