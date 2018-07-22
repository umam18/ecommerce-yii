<?php
use usni\UsniAdaptor;

/* @var $this \frontend\web\View */
?>
<div class="row">
    <div class="col-sm-6">
        <div class="well">
            <h2><?php echo UsniAdaptor::t('customer', 'Pelanggan Baru');?></h2>
            <p><strong><?php echo UsniAdaptor::t('customer', 'Buat Akun');?></strong></p>
            <p><?php echo UsniAdaptor::t('customer', 'Membuat akun akan membuat pengalaman Anda menyenangkan. Ini akan memudahkan Anda mengatur pesanan dan membuat kenyamanan pada saat pelacakan pesanan.')?></p>
            <a href="<?php echo UsniAdaptor::createUrl('/customer/site/register');?>" class="btn btn-success"><?php echo UsniAdaptor::t('application', 'Lanjutkan');?></a>
        </div>
    </div>	 
    <div class="col-sm-6">
        <div class="well">
            <?php echo $this->render('/front/_loginform', ['formDTO' => $formDTO]);?>
        </div>
    </div>
</div>
        
