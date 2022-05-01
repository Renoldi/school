<?php

namespace App\Entities;

use CodeIgniter\Entity\Entity;

/**
 * @OA\Schema(
 *   schema="Subjects",
 * @OA\Property(
 *      property="id",
 *      type="integer",
 *    ),
 * @OA\Property(
 *      property="name",
 *      type="string",
 *    ), 
 * @OA\Property(
 *      property="status",
 *      type="integer",
 *    ), 
 * )
 */
class Subjects extends Entity
{
    protected $datamap = [];
    protected $dates   = ['createdAt', 'updatedAt', 'deletedAt'];
    protected $casts   = [];
    protected $attributes = [
        'name' => null,
        'status' => null,
        'departmentId' => null,
    ];
}
