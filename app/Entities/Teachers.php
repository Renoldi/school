<?php

namespace App\Entities;

use CodeIgniter\Entity\Entity;
use OpenApi\Annotations as OA;

/**
 * @OA\Schema(
 *   schema="Teachers",
 * @OA\Property(
 *      property="id",
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
        'email' => null,
        'nip' => null,
        'name' => null,
        'gender' => null,
        'dob' => null,
        'privilegeId' => null,
        'rankId' => null,
        'rankTmt' => null,
        'groupId' => null,
        'schoolId' => null,
        'majorId' => null,
        'finishEducationLevel' => null,
        'mutation' => null,
        'ipAddress' => null,
        'about' => null,
        'image' => null,
        'statusId' => null,
        'employeeId' => null,
        'password' => null,
        'address' => null,
        'phone' => null,
    ];

    public function setPassword(string $pass)
    {
        $this->attributes['password'] = password_hash($pass, PASSWORD_BCRYPT);

        return $this;
    }

    /**
     * @var string
     * @OA\Property()
     */
    protected $email;

    /**
     * @var string
     * @OA\Property()
     */
    protected $nip;

    /**
     * @var string
     * @OA\Property()
     */
    protected $name;

    /**
     * @var string
     * @OA\Property()
     */
    protected $gender;

    /**
     * @var date
     * @OA\Property()
     */
    protected $dob;

    /**
     * @var integer
     * @OA\Property()
     */
    protected $privilegeId;

    /**
     * @var integer
     * @OA\Property()
     */
    protected $rankId;

    /**
     * @var integer
     * @OA\Property()
     */
    protected $rankTmt;

    /**
     * @var integer
     * @OA\Property()
     */
    protected $groupId;

    /**
     * @var integer
     * @OA\Property()
     */
    protected $schoolId;

    /**
     * @var integer
     * @OA\Property()
     */
    protected $majorId;

    /**
     * @var integer
     * @OA\Property()
     */
    protected $finishEducationLevel;

    /**
     * @var date
     * @OA\Property()
     */
    protected $mutation;

    /**
     * @var string
     * @OA\Property()
     */
    protected $ipAddress;

    /**
     * @var string
     * @OA\Property()
     */
    protected $about;

    /**
     * @var string
     * @OA\Property()
     */
    protected $image;

    /**
     * @var integer
     * @OA\Property()
     */
    protected $statusId;

    /**
     * @var integer
     * @OA\Property()
     */
    protected $employeeId ;

    /**
     * @var string
     * @OA\Property()
     */
    protected $password;

    /**
     * @var string
     * @OA\Property()
     */
    protected $address;

    /**
     * @var string
     * @OA\Property()
     */
    protected $phone;
}
