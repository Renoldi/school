<?php

namespace App\Database\Seeds;

use App\Entities\Room as EntitiesRoom;
use App\Models\Room as ModelsRoom;
use CodeIgniter\Database\Seeder;

class Room extends Seeder
{
    public function run()
    {
        $model = new ModelsRoom();
        $entities = new EntitiesRoom();
        $data = [
            ['name' => 'IPA 1', 'statusId' => 1, 'departmentId' => 1],
            ['name' => 'IPA 2', 'statusId' => 1, 'departmentId' => 1],
            ['name' => 'IPA 3', 'statusId' => 1, 'departmentId ' => 1],
            ['name' => 'IPA 4', 'statusId' => 1, 'departmentId ' => 1],
            ['name' => 'IPS 1', 'statusId' => 1, 'departmentId' => 2],
            ['name' => 'IPS 2', 'statusId' => 1, 'departmentId' => 2],
            ['name' => 'IPS 3', 'statusId' => 1, 'departmentId' => 2],
        ];
        foreach ($data as $datass) {
            $entities->fill($datass);
            if (!$model->save($entities)) {
                var_dump($model->errors());
            }
        }
    }
}
