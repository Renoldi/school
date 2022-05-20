<?php

namespace App\Database\Seeds;

use App\Entities\Semester as EntitiesSemester;
use App\Models\Semester as ModelsSemester;
use CodeIgniter\Database\Seeder;

class Semester extends Seeder
{
    public function run()
    {
        $model = new ModelsSemester();
        $entities = new EntitiesSemester();
        $data = [
            ['name' => 'Semester 1', 'statusId' => 1,],
            ['name' => 'Tengah Semester 1', 'statusId' => 1,],
            ['name' => 'Semester 2', 'statusId' => 1,],
            ['name' => 'Tengah Semester 2', 'statusId' => 1,],
        ];
        foreach ($data as $data) {
            $entities->fill($data);
            if (!$model->save($entities)) {
                var_dump($model->errors());
            }
        }
    }
}
