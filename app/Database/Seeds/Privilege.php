<?php

namespace App\Database\Seeds;

use App\Entities\Privilege as EntitiesPrivilege;
use App\Models\Privilege as ModelsPrivilege;
use CodeIgniter\Database\Seeder;

class Privilege extends Seeder
{
    public function run()
    {
        $faker = \Faker\Factory::create();
        $model = new ModelsPrivilege();
        $entities = new EntitiesPrivilege();
        $data = [
            ['name' => 'superadmin', 'statusId' => 1,],
            ['name' => 'headmaster', 'statusId' => 1,],
            ['name' => 'admin', 'statusId' => 1,],
            ['name' => 'editor', 'statusId' => 1,],
            ['name' => 'teacher', 'statusId' => 1,],
            ['name' => 'student', 'statusId' => 1,],
            ['name' => 'new', 'statusId' => 1,],
            ['name' => 'alumni', 'statusId' => 1,],
        ];
        foreach ($data as $data) {
            $entities->fill($data);
            if (!$model->save($entities)) {
                var_dump($model->errors());
            }
        }
    }
}
