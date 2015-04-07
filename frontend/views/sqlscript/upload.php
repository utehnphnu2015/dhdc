<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model frontend\models\Sqlscript */

$this->title = 'นำเข้า Script';
$this->params['breadcrumbs'][] = ['label' => 'คลัง Script', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="sqlscript-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?php
    $form = ActiveForm::begin(['options' => ['enctype' => 'multipart/form-data']]);
    ?>

    <?= $form->field($model, 'file[]')->fileInput(['multiple' => true]) ?>

    <button class="btn btn-success"><i class="glyphicon glyphicon-upload"></i>Submit</button>

<?php ActiveForm::end(); ?>

</div>
