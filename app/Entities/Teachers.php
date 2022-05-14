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
        'email' => null,
        'image' => null,
        'status' => null,
        'privilegeId' => null,
        'password' => null,
        'dob' => null,
        'ipAddress' => null,
        'about' => null,
        'isPn' => null,
    ];


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
     * @var string
     * @OA\Property()
     */
    protected $email;

     /**
     * @var string
     * @OA\Property()
     */
    protected $image;

     /**
     * @var integer
     * @OA\Property()
     */
    protected $status;

     /**
     * @var integer
     * @OA\Property()
     */
    protected $privilegeId;

     /**
     * @var string
     * @OA\Property()
     */
    protected $password;

     /**
     * @var date
     * @OA\Property()
     */
    protected $dob;

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
