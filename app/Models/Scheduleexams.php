<?php

namespace App\Models;

use CodeIgniter\Model;

class Scheduleexams extends Model
{
    protected $DBGroup          = 'default';
    protected $table            = 'scheduleexams';
    protected $primaryKey       = 'id';
    protected $useAutoIncrement = true;
    protected $insertID         = 0;
    protected $returnType       = \App\Entities\Scheduleexams::class;
    protected $useSoftDeletes   = false;
    protected $protectFields    = true;
    protected $allowedFields    = [
        'subjectId',
        'classId',
        'start',
        'end',
        'status',
    ];

    // Dates
    protected $useTimestamps = true;
    protected $dateFormat    = 'int';  
    protected $createdField  = 'createdAt';
    protected $updatedField  = 'updatedAt';
    protected $deletedField  = 'deletedAt';

    // Validation
    protected $validationRules      = [
        'subjectId' => 'required|integer',
        'classId' => 'required|integer',
        'start' => 'required|valid_date',
        'end' => 'required|valid_date',
        'status' => 'required|integer',
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
