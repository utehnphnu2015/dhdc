<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model frontend\models\Sqlscript */

$this->title = 'เพิ่ม script';
$this->params['breadcrumbs'][] = ['label' => 'Sqlscripts', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="sqlscript-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
