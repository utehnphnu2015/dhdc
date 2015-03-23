<?php

use yii\helpers\Html;
use kartik\widgets\ActiveForm;
use kartik\widgets\TimePicker;

/* @var $this yii\web\View */
/* @var $model backend\models\SysSetTime */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="sys-set-time-form">

    <?php $form = ActiveForm::begin(); ?>


    <?=
    $form->field($model, 'event_time')->widget(TimePicker::classname(), [
        'pluginOptions' => [
            'showSeconds' => true,
            'showMeridian' => false,
            'minuteStep' => 1,
            'secondStep' => 5,
        ]
    ])
    ?>

    <?=
            $form->field($model, 'days')->textInput();
    ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
