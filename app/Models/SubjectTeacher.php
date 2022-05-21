<?php

namespace App\Models;

use CodeIgniter\Model;

class SubjectTeacher extends Model
{
    protected $DBGroup          = 'default';
    protected $table            = 'subjectTeachers';
    protected $primaryKey       = 'id';
    protected $useAutoIncrement = true;
    protected $insertID         = 0;
    protected $returnType       = \App\Entities\SubjectTeacher::class;
    protected $useSoftDeletes   = false;
    protected $protectFields    = true;
    protected $allowedFields    = [
        'teacherId',
        'subjectId',
        'classId',
        'duration',
    ];

    // Dates
    protected $useTimestamps = true;
    protected $dateFormat   = 'int';
    protected $createdField  = 'createdAt';
    protected $updatedField  = 'updatedAt';
    protected $deletedField  = 'deletedAt';

    // Validation
    protected $validationRules      = [
        'teacherId' => 'required|integer',
        'subjectId' => 'required|integer',
        // 'classId' => 'required|integer',
        'duration' => 'required|integer',
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
