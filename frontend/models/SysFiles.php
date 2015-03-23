<?php

namespace frontend\models;

use Yii;

/**
 * This is the model class for table "sys_files".
 *
 * @property string $file_name
 */
class SysFiles extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'sys_files';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['file_name'], 'string', 'max' => 255]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'file_name' => 'File Name',
        ];
    }
}
