<?php

namespace App\Entities;

use CodeIgniter\Entity\Entity;
use OpenApi\Annotations as OA;

/**
 * @OA\Schema(
 *   schema="Schools",
 * @OA\Property(
 *      property="id",
 *      type="integer",
 *    ) 
 * )
 */
class Schools extends Entity
{
    protected $datamap = [];
    protected $dates   = ['createdAt', 'updatedAt', 'deletedAt'];
    protected $casts   = [];
    protected $attributes = [
        'name' => null,
        'npsn' => null,
        'statusId' => null,
        'address' => null,
        'educationLevelId' => null,
    ];

    /**
     * @var string
     * @OA\Property()
     */
    protected $name;
    /**
     * @var string
     * @OA\Property()
     */
    protected $npsn;
     /**
     * @var integer
     * @OA\Property()
     */
    protected $statusId;
    /**
     * @var string
     * @OA\Property()
     */
    protected $address;
     /**
     * @var integer
     * @OA\Property()
     */
    protected $educationLevelId;
}
