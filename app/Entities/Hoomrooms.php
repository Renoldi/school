<?php

namespace App\Entities;

use CodeIgniter\Entity\Entity;

/**
 * @OA\Schema(
 *   schema="Hoomrooms",
 * @OA\Property(
 *      property="id",
 *      type="integer",
 *    ),
 * )
 */
class Hoomrooms extends Entity
{
    protected $datamap = [];
    protected $dates   = ['createdAt', 'updatedAt', 'deletedAt'];
    protected $casts   = [];
    protected $attributes = [
        'roomId' => null,
        'classId' => null,
        'teacherId' => null,
        'duration' => null,
        'statusId' => null,
    ];

    /**
     * @var integer
     * @OA\Property()
     */
    protected $roomId;
    
    /**
     * @var integer
     * @OA\Property()
     */
    protected $classId;

    /**
     * @var integer
     * @OA\Property()
     */
    protected $teacherId;

    /**
     * @var integer
     * @OA\Property()
     */
    protected $duration;

    /**
     * @var integer
     * @OA\Property()
     */
    protected $statusId;
}
