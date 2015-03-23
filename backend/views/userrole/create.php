<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model backend\models\UserRole */

$this->title = 'Create User Role';
$this->params['breadcrumbs'][] = ['label' => 'User Roles', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="user-role-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
