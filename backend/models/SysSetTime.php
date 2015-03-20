<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "sys_set_time".
 *
 * @property integer $id
 * @property string $event_time
 * @property integer $days
 */
class SysSetTime extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'sys_set_time';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
             [['days'], 'required'],
            [['days'], 'integer'],
            [['event_time'], 'string', 'max' => 255]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'event_time' => 'เวลาเริ่มประมวลผล',
            'days' => 'ทุกๆ(วัน)',
        ];
    }
}
