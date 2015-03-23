<?php

namespace frontend\models;

use Yii;

/**
 * This is the model class for table "sys_event_log".
 *
 * @property integer $id
 * @property string $start_at
 * @property string $end_at
 */
class SysEventLog extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'sys_event_log';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['start_at', 'end_at'], 'string', 'max' => 255]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'start_at' => 'Start At',
            'end_at' => 'End At',
        ];
    }
}
