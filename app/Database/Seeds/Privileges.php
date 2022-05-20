<?php

namespace App\Database\Seeds;

use App\Entities\Privileges as EntitiesPrivileges;
use App\Models\Privileges as ModelsPrivileges;
use CodeIgniter\Database\Seeder;

class Privileges extends Seeder
{
    public function run()
    {
        $faker = \Faker\Factory::create();
        $model = new ModelsPrivileges();
        $entities = new EntitiesPrivileges();
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
