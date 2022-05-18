<?php

namespace App\Database\Seeds;

use App\Entities\Groups as EntitiesGroups;
use App\Models\Groups as ModelsGroups;
use CodeIgniter\Database\Seeder;

class Groups extends Seeder
{
    public function run()
    {
        $model = new ModelsGroups();
        $entities = new EntitiesGroups();

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
