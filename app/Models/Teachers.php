<?php

namespace App\Models;

use CodeIgniter\Model;

class Teachers extends Model
{
    protected $DBGroup          = 'default';
    protected $table            = 'teachers';
    protected $primaryKey       = 'id';
    protected $useAutoIncrement = true;
    protected $insertID         = 0;
    protected $returnType       = \App\Entities\Teachers::class;
    protected $useSoftDeletes   = false;
    protected $protectFields    = true;
    protected $allowedFields    = [
        'email',
        'nip',
        'name',
        'gender',
        'dob',
        'privilegeId',
        'rankId',
        'rankTmt',
        'groupId',
        'educationLevelId',
        'schoolId',
        'majorId',
        'finishEducationLevel',
        'mutation',
        'ipAddress',
        'about',
        'image',
        'status',
        'isPn',
        'password',
        'address',
        'phone',
    ];

    // Dates
    protected $useTimestamps = true;
    protected $dateFormat   = 'int';  
    protected $createdField  = 'createdAt';
    protected $updatedField  = 'updatedAt';
    protected $deletedField  = 'deletedAt';

    // Validation
    protected $validationRules      = [
        'email' => 'required|valid_email|is_unique[teachers.email,id,{id}]',
        'name' => 'required|min_length[4]',
        'password' => 'required|min_length[5]',
        'status' => 'required|integer', 
        'privilegeId' => 'required|integer',
        'isPn' => 'required|integer',
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
