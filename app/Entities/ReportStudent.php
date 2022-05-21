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
        'subjectId' => null,
        'studentId' => null,
        'point' => null,
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
    protected $semesterId;

    /**
     * @var integer
     * @OA\Property()
     */
    protected $subjectId;

    /**
     * @var integer
     * @OA\Property()
     */
    protected $studentId;

    /**
     * @var integer
     * @OA\Property()
     */
    protected $point;
}
