<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "sys_process_running".
 *
 * @property string $is_running
 */
class SysProcessRunning extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'sys_process_running';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['is_running'], 'required'],
            [['is_running'], 'string']
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'is_running' => 'Is Running',
        ];
    }
}
