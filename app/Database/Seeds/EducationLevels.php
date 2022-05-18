<?php

namespace App\Database\Seeds;

use App\Entities\EducationLevels as EntitiesEducationLevels;
use App\Models\EducationLevels as ModelsEducationLevels;
use CodeIgniter\Database\Seeder;

class EducationLevels extends Seeder
{
    public function run()
    {
        $model = new ModelsEducationLevels();
        $entities = new EntitiesEducationLevels();

        $data = [
            ['name' => 'SD', 'statusId' => 1,],
            ['name' => 'SMP', 'statusId' => 1,],
            ['name' => 'SMA', 'statusId' => 1,],
            ['name' => 'MAN', 'statusId' => 1,],
            ['name' => 'SMK', 'statusId' => 1,],
            ['name' => 'SMEA', 'statusId' => 1,],
            ['name' => 'D1', 'statusId' => 1,],
            ['name' => 'D2', 'statusId' => 1,],
            ['name' => 'D3', 'statusId' => 1,],
            ['name' => 'S1', 'statusId' => 1,],
            ['name' => 'S2', 'statusId' => 1,],
            ['name' => 'S3', 'statusId' => 1,],
        ];
        foreach ($data as $data) {
            $entities->fill($data);
            if (!$model->save($entities)) {
                var_dump($model->errors());
            }
        }
    }
}
