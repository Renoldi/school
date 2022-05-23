<?php

namespace App\Entities;

use CodeIgniter\Entity\Entity;
use OpenApi\Annotations as OA;
/**
 * @OA\Schema(
 *   schema="Room",
 * @OA\Property(
 *      property="id",
 *      type="integer",
 *    ), 
 * )
 */
class Room extends Entity
{
    protected $datamap = [];
    protected $dates   = ['createdAt', 'updatedAt', 'deletedAt'];
    protected $casts   = [];
    protected $attributes = [
        'name' => null,
        'statusId' => null,
        'departmentId' => null,
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
    
    /**
     * @var integer
     * @OA\Property()
     */
    protected $departmentId;
}
