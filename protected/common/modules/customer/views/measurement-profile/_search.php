<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model customer\models\MeasurementProfileSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="measurement-profile-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id') ?>

    <?= $form->field($model, 'customer_id') ?>

    <?= $form->field($model, 'name') ?>

    <?= $form->field($model, 'gender') ?>

    <?= $form->field($model, 'fit') ?>

    <?php // echo $form->field($model, 'length') ?>

    <?php // echo $form->field($model, 'waist') ?>

    <?php // echo $form->field($model, 'seat') ?>

    <?php // echo $form->field($model, 'front_rise') ?>

    <?php // echo $form->field($model, 'back_rise') ?>

    <?php // echo $form->field($model, 'thighs_type') ?>

    <?php // echo $form->field($model, 'thighs') ?>

    <?php // echo $form->field($model, 'knee_type') ?>

    <?php // echo $form->field($model, 'knee') ?>

    <?php // echo $form->field($model, 'leg_opening') ?>

    <?php // echo $form->field($model, 'measurement_profile_name') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
