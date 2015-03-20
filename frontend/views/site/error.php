<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $name string */
/* @var $message string */
/* @var $exception Exception */

$this->title = $name;
?>
<div class="site-error">

    <h1><?php //echo Html::encode($this->title) ?></h1>

    <div class="alert alert-danger">
        <h1><?= nl2br(Html::encode($message)) ?></h1>
    </div>

   

</div>
