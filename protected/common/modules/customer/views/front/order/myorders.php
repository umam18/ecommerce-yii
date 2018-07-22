<?php
/**
 * @copyright Copyright (C) 2016 Usha Singhai Neo Informatique Pvt. Ltd
 * @license https://www.gnu.org/licenses/gpl-3.0.html
 */
use usni\UsniAdaptor;
use usni\library\grid\GridView;
use common\modules\order\models\Order;
use common\modules\order\grid\OrderStatusDataColumn;
use usni\library\grid\FormattedDateTimeColumn;
use common\modules\order\grid\MyOrderActionColumn;

$title              = UsniAdaptor::t('order', 'Pesanan Saya');
$this->title        = $title;
$this->leftnavView  = '/front/_sidebar'; 
$this->params['breadcrumbs'] = [    
                                    [
                                        'label' => UsniAdaptor::t('customer', 'Akun Saya'),
                                        'url'   => ['/customer/site/my-account']
                                    ],
                                    [
                                        'label' => $title
                                    ]
                               ];
$widgetParams   = [
                        'id'            => 'myordersgridview',
                        'dataProvider'  => $gridViewDTO->getDataProvider(),
                        'filterModel'   => $gridViewDTO->getSearchModel(),
                        'caption'       => UsniAdaptor::t('order', 'Pesanan Saya'),
                        'modelClass'    => Order::className(),
                        'columns' => [
                                        [
                                            'label'     => UsniAdaptor::t('order', 'Kode Pesanan'),
                                            'attribute' => 'unique_id'
                                        ],
                                        [
                                            'attribute' => 'status',
                                            'class'     => OrderStatusDataColumn::className(),
                                            'filter'    => $gridViewDTO->getStatusData()
                                        ],
                                        [
                                            'label'     => UsniAdaptor::t('products', 'Jumlah'),
                                            'attribute' => 'amount',
                                        ],
                                        [
                                            'label'     => UsniAdaptor::t('order', 'Waktu Ditambahkan'),
                                            'attribute' => 'created_datetime',
                                            'class'     => FormattedDateTimeColumn::className()
                                        ],
                                        [
                                            'class' => MyOrderActionColumn::className(),
                                            'template' => '{view}',
                                            'modelClassName' => Order::className()
                                        ]
                                     ],
                ];
echo GridView::widget($widgetParams);