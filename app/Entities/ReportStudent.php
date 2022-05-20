<?php

namespace App\Entities;

use CodeIgniter\Entity\Entity;
use OpenApi\Annotations as OA;

/**
 * @OA\Schema(
 *   schema="ReportStudent",
 * @OA\Property(
 *      property="id",
 *      type="integer",
 *    ) 
 * )
 */
class ReportStudent extends Entity
{
    protected $datamap = [];
    protected $dates   = ['createdAt', 'updatedAt', 'deletedAt'];
    protected $casts   = [];
    protected $attributes = [ 
        'roomId' => null, 
        'classId' => null, 
        'semesterId' => null, 
        'subjectId' =>null, 
        'point' => null, 
    ];

    /**
     * @var string
     * @OA\Property()
     */
    protected $name;
    /**
     * @var integer
     * @OA\Property()
     */
    protected $statusId;
}
