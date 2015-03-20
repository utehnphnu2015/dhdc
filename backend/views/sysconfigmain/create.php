<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model backend\models\Sysconfigmain */

$this->title = 'Create Sysconfigmain';
$this->params['breadcrumbs'][] = ['label' => 'Sysconfigmains', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="sysconfigmain-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
