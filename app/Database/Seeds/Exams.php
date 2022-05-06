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
        $show = ['both','text','image'];
        $total = 4000;
        for ($i = 0; $i < $total; $i++) {
            $faker = \Faker\Factory::create();
            $data = [
                'classId'  => rand(1, 3),
                'subjectId'  => rand(1, 26),
                'question'  => $faker->paragraph(),
                'questionImage'  => $faker->imageUrl(),
                'show' => $show[array_rand($show)],
                'a'  => $faker->paragraph(),
                'b'  => $faker->paragraph(),
                'c'  => $faker->paragraph(),
                'd'  => $faker->paragraph(),
                'e'  => $faker->paragraph(),
                'point' => 2,
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
