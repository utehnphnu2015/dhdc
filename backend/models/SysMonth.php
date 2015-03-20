<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "sys_month".
 *
 * @property string $month
 */
class SysMonth extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'sys_month';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['month','selyear'], 'required'],
            [['month'], 'string', 'max' => 6]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'month' => 'Month',
            'selyear'=>'SelYear'
        ];
    }
}
