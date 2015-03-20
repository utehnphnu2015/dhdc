<?php

namespace frontend\models;

use Yii;

/**
 * This is the model class for table "sys_count_all".
 *
 * @property string $hospcode
 * @property string $month
 * @property integer $person
 * @property integer $death
 * @property integer $service
 * @property integer $accident
 * @property integer $diagnosis_opd
 * @property integer $procedure_opd
 * @property integer $ncdscreen
 * @property integer $chronicfu
 * @property integer $labfu
 * @property integer $chronic
 * @property integer $fp
 * @property integer $epi
 * @property integer $nutrition
 * @property integer $prenatal
 * @property integer $anc
 * @property integer $labor
 * @property integer $postnatal
 * @property integer $newborn
 * @property integer $newborncare
 * @property integer $dental
 * @property integer $admission
 * @property integer $diagnosis_ipd
 * @property integer $procedure_ipd
 */
class SysCountAll extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'sys_count_all';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['hospcode', 'month'], 'required'],
            [['person', 'death', 'service', 'accident', 'diagnosis_opd', 'procedure_opd', 'ncdscreen', 'chronicfu', 'labfu', 'chronic', 'fp', 'epi', 'nutrition', 'prenatal', 'anc', 'labor', 'postnatal', 'newborn', 'newborncare', 'dental', 'admission', 'diagnosis_ipd', 'procedure_ipd'], 'integer'],
            [['hospcode'], 'string', 'max' => 5],
            [['month'], 'string', 'max' => 6]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'hospcode' => 'Hospcode',
            'month' => 'Month',
            'person' => 'Person',
            'death' => 'Death',
            'service' => 'Service',
            'accident' => 'Accident',
            'diagnosis_opd' => 'DiagnosisOpd',
            'procedure_opd' => 'ProcedureOpd',
            'ncdscreen' => 'Ncdscreen',
            'chronicfu' => 'Chronicfu',
            'labfu' => 'Labfu',
            'chronic' => 'Chronic',
            'fp' => 'Fp',
            'epi' => 'Epi',
            'nutrition' => 'Nutrition',
            'prenatal' => 'Prenatal',
            'anc' => 'Anc',
            'labor' => 'Labor',
            'postnatal' => 'Postnatal',
            'newborn' => 'Newborn',
            'newborncare' => 'Newborncare',
            'dental' => 'Dental',
            'admission' => 'Admission',
            'diagnosis_ipd' => 'DiagnosisIpd',
            'procedure_ipd' => 'ProcedureIpd',
        ];
    }
}
