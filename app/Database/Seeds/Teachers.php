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
        $faker = \Faker\Factory::create();

        for ($i = 0; $i < 10; $i++) {
            $model = new ModelsTeachers();
            $entities = new EntitiesTeachers();
            $data  = [
                'nip' => generateRandomString(9, '0123456789abcdefghijklmnopqrstuvwxyz') . rand(0, 100),
                'email' => $faker->email(),
                'name' => $faker->name(),
                'image' =>'assets/avatar.png',
                'password' => 'admin123',
                'subjectId' => rand(1, 26),
                'gender' => generateRandomString(1, 'mf'),
                'status' => 1,
                'privilegeId' => 4,
            ];
            var_dump($data);
            $entities->fill($data);
            $model->save($entities);
        }
    }
}
