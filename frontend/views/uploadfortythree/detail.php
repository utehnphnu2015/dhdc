<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

$this->title = $model->filename;
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Fortythrees All '), 'url' => ['index']];
?>
<div class="detail-fortythree-view">
    <?php
    echo \yii\widgets\DetailView::widget([
        'model' => $model,
        'attributes' => [
            'filename',
            'import_date',
        ]
    ]);
   
    ?>
    <table class="table table-responsive table-condensed table-hover table-striped table-bordered">
        <thead>
        <th>แฟ้ม</th><th>จำนวนที่ถูกนำเข้า (แถว)</th>
        </thead>
        <tbody>
            <?php
            foreach ($model as $key => $value):
                ?>
                <?php
                if ($key <> 'id' && $key <> 'filename' && $key <> 'import_date' && $key <> 'upload_date' && $key <> 'upload_time'):
                    ?>
        <tr><td><?= $key ?></td><td><?=$value?></td></tr>
                <?php endif; ?>
            <?php
        endforeach;
        ?>
        </tbody>
    </table>

</div>



