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

        $faker = \Faker\Factory::create();
        $model = new ModelsStudents();
        $entities = new EntitiesStudents();
        $student = 500;
        for ($i = 0; $i < $student; $i++) {
            $data  = [
                'nisn' => generateRandomString(9, '0123456789abcdefghijklmnopqrstuvwxyz') . rand(0, 100),
                'email' => ($i == 0) ? 'admins@admin.com' : $faker->email(),
                'name' => $faker->name(),
                'dob' => $faker->date(),
                'image' => 'assets/avatar.png',
                'password' => ($i == 0) ? 'admin' : 'admin123',
                'classId' => rand(1, 3),
                'roomId' => rand(1, 7),
                'gender' => generateRandomString(1, 'LP'),
                'statusId' => 1,
                'about' => 'created',
                'ipAddress' => '127.0.0.1',
                'privilegeId' => 5,
            ];

            $entities->fill($data);
            if (!$model->save($entities)) {
                var_dump($model->errors());
            }
        }
    }
}
