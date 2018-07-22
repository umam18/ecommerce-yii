<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel customer\models\MeasurementProfileSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */
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
        <div class='panel-title'><?php echo $title; ?></div>
    </div>

    <p style="padding-left: 10px; padding-top: 10px;">
        <?= Html::a('Tambah Ukuran', ['measurement-profile/create'], ['class' => 'btn btn-success']) ?>
    </p>

    <div class="panel-body">

        <?=
        GridView::widget([
            'dataProvider' => $dataProvider,
//            'filterModel' => $searchModel,
            'columns' => [
                ['class' => 'yii\grid\SerialColumn'],
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
                ['class' => 'yii\grid\ActionColumn'],
            ],
        ]);
        ?>
    </div>
</div>
</div>