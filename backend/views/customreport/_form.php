<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\CustomReport */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="custom-report-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'rpt_topic')->textInput(['maxlength' => 255]) ?>

    <?= $form->field($model, 'rpt_file')->textInput(['maxlength' => 255]) ?>

    <?= $form->field($model, 'rpt_group')->textInput(['maxlength' => 255]) ?>

    <?= $form->field($model, 'note1')->textInput(['maxlength' => 255]) ?>

    <?= $form->field($model, 'note2')->textInput(['maxlength' => 255]) ?>
    <?= $form->field($model, 'note3')->textInput(['maxlength' => 255,'value'=>date('Y-m-d')]) ?>


    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
