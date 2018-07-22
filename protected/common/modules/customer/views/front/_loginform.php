<?php

/**
 * @copyright Copyright (C) 2016 Usha Singhai Neo Informatique Pvt. Ltd
 * @license https://www.gnu.org/licenses/gpl-3.0.html
 */
use usni\UsniAdaptor;
use frontend\widgets\ActiveForm;
use yii\helpers\Html;

/* @var $this \frontend\web\View */

$title = UsniAdaptor::t('users', 'Masuk');
$this->title = $title;
$model = $formDTO->getModel();
$forgotPasswordLink = Html::a(UsniAdaptor::t('users', 'Lupa Kata Sandi'), UsniAdaptor::createUrl('customer/site/forgot-password'));
$passwordTemplate = "{beginLabel}\n{labelTitle}\n{endLabel}\n{input}\n" . $forgotPasswordLink . "{error}";
$this->params['breadcrumbs'] = [
        [
        'label' => UsniAdaptor::t('customer', 'Akun Saya'),
        'url' => ['/customer/site/my-account']
    ],
        [
        'label' => $title
    ]
];
$form = ActiveForm::begin([
            'id' => 'loginview',
            'fieldConfig' => ['template' => "{beginLabel}\n{labelTitle}\n{endLabel}\n{input}\n{error}",
                'labelOptions' => ['class' => '']],
            'decoratorView' => false
        ]);
?>
<h2><?php echo UsniAdaptor::t('customer', 'Pelanggan Lama'); ?></h2>
<!--<p><strong><?php echo UsniAdaptor::t('customer', 'I am a returning customer') ?></strong></p>-->
<?= $form->field($model, 'username')->textInput(); ?>
<?= $form->field($model, 'password', ['template' => $passwordTemplate])->passwordInput(); ?>
<?= $form->field($model, 'rememberMe', ['horizontalCssClasses' => ['wrapper' => '', 'offset' => '']])->checkbox(); ?>
<?= Html::submitButton(UsniAdaptor::t('users', 'Masuk'), ['id' => 'savebutton', 'class' => 'btn btn-success']); ?>
<?php ActiveForm::end(); ?>