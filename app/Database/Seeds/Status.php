<?php

namespace App\Database\Seeds;

use App\Entities\Status as EntitiesStatus;
use App\Models\Status as ModelsStatus;
use CodeIgniter\Database\Seeder;

class Status extends Seeder
{
    public function run()
    {
        $model = new ModelsStatus();
        $entities = new EntitiesStatus();

        $data = [
            ['name' => 'Active',],
            ['name' => 'Not Active',],
        ];
        foreach ($data as $data) {
            $entities->fill($data);
            if (!$model->save($entities)) {
                var_dump($model->errors());
            }
        }
    }
}
