<?php

namespace App\Database\Seeds;

use App\Entities\Classes as EntitiesClasses;
use App\Models\Classes as ModelClasses;
use CodeIgniter\Database\Seeder;

class Classes extends Seeder
{
    public function run()
    {
        $model = new ModelClasses();
        $entities = new EntitiesClasses();

        $data = [
            ['name' => 'X', 'statusId' => 1,],
            ['name' => 'XI', 'statusId' => 1,],
            ['name' => 'XII', 'statusId' => 1,],
        ];
        foreach ($data as $data) {
            $entities->fill($data);
            if (!$model->save($entities)) {
                var_dump($model->errors());
            }
        }
    }
}
