<?php

namespace App\Entities;

use CodeIgniter\Entity\Entity;
use OpenApi\Annotations as OA;
/**
 * @OA\Schema(
 *   schema="Resultexam",
 * @OA\Property(
 *      property="id",
 *      type="integer",
 *    )    
 * )
 */
class Resultexam extends Entity
{
    protected $datamap = [];
    protected $dates   = ['createdAt', 'updatedAt', 'deletedAt'];
    protected $casts   = [];
    protected $attributes = [
        'studentId' => null,
        'examId' => null,
        'choise' => null,
        'statusId' => null,
        'semesterId' => null,
        'classId' => null,
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

   /**
     * @var integer
     * @OA\Property()
     */
    protected $semesterId;
   /**
     * @var integer
     * @OA\Property()
     */
    protected $classId;
}
