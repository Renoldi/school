<?php

namespace App\Entities;

use CodeIgniter\Entity\Entity;
/**
 * @OA\Schema(
 *   schema="Students",
 * @OA\Property(
 *      property="id",
 *      type="integer",
 *    ) 
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
        'status' => null,
        'classId' => null,
        'roomId' => null,
        'image' => null,
        'privilegeId' => null,
        'email' => null,
        'ipAddress' => null,
        'about' => null,
    ];

    
    /**
     * @var string
     * @OA\Property()
     */
    protected $nisn;
    
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
     * @var string
     * @OA\Property()
     */
    protected $password;
    
    /**
     * @var integer
     * @OA\Property()
     */
    protected $status;
    
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
    protected $image;
    
    /**
     * @var integer
     * @OA\Property()
     */
    protected $privilegeId;
    
    /**
     * @var string
     * @OA\Property()
     */
    protected $email;
    
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
    
    public function setPassword(string $pass)
    {
        $this->attributes['password'] = password_hash($pass, PASSWORD_BCRYPT);
        return $this;
    }
}
