<?php

namespace App\Entities;

use CodeIgniter\Entity\Entity;

class Departments extends Entity
{
    protected $datamap = [];
    protected $dates   = ['createdAt','updatedAt','deletedAt'];
    protected $casts   = [];
    protected $attributes = [
        'name' => null,
        'status' => null,
    ];
}
