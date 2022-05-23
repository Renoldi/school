<?php

namespace App\Database\Seeds;

use App\Entities\Group as EntitiesGroup;
use App\Models\Group as ModelsGroup;
use CodeIgniter\Database\Seeder;

class Group extends Seeder
{
    public function run()
    {
        $model = new ModelsGroup();
        $entities = new EntitiesGroup();

        $data = [
            ['name'  => 'a', 'statusId' => 1,],
            ['name'  => 'b', 'statusId' => 1,],
            ['name'  => 'c', 'statusId' => 1,],
            ['name'  => 'd', 'statusId' => 1,],
        ];
        foreach ($data as $data) {
            $entities->fill($data);
            if (!$model->save($entities)) {
                var_dump($model->errors());
            }
        }
    }
}
