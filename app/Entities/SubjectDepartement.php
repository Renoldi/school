<?php

namespace App\Entities;

use CodeIgniter\Entity\Entity;
use OpenApi\Annotations as OA;

/**
 * @OA\Schema(
 *   schema="SubjectDepartement",
 * @OA\Property(
 *      property="id",
 *      type="integer",
 *    ) 
 * )
 */
class SubjectDepartement extends Entity
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
