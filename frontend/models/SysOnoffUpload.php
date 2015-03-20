<?php

namespace frontend\models;

use Yii;

/**
 * This is the model class for table "sys_onoff_upload".
 *
 * @property integer $id
 * @property string $status
 */
class SysOnoffUpload extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'sys_onoff_upload';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['status'], 'string']
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'status' => Yii::t('app', 'Status'),
        ];
    }
}
