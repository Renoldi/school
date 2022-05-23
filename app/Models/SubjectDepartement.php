<?php

namespace App\Models;

use CodeIgniter\Model;

class SubjectDepartement extends Model
{
    protected $DBGroup          = 'default';
    protected $table            = 'subjectdepartements';
    protected $primaryKey       = 'id';
    protected $useAutoIncrement = true;
    protected $insertID         = 0;
    protected $returnType       = \App\Entities\SubjectDepartement::class;
    protected $useSoftDeletes   = false;
    protected $protectFields    = true;
    protected $allowedFields    = [
        'departmentId','subjectId'
    ];

    // Dates
    protected $useTimestamps = true;
    protected $dateFormat   = 'int';  
    protected $createdField  = 'createdAt';
    protected $updatedField  = 'updatedAt';
    protected $deletedField  = 'deletedAt';

    // Validation
    protected $validationRules      = [
        'departmentId' => 'required|integer',
        'subjectId' => 'required|integer', 
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
