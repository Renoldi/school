<?php

namespace App\Database\Seeds;

use App\Entities\Classs as EntitiesClasss;
use App\Models\Classs as ModelsClasss;
use CodeIgniter\Database\Seeder;

class Classs extends Seeder
{
    public function run()
    {
        $model = new ModelsClasss();
        $entities = new EntitiesClasss();

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
