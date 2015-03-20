<?php

namespace backend\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\CustomReport;

/**
 * CustomReportSearch represents the model behind the search form about `backend\models\CustomReport`.
 */
class CustomReportSearch extends CustomReport
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id'], 'integer'],
            [['rpt_topic', 'rpt_file', 'rpt_group', 'note1', 'note2', 'note3', 'note4'], 'safe'],
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
        $query = CustomReport::find();

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
            'id' => $this->id,
        ]);

        $query->andFilterWhere(['like', 'rpt_topic', $this->rpt_topic])
            ->andFilterWhere(['like', 'rpt_file', $this->rpt_file])
            ->andFilterWhere(['like', 'rpt_group', $this->rpt_group])
            ->andFilterWhere(['like', 'note1', $this->note1])
            ->andFilterWhere(['like', 'note2', $this->note2])
            ->andFilterWhere(['like', 'note3', $this->note3])
            ->andFilterWhere(['like', 'note4', $this->note4]);

        return $dataProvider;
    }
}
