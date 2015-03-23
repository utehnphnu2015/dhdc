<?php

namespace frontend\models;

use Yii;

/**
 * This is the model class for table "sys_count_import".
 *
 * @property integer $id
 * @property string $filename
 * @property string $upload_date
 * @property string $upload_time
 * @property string $import_date
 * @property integer $person
 * @property integer $address
 * @property integer $death
 * @property integer $chronic
 * @property integer $card
 * @property integer $home
 * @property integer $village
 * @property integer $disability
 * @property integer $provider
 * @property integer $women
 * @property integer $drugallergy
 * @property integer $functional
 * @property integer $icf
 * @property integer $service
 * @property integer $diagnosis_opd
 * @property integer $drug_opd
 * @property integer $procedure_opd
 * @property integer $charge_opd
 * @property integer $surveillance
 * @property integer $accident
 * @property integer $labfu
 * @property integer $chronicfu
 * @property integer $admission
 * @property integer $diagnosis_ipd
 * @property integer $drug_ipd
 * @property integer $procedure_ipd
 * @property integer $charge_ipd
 * @property integer $appointment
 * @property integer $dental
 * @property integer $rehabilitation
 * @property integer $ncdscreen
 * @property integer $fp
 * @property integer $prenatal
 * @property integer $anc
 * @property integer $labor
 * @property integer $postnatal
 * @property integer $newborn
 * @property integer $newborncare
 * @property integer $epi
 * @property integer $nutrition
 * @property integer $specialpp
 * @property integer $community_activity
 * @property integer $community_service
 */
class SysCountImport extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'sys_count_import';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            
            [['person', 'address', 'death', 'chronic', 'card', 'home', 'village', 'disability', 'provider', 'women', 'drugallergy', 'functional', 'icf', 'service', 'diagnosis_opd', 'drug_opd', 'procedure_opd', 'charge_opd', 'surveillance', 'accident', 'labfu', 'chronicfu', 'admission', 'diagnosis_ipd', 'drug_ipd', 'procedure_ipd', 'charge_ipd', 'appointment', 'dental', 'rehabilitation', 'ncdscreen', 'fp', 'prenatal', 'anc', 'labor', 'postnatal', 'newborn', 'newborncare', 'epi', 'nutrition', 'specialpp', 'community_activity', 'community_service'], 'integer'],
            [['filename','upload_date', 'upload_time', 'import_date'], 'string', 'max' => 255]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'filename' => 'Filename',
            'upload_date' => 'Upload Date',
            'upload_time' => 'Upload Time',
            'import_date' => 'Import Date',
            'person' => 'Person',
            'address' => 'Address',
            'death' => 'Death',
            'chronic' => 'Chronic',
            'card' => 'Card',
            'home' => 'Home',
            'village' => 'Village',
            'disability' => 'Disability',
            'provider' => 'Provider',
            'women' => 'Women',
            'drugallergy' => 'Drugallergy',
            'functional' => 'Functional',
            'icf' => 'Icf',
            'service' => 'Service',
            'diagnosis_opd' => 'Diagnosis Opd',
            'drug_opd' => 'Drug Opd',
            'procedure_opd' => 'Procedure Opd',
            'charge_opd' => 'Charge Opd',
            'surveillance' => 'Surveillance',
            'accident' => 'Accident',
            'labfu' => 'Labfu',
            'chronicfu' => 'Chronicfu',
            'admission' => 'Admission',
            'diagnosis_ipd' => 'Diagnosis Ipd',
            'drug_ipd' => 'Drug Ipd',
            'procedure_ipd' => 'Procedure Ipd',
            'charge_ipd' => 'Charge Ipd',
            'appointment' => 'Appointment',
            'dental' => 'Dental',
            'rehabilitation' => 'Rehabilitation',
            'ncdscreen' => 'Ncdscreen',
            'fp' => 'Fp',
            'prenatal' => 'Prenatal',
            'anc' => 'Anc',
            'labor' => 'Labor',
            'postnatal' => 'Postnatal',
            'newborn' => 'Newborn',
            'newborncare' => 'NewbornCare',
            'epi' => 'Epi',
            'nutrition' => 'Nutrition',
            'specialpp' => 'Specialpp',
            'community_activity' => 'Community Activity',
            'community_service' => 'Community Service',
        ];
    }
}
