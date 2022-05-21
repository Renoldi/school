<?php

namespace App\Database\Seeds;

use App\Entities\EducationLevel as EntitiesEducationLevel;
use App\Models\EducationLevel as ModelsEducationLevel;
use CodeIgniter\Database\Seeder;

class EducationLevel extends Seeder
{
    public function run()
    {
        $model = new ModelsEducationLevel();
        $entities = new EntitiesEducationLevel();

        $data = [
            ['name' => 'Taman kanak-kanak', 'statusId' => 1,],
            ['name' => 'Sekolah dasar', 'statusId' => 1,],
            ['name' => 'Sekolah menengah pertama', 'statusId' => 1,],
            ['name' => 'Sekolah menengah atas', 'statusId' => 1,],
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
