<?php

namespace App\Database\Seeds;

use App\Entities\Department as EntitiesDepartment;
use App\Models\Department as ModelsDepartment;
use CodeIgniter\Database\Seeder;

class Department extends Seeder
{
    public function run()
    {
        $faker = \Faker\Factory::create();
        $model = new ModelsDepartment();
        $entities = new EntitiesDepartment();
        $data = [
            ['name' => 'IPA', 'statusId' => 1,],
            ['name' => 'IPS', 'statusId' => 1,],
        ];
        foreach ($data as $datass) {
            $entities->fill($datass);
            if (!$model->save($entities)) {
                var_dump($model->errors());
            }
        }
    }
}
