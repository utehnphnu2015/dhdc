<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use backend\models\Campur;
use yii\helpers\ArrayHelper;
use kartik\widgets\DepDrop;

/* @var $this yii\web\View */
/* @var $model backend\models\Sysconfigmain */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="sysconfigmain-form">

    <?php $form = ActiveForm::begin(); ?>

    <?=
    $form->field($model, 'provcode')->dropDownList(
            ArrayHelper::map(Campur::find()->all(), 'changwatcode', 'changwatcode'), array(
        'id' => 'provcode',
        'onchange' =>
        '$.post("index.php?r=sysconfigmain/listamp&provcode="+this.value,function(data){
                    $("#ampurcodefull").html(data);
                     $("#sysconfigmain-distcode").val(data.substring(3,4));
                });'
            )
    );
    ?>


    <?php
    echo $form->field($model, 'district_code')->dropDownList(
            ArrayHelper::map(Campur::find()->where(['changwatcode' => $model->provcode])->all(), 'ampurcodefull', 'ampurname'), array(
        'id' => 'ampurcodefull',
        'prompt' => '--อำเภอ--'
    ));
    ?>
    <?= $form->field($model, 'note1')->textInput() ?>


    <?=
    $form->field($model, 'note2')->widget(\yii\jui\DatePicker::classname(), [
        'language' => 'th',
        'dateFormat' => 'yyyy-MM-dd',
        'clientOptions' => [
            'changeMonth' => true,
            'changeYear' => true,
        ],
    ])
    ?>





    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

    <br>

    <br>
    <br>

    <br>
    <br>

    <br>
    <br>

    <br>

</div>
