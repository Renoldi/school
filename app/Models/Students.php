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
        'id',
        'email',
        'name',
        'classId',
        'roomId',
        'gender',
        'placeOfBirth',
        'dayOfBirth',
        'nis',
        'nisn',
        'noKk',
        'nik',
        'numberOfSiblings',
        'fromOfSiblings',
        'orphan',
        'schoolId',
        'address',
        'fatherNik',
        'fatherName',
        'fatherEmployeeId',
        'fatherSchoolId',
        'fatherincome',
        'motherNik',
        'motherName',
        'motherEmployeeId',
        'motherSchoolId',
        'motherincome',
        'image',
        'phone',
        'phoneFamily',
        'password',
        'ipAddress',
        'about',
        'statusId',
        'privilegeId',
    ];

    // Dates
    protected $useTimestamps = true;
    protected $dateFormat   = 'int';
    protected $createdField  = 'createdAt';
    protected $updatedField  = 'updatedAt';
    protected $deletedField  = 'deletedAt';

    // Validation
    protected $validationRules      = [
        // 'nisn' => 'required|min_length[10]|alpha_numeric|is_unique[students.nisn,id,{id}]',
        'email' => 'required|valid_email|is_unique[students.email,id,{id}]',
        'name' => 'required|',
        'gender' => 'required|',
        'password' => 'required|min_length[5]',
        'statusId' => 'required|integer',
        'classId' => 'required|integer',
        'roomId' => 'required|integer',
        'privilegeId' => 'required|integer',
        // 'ipAddress' => 'required',
        // 'about' => 'required',

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
