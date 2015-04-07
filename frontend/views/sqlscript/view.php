<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model frontend\models\Sqlscript */

$this->title = 'id ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'คลัง Script', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="sqlscript-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>

        <?php $route_run = \yii\helpers\Url::to(['runquery/index']) ?>
    <form method="post" action="<?= $route_run ?>" class="form form-inline">

        <?= Html::a('<i class="glyphicon glyphicon-upload"></i> แก้ไข', ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?php
        
        echo 
        Html::a('<i class="glyphicon glyphicon-remove"></i> Delete', ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]);
         
        ?>
       
            

        <input type='hidden' name ='script_name' value="<?= $model->topic ?>">
        <input type='hidden' name='sql_code' value="<?= $model->sql_script ?>">
        <button class='btn btn-success'>
            <i class="glyphicon glyphicon-play"></i> ประมวลผล
        </button>
    </form>
</p>

<?=
DetailView::widget([
    'model' => $model,
    'attributes' => [
        'id',
        'topic',
        'sql_script:ntext',
        'user',
        'd_update',
    ],
])
?>


</div>
