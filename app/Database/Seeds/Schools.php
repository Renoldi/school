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
        //     ['name' => 'UNJ', 'statusId' => 1],
        //     ['name' => 'IAIN', 'statusId' => 1],
        //     ['name' => 'USU', 'statusId' => 1],
        //     ['name' => 'FKIP', 'statusId' => 1],
        //     ['name' => 'STAI', 'statusId' => 1],
        //     ['name' => 'UNSYIAH', 'statusId' => 1],
        //     ['name' => 'STKIP', 'statusId' => 1],
        //     ['name' => 'STAIN', 'statusId' => 1],
        //     ['name' => 'UNSYAH', 'statusId' => 1],
        //     ['name' => 'MAN', 'statusId' => 1],
        //     ['name' => 'SMEA', 'statusId' => 1],
        ];
        foreach ($data as $data) {
            $entities->fill($data);
            if (!$model->save($entities)) {
                var_dump($model->errors());
            }
        }
    }
}
