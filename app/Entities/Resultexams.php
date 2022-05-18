<?php

namespace App\Entities;

use CodeIgniter\Entity\Entity;
/**
 * @OA\Schema(
 *   schema="Resultexams",
 * @OA\Property(
 *      property="id",
 *      type="integer",
 *    )    
 * )
 */
class Resultexams extends Entity
{
    protected $datamap = [];
    protected $dates   = ['createdAt', 'updatedAt', 'deletedAt'];
    protected $casts   = [];
    protected $attributes = [
        'studentId' => null,
        'examId' => null,
        'choise' => null,
        'statusId' => null,
    ];

    /**
     * @var integer
     * @OA\Property()
     */
    protected $studentId;
    
    /**
     * @var integer
     * @OA\Property()
     */
    protected $examId;

   /**
     * @var string
     * @OA\Property()
     */
    protected $choise;
   /**
     * @var integer
     * @OA\Property()
     */
    protected $statusId;
}
