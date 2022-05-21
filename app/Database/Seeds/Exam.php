<?php

namespace App\Database\Seeds;

use App\Entities\Exam as EntitiesExam;
use App\Models\Classs;
use App\Models\Exam as ModelsExam;
use App\Models\Subject;
use CodeIgniter\Database\Seeder;

class Exam extends Seeder
{
    public function run()
    {
        helper('genarator_string');
        $model = new ModelsExam();
        $entities = new EntitiesExam();
        $show = ['both', 'text', 'image'];

        $classes = new Classs();
        $subjects = new Subject();

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
