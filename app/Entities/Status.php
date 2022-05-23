<?php

namespace App\Entities;

use CodeIgniter\Entity\Entity;
use OpenApi\Annotations as OA;
/**
 * @OA\Schema(
 *   schema="Status",
 * @OA\Property(
 *      property="id",
 *      type="integer",
 *    ) 
 * )
 */
class Status extends Entity
{
    protected $datamap = [];
    protected $dates   = ['createdAt', 'updatedAt', 'deletedAt'];
    protected $casts   = [];
    protected $attributes = [
        'name' => null,
    ];

    /**
     * @var string
     * @OA\Property()
     */
    protected $name;
}
