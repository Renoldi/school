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
        'nisn' => null,
        'name' => null,
        'gender' => null,
        'password' => null,
        'datetime' => null,
        'updatedAt' => null,
        'status' => null,
        'classId' => null,
        'roomId' => null,
        'image' => null,
    ];

    // Dates
    protected $useTimestamps = false;
    protected $dateFormat    = 'datetime';
    protected $createdField  = 'created_at';
    protected $updatedField  = 'updated_at';
    protected $deletedField  = 'deleted_at';

    // Validation
    protected $validationRules      = [
        'nisn' => 'required|min_length[15]|alpha_numeric|is_unique[students.nisn,id,{id}]',
        'name' => 'required|',
        'gender' => 'required|',
        'password' => 'required|min_length[5]',
        'datetime' => 'required|',
        'updatedAt' => 'required|',
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
