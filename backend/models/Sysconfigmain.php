<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "sys_config_main".
 *
 * @property integer $id
 * @property string $provcode
 * @property string $distcode
 * @property string $district_code
 * @property string $district_name
 * @property string $note1
 * @property string $note2
 * @property string $note3
 * @property string $note4
 * @property string $note5
 */
class Sysconfigmain extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'sys_config_main';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['provcode', 'distcode', 'district_code', 'district_name', 'note1', 'note2', 'note3', 'note4', 'note5'], 'string', 'max' => 255]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'provcode' => 'Provcode',
            'distcode' => 'Distcode',
            'district_code' => 'District Code',
            'district_name' => 'District Name',
            'note1' => 'ชื่อผู้ดูแลระบบ',
            'note2' => 'ประชากรกลุ่มเป้าหมาย ณ วันที่',
            'note3' => 'Note3',
            'note4' => 'Note4',
            'note5' => 'Note5',
        ];
    }
}
