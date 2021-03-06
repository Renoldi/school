<?php

namespace App\Models;

use CodeIgniter\Model;

class Resultexam extends Model
{
    protected $DBGroup          = 'default';
    protected $table            = 'resultexams';
    protected $primaryKey       = 'id';
    protected $useAutoIncrement = true;
    protected $insertID         = 0;
    protected $returnType       = \App\Entities\Resultexam::class;
    protected $useSoftDeletes   = false;
    protected $protectFields    = true;
    protected $allowedFields    = [
        'studentId',
        'examId',
        'choise',
        'semesterId',
        'statusId',
        'classId',
    ];

    // Dates
    protected $useTimestamps = true;
    protected $dateFormat   = 'int';  
    protected $createdField  = 'createdAt';
    protected $updatedField  = 'updatedAt';
    protected $deletedField  = 'deletedAt';

    // Validation
    protected $validationRules      = [
        'studentId' => 'required|integer',
        'examId' => 'required|integer',
        'statusId' => 'required|integer',
        'semesterId' => 'required|integer',
        'choise' => 'required|string',
        'classId' => 'required|string',
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
