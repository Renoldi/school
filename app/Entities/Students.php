<?php

namespace App\Entities;

use CodeIgniter\Entity\Entity;
/**
 * @OA\Schema(
 *   schema="Students",
 * @OA\Property(
 *      property="id",
 *      type="integer",
 *    ),
 * @OA\Property(
 *      property="nisn",
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
 *      property="password",
 *      type="string",
 *    ), 
 * @OA\Property(
 *      property="datetime",
 *      type="datetime",
 *    ), 
 * @OA\Property(
 *      property="updatedAt",
 *      type="datetime",
 *    ), 
 * @OA\Property(
 *      property="classId",
 *      type="integer",
 *    ), 
 * @OA\Property(
 *      property="roomId",
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
 * )
 */
class Students extends Entity
{
    protected $datamap = [];
    protected $dates   = ['createdAt', 'updatedAt', 'deletedAt'];
    protected $casts   = [];
    protected $attributes = [
        'nisn' => null,
        'name' => null,
        'gender' => null,
        'password' => null,
        'datetime' => null,
        'updatedAt' => null,
        'status' => null,
        'classId' => null,
        'roomId' => null,
        'image' => null,
    ];
}
