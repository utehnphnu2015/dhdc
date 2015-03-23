<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "custom_report".
 *
 * @property integer $id
 * @property string $rpt_topic
 * @property string $rpt_file
 * @property string $rpt_group
 * @property string $note1
 * @property string $note2
 * @property string $note3
 * @property string $note4
 */
class CustomReport extends \yii\db\ActiveRecord {

    /**
     * @inheritdoc
     */
    public static function tableName() {
        return 'custom_report';
    }

    /**
     * @inheritdoc
     */
    public function rules() {
        return [
            [['rpt_topic', 'rpt_file', 'rpt_group', 'note1', 'note2', 'note3', 'note4'], 'string', 'max' => 255]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels() {
        return [
            'id' => 'ID',
            'rpt_topic' => 'ชื่อรายงาน',
            'rpt_group' => 'กลุ่มรายงาน',
            'rpt_file' => 'ชื่อไฟล์รายงาน (.mrt)',
            'note1' => 'Tomcat URL',
            'note2' => 'ผู้พัฒนารายงาน',
            'note3' => 'ปรับปรุงเมื่อ',
            'note4' => 'Note4',
        ];
    }

}
