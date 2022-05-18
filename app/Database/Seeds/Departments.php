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
