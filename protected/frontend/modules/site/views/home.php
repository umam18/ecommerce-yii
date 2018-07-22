<?php
use usni\UsniAdaptor;

/* @var $this \frontend\web\View */
/* @var $homePageDTO \frontend\dto\HomePageDTO */

$this->title = UsniAdaptor::t('application', 'Beranda');

echo $this->render('/_carousel');
echo "<h3>" . UsniAdaptor::t('products', 'Produk Terbaru') . "</h3>";
echo $this->render('/_latestproductslist', ['products' => $homePageDTO->getLatestProducts()]);

