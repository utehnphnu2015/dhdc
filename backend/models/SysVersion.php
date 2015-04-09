<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "sys_version".
 *
 * @property string $version
 */
class SysVersion extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'sys_version';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['version'], 'string', 'max' => 255]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'version' => 'Version',
        ];
    }
}
