<?php

namespace App\Entities;

use CodeIgniter\Entity\Entity;
/**
 * @OA\Schema(
 *   schema="Exams",
 * @OA\Property(
 *      property="id",
 *      type="integer",
 *    ),
 * @OA\Property(
 *      property="classId",
 *      type="integer",
 *    ), 
 * @OA\Property(
 *      property="subjectId",
 *      type="integer",
 *    ), 
 * @OA\Property(
 *      property="question",
 *      type="string",
 *    ), 
 * @OA\Property(
 *      property="questionImage",
 *      type="string",
 *    ),  
 * @OA\Property(
 *      property="a",
 *      type="string",
 *    ),  
 * @OA\Property(
 *      property="b",
 *      type="string",
 *    ),  
 * @OA\Property(
 *      property="c",
 *      type="string",
 *    ),  
 * @OA\Property(
 *      property="d",
 *      type="string",
 *    ),  
 * @OA\Property(
 *      property="e",
 *      type="string",
 *    ),  
 * @OA\Property(
 *      property="correct",
 *      type="string",
 *    ),  
 * @OA\Property(
 *      property="status",
 *      type="integer",
 *    ), 
 * )
 */
class Exams extends Entity
{
    protected $datamap = [];
    protected $dates   = ['created_at', 'updated_at', 'deleted_at'];
    protected $casts   = [];
    protected $attributes = [
        'classId' => null,
        'subjectId' => null,
        'question' => null,
        'questionImage' => null,
        'a' => null,
        'b' => null,
        'c' => null,
        'd' => null,
        'e' => null,
        'correct' => null,
        'status' => null,
    ];
}
