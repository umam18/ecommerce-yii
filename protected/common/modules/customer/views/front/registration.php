<?php
/**
 * @copyright Copyright (C) 2016 Usha Singhai Neo Informatique Pvt. Ltd
 * @license https://www.gnu.org/licenses/gpl-3.0.html
 */
use usni\UsniAdaptor;

$title          = UsniAdaptor::t('users', 'Daftar');
$this->title    = $title;
$this->params['breadcrumbs'] = [    
                                    [
                                        'label' => UsniAdaptor::t('customer', 'Akun Saya'),
                                        'url'   => ['/customer/site/my-account']
                                    ],
                                    [
                                        'label' => UsniAdaptor::t('users', 'Daftar')
                                    ]
                               ];
echo $this->render('/front/_tabform', ['formDTO' => $formDTO]);