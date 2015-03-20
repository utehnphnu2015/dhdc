<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\UserSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Users';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="user-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]);     ?>

    <p>
        <?= Html::a('Create User', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php
    $columns = [
        ['class' => 'yii\grid\SerialColumn'],
        //'id',
        'username',
        //'auth_key',
        //'password_hash',
        //'password_reset_token',
        'email:email',
        //'user_role.role_id',
        [
            'attribute' => 'role',
            'value' => function($data) {
                if (isset($data->user_role->role_desc)) {
                    return $data->user_role->role_desc;
                } else {
                    return 'ไม่ทราบสิทธิ'; //
                }
            },
            'filter' => \yii\helpers\ArrayHelper::map(backend\models\UserRole::find()->all(), 'role_name', 'role_desc'),
        ],
        // 'status',
        'created_at',
        'updated_at',
        ['class' => 'yii\grid\ActionColumn']
    ];
    echo kartik\grid\GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'pjax' => true,
        'pjaxSettings' => [
            //'neverTimeout' => true,
            'options' => [
                'enablePushState' => false,
            ],
        ],
        'responsive' => true,
        'hover' => true,
        'panel' => [
            'before' => '',
        //'after'=>''
        ],
        'columns' => $columns
    ]);
    ?>

</div>
