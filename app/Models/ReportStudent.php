<?php

namespace App\Models;

use CodeIgniter\Model;

class ReportStudent extends Model
{
    protected $DBGroup          = 'default';
    protected $table            = 'reportstudents';
    protected $primaryKey       = 'id';
    protected $useAutoIncrement = true;
    protected $insertID         = 0;
    protected $returnType       = \App\Entities\ReportStudent::class;
    protected $useSoftDeletes   = false;
    protected $protectFields    = true;
    protected $allowedFields    = [
        'roomId',
        'classId',
        'semesterId',
        'subjectId',
        'point',
        'studentId',
    ];

    // Dates
    protected $useTimestamps = true;
    protected $dateFormat   = 'int';  
    protected $createdField  = 'createdAt';
    protected $updatedField  = 'updatedAt';
    protected $deletedField  = 'deletedAt';
    
    // Validation
    protected $validationRules      = [
        'roomId' => 'required|integer',
        'classId' => 'required|integer',
        'semesterId' => 'required|integer',
        'subjectId' => 'required|integer',
        'studentId' => 'required|integer',
        'point' => 'required|integer',
    ];
    protected $validationMessages   = [];
    protected $skipValidation       = false;
    protected $cleanValidationRules = true;

    // Callbacks
    protected $allowCallbacks = true;
    protected $beforeInsert   = [];
    protected $afterInsert    = [];
    protected $beforeUpdate   = [];
    protected $afterUpdate    = [];
    protected $beforeFind     = [];
    protected $afterFind      = [];
    protected $beforeDelete   = [];
    protected $afterDelete    = [];
}
