<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model customer\models\MeasurementProfile */
/* @var $form yii\widgets\ActiveForm */
use usni\UsniAdaptor;

$title = UsniAdaptor::t('users', 'Measurement Profile');
$this->title = $title;
$this->leftnavView = '/front/_sidebar';
$this->params['breadcrumbs'] = [
    [
        'label' => UsniAdaptor::t('customer', 'Akun Saya'),
        'url' => ['/customer/site/my-account']
    ],
    [
        'label' => $title
    ]
];
?>


<div class="panel panel-default">
    <div class='panel-heading'>
        <div class='panel-title'><center><strong><?php echo "Buat Ukuran" ?></strong></center></div>
    </div>

    <div style="padding-left: 5px;">
        <?php $form = ActiveForm::begin(); ?>

        <?= $form->field($model, 'customer_id')->textInput() ?>

        <?= $form->field($model, 'name')->textInput(['maxlength' => true]) ?>

        <?= $form->field($model, 'gender')->textInput(['maxlength' => true]) ?>

        <?= $form->field($model, 'fit')->textInput() ?>

        <?= $form->field($model, 'length')->textInput(['maxlength' => true]) ?>

        <?= $form->field($model, 'waist')->textInput(['maxlength' => true]) ?>

        <?= $form->field($model, 'seat')->textInput(['maxlength' => true]) ?>

        <?= $form->field($model, 'front_rise')->textInput(['maxlength' => true]) ?>

        <?= $form->field($model, 'back_rise')->textInput(['maxlength' => true]) ?>

        <?= $form->field($model, 'thighs_type')->textInput() ?>

        <?= $form->field($model, 'thighs')->textInput(['maxlength' => true]) ?>

        <?= $form->field($model, 'knee_type')->textInput() ?>

        <?= $form->field($model, 'knee')->textInput(['maxlength' => true]) ?>

        <?= $form->field($model, 'leg_opening')->textInput(['maxlength' => true]) ?>

        <?= $form->field($model, 'measurement_profile_name')->textInput(['maxlength' => true]) ?>

        <div class="form-group">
            <?= Html::submitButton($model->isNewRecord ? 'Simpan' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
        </div>

        <?php ActiveForm::end(); ?>
    </div>

</div>
