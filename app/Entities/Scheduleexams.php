<?php

namespace App\Entities;

use CodeIgniter\Entity\Entity;
/**
 * @OA\Schema(
 *   schema="Scheduleexams",
 * @OA\Property(
 *      property="id",
 *      type="integer",
 *    ),
 * @OA\Property(
 *      property="subjectId",
 *      type="integer",
 *    ), 
 * @OA\Property(
 *      property="classId",
 *      type="integer",
 *    ), 
 * @OA\Property(
 *      property="start",
 *      type="datetime",
 *    ), 
 * @OA\Property(
 *      property="end",
 *      type="datetime",
 *    ), 
 * @OA\Property(
 *      property="status",
 *      type="integer",
 *    ), 
 * )
 */
class Scheduleexams extends Entity
{
    protected $datamap = [];
    protected $dates   = ['createdAt', 'updatedAt', 'deletedAt'];
    protected $casts   = [];
    protected $attributes = [
        'subjectId' => null,
        'classId' => null,
        'start' => null,
        'end' => null,
        'status' => null,
    ];
}
