<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "sys_upload_person_target".
 *
 * @property integer $id
 * @property string $file_name
 * @property string $file_size
 * @property string $upload_date
 * @property string $upload_time
 * @property string $note1
 * @property string $note2
 * @property string $note3
 * @property string $note4
 * @property string $note5
 */
class SysUploadPersonTarget extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'sys_upload_person_target';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['file_name', 'file_size', 'upload_date', 'upload_time', 'note1', 'note2', 'note3', 'note4', 'note5'], 'string', 'max' => 255]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'file_name' => 'File Name',
            'file_size' => 'File Size',
            'upload_date' => 'วันที่นำเข้า',
            'upload_time' => 'เวลานำเข้า',
            'note1' => 'HOSPCODE',
            'note2' => 'จำนวน (แถว)',
            'note3' => 'ปีงบประมาณ',
            'note4' => 'Note4',
            'note5' => 'Note5',
        ];
    }
}
