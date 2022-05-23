<?php

namespace App\Entities;

use CodeIgniter\Entity\Entity;
use OpenApi\Annotations as OA;

/**
 * @OA\Schema(
 *   schema="Group",
 * @OA\Property(
 *      property="id",
 *      type="integer",
 *    ) 
 * )
 */
class Group extends Entity
{
    protected $datamap = [];
    protected $dates   = ['createdAt','updatedAt','deletedAt'];
    protected $casts   = [];

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
