<?php

namespace App\Database\Seeds;

use App\Entities\Classes as EntitiesClasses;
use App\Models\Classes as ModelsClasses;
use CodeIgniter\Database\Seeder;

class Classes extends Seeder
{
    public function run()
    {
        $faker = \Faker\Factory::create();
        $model = new ModelsClasses();
        $entities = new EntitiesClasses();

        $data = [
            [
                'name'  => 'X',
                'status'  =>  1,
            ],
            [
                'name'  => 'XI',
                'status'  =>  1,
            ],
            [
                'name'  => 'XII',
                'status'  =>  1,
            ],
        ];
        foreach ($data as $data) {
            $entities->fill($data);
            $model->save($entities);
        }
    }
}
