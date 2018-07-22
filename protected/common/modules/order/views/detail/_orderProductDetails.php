<?php
use usni\UsniAdaptor;
/* @var $this \usni\library\web\AdminView */
?>
<div class="table-responsive" id="shopping-cart-admin-full">
    <table class="table table-bordered">
        <thead>
            <tr>
                <td><?php echo UsniAdaptor::t('application', 'Nama') ?></td>
                <td><?php echo UsniAdaptor::t('products', 'Model') ?></td>
                <td><?php echo UsniAdaptor::t('products', 'Options') ?></td>
                <td><?php echo UsniAdaptor::t('products', 'Jumlah') ?></td>
                <td><?php echo UsniAdaptor::t('products', 'Harga Satuan') ?></td>
                <td><?php echo UsniAdaptor::t('tax', 'Pajak') ?></td>
                <td><?php echo UsniAdaptor::t('products', 'Harga Total') ?></td>
            </tr>
        </thead>
        <tbody>
            <?php
            echo $items;
            ?>
        </tbody>
    </table>
</div>
<br/>
<div class="row">
    <div class="col-sm-4 col-sm-offset-8">
        <table class="table table-bordered">
            <tbody>
                <tr>
                    <td class="text-right"><strong><?php echo UsniAdaptor::t('products', 'Sub-Total'); ?></strong></td>
                    <td class="text-right"><?php echo $this->getPriceWithSymbol($totalUnitPrice, $currencySymbol); ?></td>
                </tr>
                <tr>
                    <td class="text-right"><strong><?php echo UsniAdaptor::t('tax', 'Pajak'); ?></strong></td>
                    <td class="text-right"><?php echo $this->getPriceWithSymbol($totalTax, $currencySymbol); ?></td>
                </tr>
                <?php
                if ($shippingPrice > 0)
                {
                    ?>
                    <tr>
                        <td class="text-right"><strong><?php echo UsniAdaptor::t('shipping', 'Shipping Cost'); ?></strong></td>
                        <td class="text-right"><?php echo $this->getPriceWithSymbol($shippingPrice, $currencySymbol); ?></td>
                    </tr>
                    <?php
                }
                ?>
                <tr>
                    <td class="text-right"><strong><?php echo UsniAdaptor::t('application', 'Total'); ?></strong></td>
                    <td class="text-right"><?php echo $this->getPriceWithSymbol($totalPrice, $currencySymbol); ?></td>
                </tr>
            </tbody>
        </table>
    </div>
</div>
<br/>