<?php
use usni\UsniAdaptor;

/* @var $this \usni\library\web\AdminView */
/* @var $formDTO \usni\library\dto\FormDTO */

$this->title = UsniAdaptor::t('payment', 'Paypal Standard');

$file = UsniAdaptor::getAlias('@common/modules/payment/views/baseaddpayment.php');
echo $this->renderPhpFile($file, ['formDTO' => $formDTO]);
