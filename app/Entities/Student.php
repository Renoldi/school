<?php

namespace App\Entities;

use CodeIgniter\Entity\Entity;
use OpenApi\Annotations as OA;

/**
 * @OA\Schema(
 *   schema="Student",
 * @OA\Property(
 *      property="id",
 *      type="integer",
 *    ) 
 * )
 */
class Student extends Entity
{
    protected $datamap = [];
    protected $dates   = ['createdAt', 'updatedAt', 'deletedAt'];
    protected $casts   = [];
    protected $attributes = [
        'id' => null,
        'email' => null,
        'name' => null,
        'classId' => null,
        'roomId' => null,
        'gender' => null,
        'placeOfBirth' => null,
        'dayOfBirth' => null,
        'nis' => null,
        'nisn' => null,
        'noKk' => null,
        'nik' => null,
        'numberOfSiblings' => null,
        'fromOfSiblings' => null,
        'orphan' => null,
        'schoolId' => null,
        'address' => null,
        'fatherNik' => null,
        'fatherName' => null,
        'fatherEmployeeId' => null,
        'fatherSchoolId' => null,
        'fatherincome' => null,
        'motherNik' => null,
        'motherName' => null,
        'motherEmployeeId' => null,
        'motherSchoolId' => null,
        'motherincome' => null,
        'image' => null,
        'phone' => null,
        'phoneFamily' => null,
        'password' => null,
        'ipAddress' => null,
        'about' => null,
        'statusId' => null,
        'privilegeId' => null,
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
    protected $name;
    
    /**
     * @var integer
     * @OA\Property()
     */
    protected $classId;
    
    /**
     * @var integer
     * @OA\Property()
     */
    protected $roomId;
    
    /**
     * @var string
     * @OA\Property()
     */
    protected $gender;
    
    /**
     * @var string
     * @OA\Property()
     */
    protected $placeOfBirth;
    
    /**
     * @var date
     * @OA\Property()
     */
    protected $dayOfBirth;
    
    /**
     * @var string
     * @OA\Property()
     */
    protected $nis;
    
    /**
     * @var string
     * @OA\Property()
     */
    protected $nisn;
    
    /**
     * @var string
     * @OA\Property()
     */
    protected $noKk;
    
    /**
     * @var string
     * @OA\Property()
     */
    protected $nik;
    
    /**
     * @var integer
     * @OA\Property()
     */
    protected $numberOfSiblings;
    
    /**
     * @var integer
     * @OA\Property()
     */
    protected $fromOfSiblings;
    
    /**
     * @var string
     * @OA\Property()
     */
    protected $orphan;
    
    /**
     * @var integer
     * @OA\Property()
     */
    protected $schoolId;
    
    /**
     * @var string
     * @OA\Property()
     */
    protected $address;
    
    /**
     * @var string
     * @OA\Property()
     */
    protected $fatherNik;
    
    /**
     * @var string
     * @OA\Property()
     */
    protected $fatherName;
    
    /**
     * @var integer
     * @OA\Property()
     */
    protected $fatherEmployeeId;
    
    /**
     * @var integer
     * @OA\Property()
     */
    protected $fatherSchoolId;
    
    /**
     * @var integer
     * @OA\Property()
     */
    protected $fatherincome;
    
    /**
     * @var string
     * @OA\Property()
     */
    protected $motherNik;
    
    /**
     * @var string
     * @OA\Property()
     */
    protected $motherName;
    
    /**
     * @var integer
     * @OA\Property()
     */
    protected $motherEmployeeId;
    
    /**
     * @var integer
     * @OA\Property()
     */
    protected $motherSchoolId;
    
    /**
     * @var integer
     * @OA\Property()
     */
    protected $motherincome;
    
    /**
     * @var string
     * @OA\Property()
     */
    protected $image;
    
    /**
     * @var string
     * @OA\Property()
     */
    protected $phone;
    
    /**
     * @var string
     * @OA\Property()
     */
    protected $phoneFamily;
    
    /**
     * @var string
     * @OA\Property()
     */
    protected $password;
    
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
     * @var integer
     * @OA\Property()
     */
    protected $statusId;
    
    /**
     * @var integer
     * @OA\Property()
     */
    protected $privilegeId;
     

    
}
