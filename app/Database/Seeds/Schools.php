<?php

namespace App\Database\Seeds;

use App\Entities\Schools as EntitiesSchools;
use App\Models\Schools as ModelsSchools;
use CodeIgniter\Database\Seeder;

class Schools extends Seeder
{
    public function run()
    {
        $model = new ModelsSchools();
        $entities = new EntitiesSchools();
        $data = [
            ['name' => 'UNJ', 'status' => 1],
            ['name' => 'IAIN', 'status' => 1],
            ['name' => 'USU', 'status' => 1],
            ['name' => 'FKIP', 'status' => 1],
            ['name' => 'STAI', 'status' => 1],
            ['name' => 'UNSYIAH', 'status' => 1],
            ['name' => 'STKIP', 'status' => 1],
            ['name' => 'STAIN', 'status' => 1],
            ['name' => 'UNSYAH', 'status' => 1],
            ['name' => 'MAN', 'status' => 1],
            ['name' => 'SMEA', 'status' => 1],
        ];
        foreach ($data as $data) {
            $entities->fill($data);
            if (!$model->save($entities)) {
                var_dump($model->errors());
            }
        }
    }
}
