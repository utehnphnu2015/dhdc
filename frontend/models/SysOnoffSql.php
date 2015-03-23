<?php

namespace frontend\models;

use Yii;

/**
 * This is the model class for table "sys_onoff_sql".
 *
 * @property integer $id
 * @property string $status
 */
class SysOnoffSql extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'sys_onoff_sql';
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
            'id' => 'ID',
            'status' => 'Status',
        ];
    }
}
