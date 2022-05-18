<?php

namespace App\Entities;

use CodeIgniter\Entity\Entity;
use OpenApi\Annotations as OA;
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
        'teacherId' => null,
        'subjectId' => null,
        'classId ' => null,
        'duration' => null,
    ];

    /**
     * @var integer
     * @OA\Property()
     */
    protected $teacherId;
    
    /**
     * @var integer
     * @OA\Property()
     */
    protected $subjectId;
    /**
     * @var integer
     * @OA\Property()
     */
    protected $classId;
    
    /**
     * @var integer
     * @OA\Property()
     */
    protected $duration;
}
