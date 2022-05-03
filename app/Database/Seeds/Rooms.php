<?php

namespace App\Database\Seeds;

use App\Entities\Rooms as EntitiesRooms;
use App\Models\Rooms as ModelsRooms;
use CodeIgniter\Database\Seeder;

class Rooms extends Seeder
{
    public function run()
    {
        $model = new ModelsRooms();
        $entities = new EntitiesRooms();
        $data = [
            [
                'name'  => 'IPA 1',
                'status'  =>  1,
                'departmentId' => 1
            ],
            [
                'name'  => 'IPA 2',
                'status'  =>  1,
                'departmentId' => 1
            ],
            [
                'name'  => 'IPA 3',
                'status'  =>  1,
                'departmentId ' => 1
            ],
            [
                'name'  => 'IPA 4',
                'status'  =>  1,
                'departmentId ' => 1
            ],
            [
                'name'  => 'IPS 1',
                'status'  =>  1,
                'departmentId' => 2
            ],
            [
                'name'  => 'IPS 2',
                'status'  =>  1,
                'departmentId' => 2
            ],
            [
                'name'  => 'IPS 3',
                'status'  =>  1,
                'departmentId' => 2
            ],
        ];
        foreach ($data as $datass) {
            $entities->fill($datass);
            if (!$model->save($entities)) {
                var_dump($model->errors());
            }
        }
    }
}
