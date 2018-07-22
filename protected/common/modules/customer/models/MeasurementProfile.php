<?php

namespace customer\models;

use Yii;

/**
 * This is the model class for table "tbl_measurement_profile".
 *
 * @property integer $id
 * @property integer $customer_id
 * @property string $name
 * @property string $gender
 * @property integer $fit
 * @property string $length
 * @property string $waist
 * @property string $seat
 * @property string $front_rise
 * @property string $back_rise
 * @property integer $thighs_type
 * @property string $thighs
 * @property integer $knee_type
 * @property string $knee
 * @property string $leg_opening
 * @property string $measurement_profile_name
 */
class MeasurementProfile extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'tbl_measurement_profile';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['customer_id', 'fit', 'thighs_type', 'knee_type'], 'integer'],
            [['length', 'waist', 'seat', 'front_rise', 'back_rise', 'thighs', 'knee', 'leg_opening'], 'number'],
            [['name', 'measurement_profile_name'], 'string', 'max' => 255],
            [['gender'], 'string', 'max' => 1],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'customer_id' => 'Customer ID',
            'name' => 'Name',
            'gender' => 'Gender',
            'fit' => 'Fit',
            'length' => 'Length',
            'waist' => 'Waist',
            'seat' => 'Seat',
            'front_rise' => 'Front Rise',
            'back_rise' => 'Back Rise',
            'thighs_type' => 'Thighs Type',
            'thighs' => 'Thighs',
            'knee_type' => 'Knee Type',
            'knee' => 'Knee',
            'leg_opening' => 'Leg Opening',
            'measurement_profile_name' => 'Measurement Profile Name',
        ];
    }
}
