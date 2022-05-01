<?php

namespace App\Database\Seeds;

use App\Entities\Students as EntitiesStudents;
use App\Models\Students as ModelsStudents;
use CodeIgniter\Database\Seeder;

class Students extends Seeder
{
    public function run()
    {
        helper('genarator_string');

        $model = new ModelsStudents();
        $entities = new EntitiesStudents();
        for ($i = 0; $i < 100; $i++) {
            $faker = \Faker\Factory::create();
            $data  = [
                'nisn' => generateRandomString(9, '0123456789abcdefghijklmnopqrstuvwxyz') . rand(0, 100),
                'email' => $faker->email(),
                'name' => $faker->name(),
                'image' => $faker->image(),
                'password' => 'admin123',
                'classId' => rand(1, 3),
                'roomId' => rand(1, 7),
                'gender' => generateRandomString(1, 'mf'),
                'status' => 1,
                'privilegeId' => 5,
            ];

            $entities->fill($data);
            $model->save($entities);
        }
    }
}
