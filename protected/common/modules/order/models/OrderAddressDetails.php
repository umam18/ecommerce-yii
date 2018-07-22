<?php

/**
 * @copyright Copyright (C) 2016 Usha Singhai Neo Informatique Pvt. Ltd
 * @license https://www.gnu.org/licenses/gpl-3.0.html
 */

namespace common\modules\order\models;

use usni\library\db\ActiveRecord;
use usni\UsniAdaptor;
use common\modules\order\utils\OrderUtil;

/**
 * OrderAddressDetails active record.
 * 
 * @package common\modules\Order\models
 */
class OrderAddressDetails extends ActiveRecord {

    /**
     * @inheritdoc
     */
    public function rules() {
        return [
                [['firstname', 'lastname', 'email', 'address1', 'city', 'postal_code', 'country'], 'required'],
                [['mobilephone', 'officephone'], 'number', 'integerOnly' => true],
                [['email', 'firstname', 'lastname', 'mobilephone', 'officephone', 'address1', 'address2', 'city', 'country', 'postal_code', 'state',
            'type', 'order_id'], 'safe'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function scenarios() {
        $scenarios = parent::scenarios();
        $scenarios['create'] = $scenarios['update'] = ['email', 'firstname', 'lastname', 'mobilephone', 'officephone', 'address1', 'address2', 'city',
            'country', 'postal_code', 'state', 'type', 'order_id'];
        return $scenarios;
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels() {
        $labels = [
            'email' => UsniAdaptor::t('users', 'Email'),
            'firstname' => UsniAdaptor::t('users', 'Nama Lengkap'),
            'lastname' => UsniAdaptor::t('users', 'Last Belakang'),
            'mobilephone' => UsniAdaptor::t('users', 'No HP / WhatsApp'),
            'officephone' => UsniAdaptor::t('users', 'No. Telepon Kantor'),
            'address1' => UsniAdaptor::t('users', 'Alamat 1'),
            'address2' => UsniAdaptor::t('users', 'Alamat 2'),
            'city' => UsniAdaptor::t('city', 'Kota'),
            'state' => UsniAdaptor::t('state', 'Provinsi'),
            'country' => UsniAdaptor::t('country', 'Negara'),
            'postal_code' => UsniAdaptor::t('users', 'Kode Pos'),
            'type' => UsniAdaptor::t('application', 'Tipe'),
            'order_id' => UsniAdaptor::t('order', 'Pesanan'),
        ];
        return parent::getTranslatedAttributeLabels($labels);
    }

    /**
     * @inheritdoc
     */
    public static function getLabel($n = 1) {
        return UsniAdaptor::t('order', 'Alamat Pesanan');
    }

    /**
     * Get concatenated displayed address
     * @return string
     */
    public function getConcatenatedDisplayedAddress() {
        return OrderUtil::getConcatenatedAddress($this);
    }

}
