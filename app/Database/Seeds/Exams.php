<?php

namespace App\Database\Seeds;

use App\Entities\Exams as EntitiesExams;
use App\Models\Exams as ModelsExams;
use CodeIgniter\Database\Seeder;

class Exams extends Seeder
{
    public function run()
    {
        helper('genarator_string');
        $model = new ModelsExams();
        $entities = new EntitiesExams();

        for ($i = 0; $i < 100; $i++) {
            $faker = \Faker\Factory::create();
            $data = [
                'classId'  => rand(1, 3),
                'subjectId'  => rand(1, 26),
                'question'  => $faker->text,
                'a'  => $faker->text,
                'b'  => $faker->text,
                'c'  => $faker->text,
                'd'  => $faker->text,
                'e'  => $faker->text,
                'answer'  => generateRandomString(1, 'abcde'),
                'status'  => 1,
            ];
            $entities->fill($data);
            if (!$model->save($entities)) {
                var_dump($model->errors());
            }
        }
    }
}
