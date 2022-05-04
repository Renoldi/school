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
        $model = new ModelsTeachers();
        $entities = new EntitiesTeachers();
        for ($i = 0; $i < 100; $i++) {
           
            $data  = [
                'nip' => generateRandomString(9, '0123456789abcdefghijklmnopqrstuvwxyz') . rand(0, 100),
                'email' => $faker->email(),
                'name' => $faker->name(),
                'dob' => $faker->date(),
                'image' => 'assets/avatar.png',
                'password' => 'admin123',
                'subjectId' => rand(1, 26),
                'gender' => generateRandomString(1, 'mf'),
                'status' => 1,
                'position'=>'teacher',
                'privilegeId' => 4,
                'about' => 'created',
                'ipAddress' => '127.0.0.1',
            ];
            $entities->fill($data);
            if (!$model->save($entities)) {
                var_dump($model->errors());
            }
        }
    }
}
