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
        'nip',
        'name',
        'gender',
        'position',
        'dob',
        'subjectId',
        'email',
        'image',
        'status',
        'privilegeId',
        'password',
        'ipAddress',
        'about',
    ];

    // Dates
    protected $useTimestamps = true;
    protected $dateFormat    = 'datetime';
    protected $createdField  = 'createdAt';
    protected $updatedField  = 'updatedAt';
    protected $deletedField  = 'deletedAt';

    // Validation
    protected $validationRules      = [
        'nip' => 'required|min_length[10]|alpha_numeric|is_unique[teachers.nip,id,{id}]',
        'name' => 'required|min_length[4]',
        'password' => 'required|min_length[5]',
        'gender' => 'required|alpha',
        'position' => 'required|',
        'dob' => 'required|',
        'subjectId' => 'required|integer',
        'email' => 'required|valid_email|is_unique[teachers.email,id,{id}]',
        'status' => 'required|integer',
        'ipAddress' => 'required',
        'about' => 'required',
        'privilegeId' => 'required|integer',
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
