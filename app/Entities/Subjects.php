<?php

namespace App\Entities;

use CodeIgniter\Entity\Entity;

/**
 * @OA\Schema(
 *   schema="Subjects",
 * @OA\Property(
 *      property="id",
 *      type="integer",
 *    )  
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
        // 'departmentId' => null,
        // 'classId' => null,
    ];

    /**
     * @var string
     * @OA\Property()
     */
    protected $name;

    // /**
    //  * @var integer
    //  * @OA\Property()
    //  */
    // protected $status;

    // /**
    //  * @var integer
    //  * @OA\Property()
    //  */
    // protected $departmentId;
}
