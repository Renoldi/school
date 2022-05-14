<?php

namespace App\Database\Seeds;

use App\Entities\Ranks as EntitiesRanks;
use App\Models\Ranks as ModelsRanks;
use CodeIgniter\Database\Seeder;

class Ranks extends Seeder
{
    public function run()
    {
        $model = new ModelsRanks();
        $entities = new EntitiesRanks();

        $data = [
            [
                'name'  => 'I',
                'status'  =>  1,
            ],
            [
                'name'  => 'II',
                'status'  =>  1,
            ],
            [
                'name'  => 'III',
                'status'  =>  1,
            ],
            [
                'name'  => 'IV',
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
