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
            ['name' => 'Taman kanak-kanak', 'statusId' => 1,],
            ['name' => 'Sekolah dasar', 'statusId' => 1,],
            ['name' => 'Sekolah menengah pertama', 'statusId' => 1,],
            ['name' => 'Sekolah menengah atas', 'statusId' => 1,],
            ['name' => 'Pendidikan tinggi', 'statusId' => 1,], 
        ];
        foreach ($data as $data) {
            $entities->fill($data);
            if (!$model->save($entities)) {
                var_dump($model->errors());
            }
        }
    }
}
