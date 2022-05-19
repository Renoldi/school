<?php

namespace App\Database\Seeds;

use App\Entities\EmployeeStatus as EntitiesEmployeeStatus;
use App\Models\EmployeeStatus as ModelsEmployeeStatus;
use CodeIgniter\Database\Seeder;

class EmployeeStatus extends Seeder
{
    public function run()
    {
        $model = new ModelsEmployeeStatus();
        $entities = new EntitiesEmployeeStatus();
        $data = [
            ['name' => 'Pn', 'statusId' => 1,],
            ['name' => 'Honorer', 'statusId' => 1,],
        ];
        foreach ($data as $data) {
            $entities->fill($data);
            if (!$model->save($entities)) {
                var_dump($model->errors());
            }
        }
    }
}
