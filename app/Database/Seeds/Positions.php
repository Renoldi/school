<?php

namespace App\Database\Seeds;

use App\Entities\Positions as EntitiesPositions;
use App\Models\Positions as ModelsPositions;
use CodeIgniter\Database\Seeder;

class Positions extends Seeder
{
    public function run()
    {
        $model = new ModelsPositions();
        $entities = new EntitiesPositions();

        $data = [
            [
                'name'  => 'Kepala',
                'status'  =>  1,
            ],
            [
                'name'  => 'Guru Madya',
                'status'  =>  1,
            ],
            [
                'name'  => 'Pengadministrasi',
                'status'  =>  1,
            ],
            [
                'name'  => 'Ka. TU',
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
