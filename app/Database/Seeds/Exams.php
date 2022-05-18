<?php

namespace App\Database\Seeds;

use App\Entities\Exams as EntitiesExams;
use App\Models\Classes;
use App\Models\Exams as ModelsExams;
use App\Models\Subjects;
use CodeIgniter\Database\Seeder;

class Exams extends Seeder
{
    public function run()
    {
        helper('genarator_string');
        $model = new ModelsExams();
        $entities = new EntitiesExams();
        $show = ['both', 'text', 'image'];

        $classes = new Classes();
        $subjects = new Subjects();

        $dataclasses = $classes->findAll();
        $datasubjects = $subjects->findAll();

        foreach ($dataclasses as $class) {
            foreach ($datasubjects as $subject) {
                for ($i = 0; $i < 60; $i++) {
                    $faker = \Faker\Factory::create();
                    $data = [
                        'classId' => $class->id,
                        // 'classId'=> rand(1, 3),
                        // 'subjectId'=> rand(1, 26),
                        'subjectId' => $subject->id,
                        'question' => $faker->paragraph(),
                        'questionImage' => $faker->imageUrl(),
                        'show' => $show[array_rand($show)],
                        'a' => $faker->paragraph(),
                        'b' => $faker->paragraph(),
                        'c' => $faker->paragraph(),
                        'd' => $faker->paragraph(),
                        'e' => $faker->paragraph(),
                        'point' => 2,
                        'answer' => generateRandomString(1, 'abcde'),
                        'statusId' => 1,
                    ];
                    $entities->fill($data);
                    if (!$model->save($entities)) {
                        var_dump($model->errors());
                    }
                }
            }
        }
    }
}
