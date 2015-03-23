<?php

namespace frontend\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use frontend\models\UploadFortythree;

/**
 * UploadFortythreeSearch represents the model behind the search form about `frontend\models\UploadFortythree`.
 */
class UploadFortythreeSearch extends UploadFortythree {

    /**
     * @inheritdoc
     */
    public function rules() {
        return [
            [['id'], 'integer'],
            [['hospcode', 'file_name', 'file_size', 'upload_date', 'upload_time', 'note1', 'note2', 'note3', 'note4', 'note5'], 'safe'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function scenarios() {
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
    public function search($params) {
        $query = UploadFortythree::find();

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
            'pagination' => [
                'pageSize' => 30
            ],
            'sort' => ['defaultOrder' => [
                    'upload_date' => SORT_DESC,
                    'upload_time' => SORT_DESC
                ]]
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

        $query->andFilterWhere(['like', 'hospcode', $this->hospcode])
                ->andFilterWhere(['like', 'file_name', $this->file_name])
                ->andFilterWhere(['like', 'file_size', $this->file_size])
                ->andFilterWhere(['like', 'upload_date', $this->upload_date])
                ->andFilterWhere(['like', 'upload_time', $this->upload_time])
                ->andFilterWhere(['like', 'note1', $this->note1])
                ->andFilterWhere(['like', 'note2', $this->note2])
                ->andFilterWhere(['like', 'note3', $this->note3])
                ->andFilterWhere(['like', 'note4', $this->note4])
                ->andFilterWhere(['like', 'note5', $this->note5]);

        return $dataProvider;
    }

}
