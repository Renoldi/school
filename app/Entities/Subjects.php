<?php

namespace App\Entities;

use CodeIgniter\Entity\Entity;
use OpenApi\Annotations as OA;

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
        'statusId' => null,
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
    // protected $statusId;

    // /**
    //  * @var integer
    //  * @OA\Property()
    //  */
    // protected $departmentId;
}
