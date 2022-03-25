<?php

namespace App\Entities;

use CodeIgniter\Entity\Entity;
/**
 * @OA\Schema(
 *   schema="Resultexams",
 * @OA\Property(
 *      property="id",
 *      type="integer",
 *    ),
 * @OA\Property(
 *      property="studentId",
 *      type="integer",
 *    ), 
 * @OA\Property(
 *      property="examId",
 *      type="integer",
 *    ), 
 * @OA\Property(
 *      property="choise",
 *      type="string",
 *    ),    
 * @OA\Property(
 *      property="date",
 *      type="datetime",
 *    ), 
 * )
 */
class Resultexams extends Entity
{
    protected $datamap = [];
    protected $dates   = ['created_at', 'updated_at', 'deleted_at'];
    protected $casts   = [];
    protected $attributes = [
        'studentId' => null,
        'examId' => null,
        'choise' => null,
        'date' => null,
    ];
}
