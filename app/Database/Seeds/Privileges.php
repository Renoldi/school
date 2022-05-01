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
            [
                'name'  => 'superadmin',
                'status'  =>  1,
            ],
            [
                'name'  => 'admin',
                'status'  =>  1,
            ],
            [
                'name'  => 'editor',
                'status'  =>  1,
            ],
            [
                'name'  => 'teacher',
                'status'  =>  1,
            ],
            [
                'name'  => 'student',
                'status'  =>  1,
            ],
        ];
        foreach ($data as $data) {
            $entities->fill($data);
            $model->save($entities);
        }
    }
}
