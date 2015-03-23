<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model frontend\models\UploadFortythreeSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="upload-fortythree-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id') ?>

    <?= $form->field($model, 'hospcode') ?>

    <?= $form->field($model, 'file_name') ?>

    <?= $form->field($model, 'file_size') ?>

    <?= $form->field($model, 'upload_date') ?>

    <?php // echo $form->field($model, 'upload_time') ?>

    <?php // echo $form->field($model, 'note1') ?>

    <?php // echo $form->field($model, 'note2') ?>

    <?php // echo $form->field($model, 'note3') ?>

    <?php // echo $form->field($model, 'note4') ?>

    <?php // echo $form->field($model, 'note5') ?>

    <div class="form-group">
        <?= Html::submitButton(Yii::t('app', 'Search'), ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton(Yii::t('app', 'Reset'), ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
