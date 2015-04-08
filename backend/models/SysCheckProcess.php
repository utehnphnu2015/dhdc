<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "sys_check_process".
 *
 * @property string $fnc_name
 * @property string $time
 */
class SysCheckProcess extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'sys_check_process';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['fnc_name', 'time'], 'string', 'max' => 255]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'fnc_name' => 'Fnc Name',
            'time' => 'Time',
        ];
    }
}
