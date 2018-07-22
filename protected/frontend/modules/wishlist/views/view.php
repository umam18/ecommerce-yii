<?php
use usni\UsniAdaptor;
use wishlist\widgets\WishlistSubView;

/* @var $this \frontend\web\View */

$this->title = UsniAdaptor::t('wishlist', 'Wish List Saya');
?>
<h2><?php echo $this->title;?></h2>
<?php
$this->leftnavView  = '@customer/views/front/_sidebar'; 
$this->params['breadcrumbs'] = [
                                    ['label' => UsniAdaptor::t('customer', 'Akun Saya'), 'url' => UsniAdaptor::createUrl('customer/site/my-account')],
                                    ['label' => $this->title]
                                ];
echo WishlistSubView::widget(['products' => $products]);