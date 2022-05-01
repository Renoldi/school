<?php

namespace App\Database\Seeds;

use App\Entities\Teachers as EntitiesTeachers;
use App\Models\Teachers as ModelsTeachers;
use CodeIgniter\Database\Seeder;

class Teachers extends Seeder
{
    public function run()
    {
        helper('genarator_string');

        $model = new ModelsTeachers();
        $entities = new EntitiesTeachers();
        for ($i = 0; $i < 100; $i++) {
            $faker = \Faker\Factory::create();
            $data  = [
                'nip' => generateRandomString(9, '0123456789abcdefghijklmnopqrstuvwxyz') . rand(0, 100),
                'email' => $faker->email(),
                'name' => $faker->name(),
                'image' => $faker->image(),
                'password' => 'admin123',
                'subjectId' => rand(1, 26),
                'gender' => generateRandomString(1, 'mf'),
                'status' => 1,
                'privilegeId' => 4,
            ];

            $entities->fill($data);
            $model->save($entities);
        }
    }
}
