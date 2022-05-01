<?php

namespace App\Database\Seeds;

use App\Entities\Departments as EntitiesDepartments;
use App\Models\Departments as ModelsDepartments;
use CodeIgniter\Database\Seeder;

class Departments extends Seeder
{
    public function run()
    {
        $faker = \Faker\Factory::create();
        $model = new ModelsDepartments();
        $entities = new EntitiesDepartments();
        $data = [
            [
                'name'  => 'IPA',
                'status'  =>  1, 
            ],
            [
                'name'  => 'IPS',
                'status'  =>  1, 
            ],
        ];
        foreach ($data as $datass) {
            $entities->fill($datass);
            $model->save($entities);
        }
    }
}
