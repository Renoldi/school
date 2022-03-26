<?php

namespace App\Models;

use CodeIgniter\Model;

class Students extends Model
{
    protected $DBGroup          = 'default';
    protected $table            = 'students';
    protected $primaryKey       = 'id';
    protected $useAutoIncrement = true;
    protected $insertID         = 0;
    protected $returnType       = \App\Entities\Students::class;
    protected $useSoftDeletes   = false;
    protected $protectFields    = true;
    protected $allowedFields    = [
        'nisn',
        'name',
        'gender',
        'password',
        'status',
        'classId',
        'roomId',
        'image',
    ];

    // Dates
    protected $useTimestamps = true;
    protected $dateFormat    = 'datetime';
    protected $createdField  = 'createdAt';
    protected $updatedField  = 'updatedAt';
    protected $deletedField  = 'deletedAt';

    // Validation
    protected $validationRules      = [
        'nisn' => 'required|min_length[15]|alpha_numeric|is_unique[students.nisn,id,{id}]',
        'name' => 'required|',
        'gender' => 'required|',
        'password' => 'required|min_length[5]',
        'status' => 'required|integer',
        'classId' => 'required|integer',
        'roomId' => 'required|integer',
        // 'image' => 'required|',
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
