<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel frontend\models\UploadFortythreeSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = Yii::t('app', 'รายการไฟล์');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="upload-fortythree-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?=
        Html::a(Yii::t('app', '{modelClass}', [
                    'modelClass' => 'Upload 43 แฟ้ม',
                ]), ['create'], ['class' => 'btn btn-success'])
        ?>
    </p>

    <?=
    kartik\grid\GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'floatHeader' => true,
        'pjax' => TRUE,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],
            //'id',
            'hospcode',
            [
                'attribute' => 'file_name',
                'format' => 'raw',
                'value' => function ($data) {
                    return Html::a($data->file_name, array('view', 'id' => $data->id));
                },
                    ],
                    'file_size',
                    'upload_date',
                    'upload_time',
                    // 'note1',
                    array(
                        'attribute' => 'note2',
                        'label' => 'status',
                        'value' => function ($data) {
                            return $data->note2;
                        },
                    ),
                    //'note3',
                    array(
                        'attribute' => 'note3',
                        'label' => 'note',
                        'value' => function ($data) {
                            return $data->note3;
                        },
                    ),
                // 'note4',
                // 'note5',
                ],
            ]);
            ?>

</div>
