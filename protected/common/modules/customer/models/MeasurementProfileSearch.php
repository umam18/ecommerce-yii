<?php

namespace customer\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use customer\models\MeasurementProfile;

/**
 * MeasurementProfileSearch represents the model behind the search form about `customer\models\MeasurementProfile`.
 */
class MeasurementProfileSearch extends MeasurementProfile
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'customer_id', 'fit', 'thighs_type', 'knee_type'], 'integer'],
            [['name', 'gender', 'measurement_profile_name'], 'safe'],
            [['length', 'waist', 'seat', 'front_rise', 'back_rise', 'thighs', 'knee', 'leg_opening'], 'number'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = MeasurementProfile::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
             'id' => $this->id,
            'customer_id' => $this->customer_id,
            'name' => $this->name,
            'gender' => $this->gender,
            'fit' => $this->fit,
            'length' => $this->length,
            'waist' => $this->waist,
            'seat' => $this->seat,
            'front_rise' => $this->front_rise,
            'back_rise' => $this->back_rise,
            'thighs_type' => $this->thighs_type,
            'thighs' => $this->thighs,
            'knee_type' => $this->knee_type,
            'knee' => $this->knee,
            'leg_opening' => $this->leg_opening,
            'measurement_profile_name' => $this->measurement_profile_name
        ]);

        $query->andFilterWhere(['like', 'name', $this->name])
            ->andFilterWhere(['like', 'gender', $this->gender])
            ->andFilterWhere(['like', 'measurement_profile_name', $this->measurement_profile_name]);

        return $dataProvider;
    }
}
