<?php

namespace App\Database\Seeds;

use App\Entities\Resultexams as EntitiesResultexams;
use App\Models\Resultexams as ModelsResultexams;
use CodeIgniter\Database\Seeder;

class Resultexams extends Seeder
{
    public function run()
    {
        helper('genarator_string');
        $model = new ModelsResultexams();
        $entities = new EntitiesResultexams();
        for ($i = 0; $i < 4000; $i++) {
            $data = [
                'studentId' => rand(1, 500),
                'examId' => rand(1, 13101),
                'choise' => generateRandomString(1, 'abcde'),
                'status' => 1,
            ];
            $entities->fill($data);
            if (!$model->save($entities)) {
                var_dump($model->errors());
            }
        }
    }
}
