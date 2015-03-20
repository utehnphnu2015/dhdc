<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\SysUploadPersonTarget */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="sys-upload-person-target-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'file_name')->textInput(['maxlength' => 255]) ?>

    <?= $form->field($model, 'file_size')->textInput(['maxlength' => 255]) ?>

    <?= $form->field($model, 'upload_date')->textInput(['maxlength' => 255]) ?>

    <?= $form->field($model, 'upload_time')->textInput(['maxlength' => 255]) ?>

    <?= $form->field($model, 'note1')->textInput(['maxlength' => 255]) ?>

    <?= $form->field($model, 'note2')->textInput(['maxlength' => 255]) ?>

    <?= $form->field($model, 'note3')->textInput(['maxlength' => 255]) ?>

    <?= $form->field($model, 'note4')->textInput(['maxlength' => 255]) ?>

    <?= $form->field($model, 'note5')->textInput(['maxlength' => 255]) ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
