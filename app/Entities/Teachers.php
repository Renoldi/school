<?php

namespace App\Entities;

use CodeIgniter\Entity\Entity;
/**
 * @OA\Schema(
 *   schema="Teachers",
 * @OA\Property(
 *      property="id",
 *      type="integer",
 *    ),
 * @OA\Property(
 *      property="nip",
 *      type="string",
 *    ), 
 * @OA\Property(
 *      property="name",
 *      type="string",
 *    ), 
 * @OA\Property(
 *      property="gender",
 *      type="integer",
 *    ), 
 * @OA\Property(
 *      property="position",
 *      type="string",
 *    ), 
 * @OA\Property(
 *      property="dob",
 *      type="date",
 *    ), 
 * @OA\Property(
 *      property="subjectId",
 *      type="integer",
 *    ),  
 * @OA\Property(
 *      property="status",
 *      type="integer",
 *    ), 
 * @OA\Property(
 *      property="image",
 *      type="string",
 *    ), 
 * @OA\Property(
 *      property="email",
 *      type="string",
 *    ), 
 * @OA\Property(
 *      property="privilegeId",
 *      type="integer",
 *    ), 
 * )
 */
class Teachers extends Entity
{
    protected $datamap = [];
    protected $dates   = ['createdAt', 'updatedAt', 'deletedAt'];
    protected $casts   = [];
    protected $attributes = [
        'nip' => null,
        'name' => null,
        'gender' => null,
        'position' => null,
        'dob' => null,
        'subjectId' => null,
        'email' => null,
        'image' => null,
        'status' => null,
        'privilegeId' => null,
    ];
}
