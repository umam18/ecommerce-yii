<?php
use usni\UsniAdaptor;
use yii\helpers\Url;

$userModel = UsniAdaptor::app()->user->getIdentity();

/* @var $this \frontend\web\View */
$this->params['breadcrumbs'] = [
        [
        'label' => UsniAdaptor::t('cart', 'Keranjang Belanja'),
        'url' => UsniAdaptor::createUrl('cart/default/view')
    ],
        [
        'label' => UsniAdaptor::t('cart', 'Pembayaran'),
        'url' => UsniAdaptor::createUrl('cart/checkout/index')
    ],
        [
        'label' => UsniAdaptor::t('cart', 'Incomplete Order')
    ]
];

$this->title = UsniAdaptor::t('order', 'Incomplete Order');
?>
<div class="well">
    <p><?php echo UsniAdaptor::t('cart', "The order is incomplete."); ?> 
        <?php
        if ($userModel != null)
        {
            $myOrdersUrl = UsniAdaptor::createUrl('customer/site/order-history');
            echo "Please view your order under <a href='" . $myOrdersUrl . "'>" . UsniAdaptor::t('order', 'Pesanan Saya') . "</a> section.";
        }
        ?>
    </p>
    <p>Please contact <a href="mailto:support@whatacart.com?Subject=Query" target="_top">system admin.</a></p>
    <div class="buttons text-right">
        <a href="<?php echo Url::home() ?>" class="btn btn-success"><?php echo UsniAdaptor::t('application', 'Lanjutkan'); ?></a>
    </div>
</div>
