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
 * @OA\Property(
 *      property="roomId",
 *      type="integer",
 *    ), 
 * @OA\Property(
 *      property="classId",
 *      type="integer",
 *    ), 
 * @OA\Property(
 *      property="teacherId",
 *      type="string",
 *    ),    
 * @OA\Property(
 *      property="status",
 *      type="integer",
 *    ), 
 * )
 */
class Hoomrooms extends Entity
{
    protected $datamap = [];
    protected $dates   = ['created_at', 'updated_at', 'deleted_at'];
    protected $casts   = [];
    protected $attributes = [
        'roomId' => null,
        'classId' => null,
        'teacherId' => null,
        'status' => null,
    ];
}
