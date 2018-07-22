<?php

use usni\UsniAdaptor;
?>
<?php
if (!$isEmpty) {
    ?>
    <div class="table-responsive" id="shopping-cart-full">
        <table class="table table-bordered">
            <thead>
                <tr>
                    <td class="text-center"><?php echo UsniAdaptor::t('application', 'Gambar') ?></td>
                    <td class="text-left"><?php echo UsniAdaptor::t('application', 'Nama') ?></td>
                    <td class="text-left"><?php echo UsniAdaptor::t('products', 'Model') ?></td>
                    <td class="text-left"><?php echo UsniAdaptor::t('products', 'Options') ?></td>
                    <td class="text-left"><?php echo UsniAdaptor::t('products', 'Jumlah') ?></td>
                    <td class="text-left"><?php echo 'Ubah Ukuran' ?></td>
                    <td class="text-right"><?php echo UsniAdaptor::t('products', 'Harga Satuan') ?></td>
                    <td class="text-right"><?php echo UsniAdaptor::t('tax', 'Pajak') ?></td>
                    <td class="text-right"><?php echo UsniAdaptor::t('products', 'Harga Total') ?></td>
                </tr>
            </thead>
            <tbody>
                <?php echo $items; ?>
            </tbody>
        </table>
    </div>
    <div class="row">
        <div class="col-sm-4 col-sm-offset-8">
            <table class="table table-bordered">
                <tbody>
                    <tr>
                        <td class="text-right"><strong><?php echo UsniAdaptor::t('products', 'Sub-Total'); ?></strong></td>
                        <td class="text-right"><?php echo $this->getFormattedPrice($totalUnitPrice, $currencyCode); ?></td>
                    </tr>
                    <tr>
                        <td class="text-right"><strong><?php echo UsniAdaptor::t('tax', 'Pajak'); ?></strong></td>
                        <td class="text-right"><?php echo $this->getFormattedPrice($totalTax, $currencyCode); ?></td>
                    </tr>
                    <?php
                    if ($shippingPrice > 0) {
                        ?>
                        <tr>
                            <td class="text-right"><strong><?php echo UsniAdaptor::t('shipping', 'Shipping Cost'); ?></strong></td>
                            <td class="text-right"><?php echo $this->getFormattedPrice($shippingPrice, $currencyCode); ?></td>
                        </tr>
                        <?php
                    }
                    ?>
                    <tr>
                        <td class="text-right"><strong><?php echo UsniAdaptor::t('products', 'Total'); ?></strong></td>
                        <td class="text-right"><?php echo $this->getFormattedPrice($totalPrice, $currencyCode); ?></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
    <?php
} else {
    ?>
    <div class="table-responsive well" id="shopping-cart-full">
        <table class="table">
            <thead>
                <tr>
                    <td class="text-center"><?php echo $items; ?></td>
                </tr>
            </thead>
        </table>
    </div>
    <?php
}