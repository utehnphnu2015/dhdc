<?php

namespace frontend\models;

use Yii;

/**
 * This is the model class for table "sys_report_template".
 *
 * @property integer $id
 * @property string $report_code
 * @property string $report_name
 * @property string $report_group
 * @property string $sql
 * @property string $gen_date
 * @property string $developer
 * @property string $note1
 * @property string $note2
 * @property string $note3
 * @property string $note4
 * @property string $note5
 */
class SysReportTemplate extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'sys_report_template';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['sql'], 'string'],
            [['gen_date'], 'safe'],
            [['report_code', 'report_name', 'report_group', 'developer', 'note1', 'note2', 'note3', 'note4', 'note5'], 'string', 'max' => 255]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'report_code' => Yii::t('app', 'Report Code'),
            'report_name' => Yii::t('app', 'Report Name'),
            'report_group' => Yii::t('app', 'Report Group'),
            'sql' => Yii::t('app', 'Sql'),
            'gen_date' => Yii::t('app', 'Gen Date'),
            'developer' => Yii::t('app', 'Developer'),
            'note1' => Yii::t('app', 'Note1'),
            'note2' => Yii::t('app', 'Note2'),
            'note3' => Yii::t('app', 'Note3'),
            'note4' => Yii::t('app', 'Note4'),
            'note5' => Yii::t('app', 'Note5'),
        ];
    }
}
