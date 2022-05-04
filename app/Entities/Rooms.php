<?php

namespace App\Entities;

use CodeIgniter\Entity\Entity;
/**
 * @OA\Schema(
 *   schema="Rooms",
 * @OA\Property(
 *      property="id",
 *      type="integer",
 *    ), 
 * )
 */
class Rooms extends Entity
{
    protected $datamap = [];
    protected $dates   = ['createdAt', 'updatedAt', 'deletedAt'];
    protected $casts   = [];
    protected $attributes = [
        'name' => null,
        'status' => null,
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
    protected $status;
    
    /**
     * @var integer
     * @OA\Property()
     */
    protected $departmentId;
}
