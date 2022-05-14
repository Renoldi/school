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
            [
                'name'  => 'SD',
                'status'  =>  1,
            ],
            [
                'name'  => 'SMP',
                'status'  =>  1,
            ],
            [
                'name'  => 'SMA',
                'status'  =>  1,
            ],
            [
                'name'  => 'MAN',
                'status'  =>  1,
            ],
            [
                'name'  => 'SMK',
                'status'  =>  1,
            ],
            [
                'name'  => 'D1',
                'status'  =>  1,
            ],
            [
                'name'  => 'D2',
                'status'  =>  1,
            ],
            [
                'name'  => 'D3',
                'status'  =>  1,
            ],
            [
                'name'  => 'S1',
                'status'  =>  1,
            ],
            [
                'name'  => 'S2',
                'status'  =>  1,
            ],
            [
                'name'  => 'S3',
                'status'  =>  1,
            ],
        ];
        foreach ($data as $data) {
            $entities->fill($data);
            if (!$model->save($entities)) {
                var_dump($model->errors());
            }
        }
    }
}
