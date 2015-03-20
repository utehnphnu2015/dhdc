<?php

namespace frontend\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use frontend\models\SysCountAll;

/**
 * SysCountAllSearch represents the model behind the search form about `frontend\models\SysCountAll`.
 */
class SysCountAllSearch extends SysCountAll
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['hospcode', 'month'], 'safe'],
            [['person', 'death', 'service', 'accident', 'diagnosis_opd', 'procedure_opd', 'ncdscreen', 'chronicfu', 'labfu', 'chronic', 'fp', 'epi', 'nutrition', 'prenatal', 'anc', 'labor', 'postnatal', 'newborn', 'newborncare', 'dental', 'admission', 'diagnosis_ipd', 'procedure_ipd'], 'integer'],
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
        $query = SysCountAll::find();

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        $query->andFilterWhere([
            'person' => $this->person,
            'death' => $this->death,
            'service' => $this->service,
            'accident' => $this->accident,
            'diagnosis_opd' => $this->diagnosis_opd,
            'procedure_opd' => $this->procedure_opd,
            'ncdscreen' => $this->ncdscreen,
            'chronicfu' => $this->chronicfu,
            'labfu' => $this->labfu,
            'chronic' => $this->chronic,
            'fp' => $this->fp,
            'epi' => $this->epi,
            'nutrition' => $this->nutrition,
            'prenatal' => $this->prenatal,
            'anc' => $this->anc,
            'labor' => $this->labor,
            'postnatal' => $this->postnatal,
            'newborn' => $this->newborn,
            'newborncare' => $this->newborncare,
            'dental' => $this->dental,
            'admission' => $this->admission,
            'diagnosis_ipd' => $this->diagnosis_ipd,
            'procedure_ipd' => $this->procedure_ipd,
        ]);

        $query->andFilterWhere(['like', 'hospcode', $this->hospcode])
            ->andFilterWhere(['like', 'month', $this->month]);

        return $dataProvider;
    }
}
