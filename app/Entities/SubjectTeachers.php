<?php

namespace App\Entities;

use CodeIgniter\Entity\Entity;
/**
 * @OA\Schema(
 *   schema="SubjectTeachers",
 * @OA\Property(
 *      property="id",
 *      type="integer",
 *    ) 
 * )
 */
class SubjectTeachers extends Entity
{
    protected $datamap = [];
    protected $dates   = ['createdAt','updatedAt','deletedAt'];
    protected $casts   = [];
    protected $attributes = [
        'departmentId' => null,
        'subjectId' => null,
    ];

    
    /**
     * @var integer
     * @OA\Property()
     */
    protected $departmentId;
    
    /**
     * @var integer
     * @OA\Property()
     */
    protected $subjectId;
}
