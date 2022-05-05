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
 * )
 */
class Exams extends Entity
{
    protected $datamap = [];
    protected $dates   = ['createdAt', 'updatedAt', 'deletedAt'];
    protected $casts   = [];
    protected $attributes = [
        'classId' => null,
        'subjectId' => null,
        'question' => null,
        'questionImage' => null,
        'show' => null,
        'a' => null,
        'b' => null,
        'c' => null,
        'd' => null,
        'e' => null,
        'answer' => null,
        'point' => null,
        'status' => null,
    ];

    /**
     * @var integer
     * @OA\Property()
     */
    protected $classId;

    /**
     * @var integer
     * @OA\Property()
     */
    protected $subjectId;

    /**
     * @var string
     * @OA\Property()
     */
    protected $question;

    /**
     * @var string
     * @OA\Property()
     */
    protected $questionImage;
    
    /**
     * @var string
     * @OA\Property()
     */
    protected $show;

    /**
     * @var string
     * @OA\Property()
     */
    protected $a;

    /**
     * @var string
     * @OA\Property()
     */
    protected $b;

    /**
     * @var string
     * @OA\Property()
     */
    protected $c;

    /**
     * @var string
     * @OA\Property()
     */
    protected $d;

    /**
     * @var string
     * @OA\Property()
     */
    protected $e;

    /**
     * @var string
     * @OA\Property()
     */
    protected $answer;

    /**
     * @var integer
     * @OA\Property()
     */
    protected $status;
}
