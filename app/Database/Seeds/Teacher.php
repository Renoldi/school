<?php

namespace App\Database\Seeds;

use App\Entities\Teacher as EntitiesTeacher;
use App\Models\Teacher as ModelsTeacher;
use CodeIgniter\Database\Seeder;
use PhpOffice\PhpSpreadsheet\Calculation\MathTrig\Random;

class Teacher extends Seeder
{
    public function run()
    {
        helper('genarator_string');
        $faker = \Faker\Factory::create();
        $model = new ModelsTeacher();
        $entities = new EntitiesTeacher();
        for ($i = 0; $i < 1; $i++) {

            $data  = [
                'nip' => generateRandomString(9, '0123456789abcdefghijklmnopqrstuvwxyz') . rand(0, 100),
                'email' => ($i == 0) ? 'renoldi@admin.com' : $faker->email(),
                'name' => ($i == 0) ? 'super admin' : $faker->name(),
                'dob' => $faker->date(),
                'image' => 'assets/avatar.png',
                'password' => ($i == 0) ? 'admin' : 'admin123',
                'gender' => generateRandomString(1, 'LP'),
                'statusId' => 1,
                'privilegeId' => ($i == 0) ? 1 : 4,
                'about' => 'created',
                'ipAddress' => '127.0.0.1',
                'employeeId' => ($i == 0) ? 14 : rand(2,25),
                'educationlevelId' => ($i == 0) ? 10 : rand(2,25),
            ];
            $entities->fill($data);
            if (!$model->save($entities)) {
                var_dump($model->errors());
            }
        }
    }
}
