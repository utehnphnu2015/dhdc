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

    <div class="alert alert-success">
        <h3>อนุญาตเฉพาะไฟล์นามสกุล .txt หรือ .sql เท่านั้น</h3>
    </div>

    <?php
    $form = ActiveForm::begin(['options' => ['enctype' => 'multipart/form-data']]);
    ?>
   
    <?= $form->field($model, 'file[]')->fileInput(['multiple' => true]) ?>

    <button class="btn btn-success"><i class="glyphicon glyphicon-upload"></i> ตกลง </button>

<?php ActiveForm::end(); ?>

</div>
