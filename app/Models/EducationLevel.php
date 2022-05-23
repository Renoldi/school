<?php

namespace App\Models;

use CodeIgniter\Model;

class EducationLevel extends Model
{
    protected $DBGroup          = 'default';
    protected $table            = 'educationlevels';
    protected $primaryKey       = 'id';
    protected $useAutoIncrement = true;
    protected $insertID         = 0;
    protected $returnType       = \App\Entities\EducationLevel::class;
    protected $useSoftDeletes   = false;
    protected $protectFields    = true;
    protected $allowedFields    = [
        'name',
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
        'name' => 'required|is_unique[educationlevels.name,id,{id}]',
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
