<?php

namespace App\Database\Seeds;

use App\Entities\Rank as EntitiesRank;
use App\Models\Rank as ModelsRank;
use CodeIgniter\Database\Seeder;

class Rank extends Seeder
{
    public function run()
    {
        $model = new ModelsRank();
        $entities = new EntitiesRank();

        $data = [
            ['name' => 'I', 'statusId' => 1,],
            ['name' => 'II', 'statusId' => 1,],
            ['name' => 'III', 'statusId' => 1,],
            ['name' => 'IV', 'statusId' => 1,],
        ];
        foreach ($data as $data) {
            $entities->fill($data);
            if (!$model->save($entities)) {
                var_dump($model->errors());
            }
        }
    }
}
