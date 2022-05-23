<?php

namespace App\Entities;

use CodeIgniter\Entity\Entity;
use OpenApi\Annotations as OA;

/**
 * @OA\Schema(
 *   schema="Scheduleexam",
 * @OA\Property(
 *      property="id",
 *      type="integer",
 *    )
 * )
 */
class Scheduleexam extends Entity
{
    protected $datamap = [];
    protected $dates   = ['createdAt', 'updatedAt', 'deletedAt'];
    protected $casts   = [];
    protected $attributes = [
        'subjectId' => null,
        'classId' => null,
        'start' => null,
        'end' => null,
        'statusId' => null,
    ];


    /**
     * @var integer
     * @OA\Property()
     */
    protected $subjectId;

    /**
     * @var integer
     * @OA\Property()
     */
    protected $classId;

    /**
     * @var datetime
     * @OA\Property()
     */
    protected $start;

    /**
     * @var datetime
     * @OA\Property()
     */
    protected $end;

    /**
     * @var integer
     * @OA\Property()
     */
    protected $statusId;
}
