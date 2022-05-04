<?php

namespace App\Entities;

use CodeIgniter\Entity\Entity;

/**
 * @OA\Schema(
 *   schema="Departments",
 * @OA\Property(
 *      property="id",
 *      type="integer",
 *    ),
 * )
 */
class Departments extends Entity
{
    protected $datamap = [];
    protected $dates   = ['createdAt','updatedAt','deletedAt'];
    protected $casts   = [];
    protected $attributes = [
        'name' => null,
        'status' => null,
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
}
