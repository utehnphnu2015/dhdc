<?php

namespace frontend\models;

use Yii;

/**
 * This is the model class for table "sqlscript".
 *
 * @property integer $id
 * @property string $topic
 * @property string $sql_script
 * @property string $user
 * @property string $d_update
 */
class Sqlscript extends \yii\db\ActiveRecord {

    /**
     * @inheritdoc
     */
    public static function tableName() {
        return 'sqlscript';
    }

    /**
     * @inheritdoc
     */
    public function rules() {
        return [
            [['sql_script'], 'string'],
            [['sql_script','topic'], 'required'],
            [['d_update'], 'safe'],
            [['topic', 'user'], 'string', 'max' => 255]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels() {
        return [
            'id' => 'ID',
            'topic' => 'ชื่อคำสั่ง',
            'sql_script' => 'ชุดคำสั่ง SQL',
            'user' => 'ผู้สร้าง',
            'd_update' => 'วันที่ปรับปรุง',
        ];
    }

}
