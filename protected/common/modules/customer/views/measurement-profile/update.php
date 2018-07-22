<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model customer\models\MeasurementProfile */

$this->title = 'Ubah Profil Ukuran';
$this->params['breadcrumbs'][] = ['label' => 'Measurement Profiles', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->name, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="measurement-profile-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
