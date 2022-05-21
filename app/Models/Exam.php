<?php

namespace App\Models;

use CodeIgniter\Model;

class Exam extends Model
{
    protected $DBGroup          = 'default';
    protected $table            = 'exams';
    protected $primaryKey       = 'id';
    protected $useAutoIncrement = true;
    protected $insertID         = 0;
    protected $returnType       = \App\Entities\Exam::class;
    protected $useSoftDeletes   = false;
    protected $protectFields    = true;
    protected $allowedFields    = [
        'classId',
        'subjectId',
        'question',
        'questionImage',
        'show',
        'a',
        'b',
        'c',
        'd',
        'e',
        'answer',
        'point',
        'statusId',
    ];

    // Dates
    protected $useTimestamps = true;
    protected $dateFormat   = 'int';  
    protected $createdField  = 'createdAt';
    protected $updatedField  = 'updatedAt';
    protected $deletedField  = 'deletedAt';

    // Validation
    protected $validationRules      = [
        'classId' => 'required|integer',
        'subjectId' => 'required|integer',
        // 'question' => 'required',
        // 'questionImage' => 'required',
        'a' => 'required',
        'b' => 'required',
        'c' => 'required',
        'd' => 'required',
        'e' => 'required',
        'answer' => 'required',
        'point' => 'required|integer',
        'statusId' => 'required|integer',
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
