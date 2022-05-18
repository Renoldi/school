<?php

namespace App\Entities;

use CodeIgniter\Entity\Entity;

class Status extends Entity
{
    protected $datamap = [];
    protected $dates   = ['createdAt', 'updatedAt', 'deletedAt'];
    protected $casts   = [];
    protected $attributes = [
        'name' => null,
    ];

    /**
     * @var string
     * @OA\Property()
     */
    protected $name;
}
