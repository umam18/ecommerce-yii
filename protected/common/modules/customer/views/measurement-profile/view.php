<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model customer\models\MeasurementProfile */

$this->title = $model->name;
$this->params['breadcrumbs'][] = ['label' => 'Measurement Profiles', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="measurement-profile-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'customer_id',
            'name',
            'gender',
            'fit',
            'length',
            'waist',
            'seat',
            'front_rise',
            'back_rise',
            'thighs_type',
            'thighs',
            'knee_type',
            'knee',
            'leg_opening',
            'measurement_profile_name',
        ],
    ]) ?>

</div>
