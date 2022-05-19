<?php

namespace App\Entities;

use CodeIgniter\Entity\Entity;
use OpenApi\Annotations as OA;
/**
 * @OA\Schema(
 *   schema="TeacherTasks",
 * @OA\Property(
 *      property="id",
 *      type="integer",
 *    ) 
 * )
 */
class TeacherTasks extends Entity
{
    protected $datamap = [];
    protected $dates   = ['createdAt','updatedAt','deletedAt'];
    protected $casts   = [];
    protected $attributes = [
        'teacherId' => null,
        'taskId' => null,
        'tmtTask' => null,
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
    protected $taskId;
    /**
     * @var date
     * @OA\Property()
     */
    protected $tmtTask;
    
    /**
     * @var integer
     * @OA\Property()
     */
    protected $duration;
}
