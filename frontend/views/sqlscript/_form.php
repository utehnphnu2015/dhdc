<?php


use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model frontend\models\Sqlscript */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="sqlscript-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'topic')->textInput(['maxlength' => 255]) ?>

    <?= $form->field($model, 'sql_script')->textarea(['rows' => 6]) ?>
    <?php
    $user = Yii::$app->user->identity->username;    
    ?>
   <?= $form->field($model, 'user')->hiddenInput(['value'=>$user])->label(false) ?>

    <?= $form->field($model, 'd_update')->hiddenInput(['value'=>date('Y-m-d H:i:s')])->label(false) ?>

    <div class="form-group">
        
        <input type="submit" name='testrun' value="ทดสอบ" class="btn btn-danger">
    
        
        <?= Html::submitButton($model->isNewRecord ? 'บันทึก' : 'บันทึก', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    
    </div>

    <?php ActiveForm::end(); ?>

</div>
