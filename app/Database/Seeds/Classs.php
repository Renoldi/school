<?php

namespace App\Database\Seeds;

use App\Entities\Classs as EntitiesClasss;
use App\Models\Classs as ModelClasss;
use CodeIgniter\Database\Seeder;

class Classs extends Seeder
{
    public function run()
    {
        $faker = \Faker\Factory::create();
        $model = new ModelClasss();
        $entities = new EntitiesClasss();

        $data = [
            [
                'name'  => 'X',
                'status'  =>  1,
            ],
            [
                'name'  => 'XI',
                'status'  =>  1,
            ],
            [
                'name'  => 'XII',
                'status'  =>  1,
            ],
        ];
        foreach ($data as $data) {
            $entities->fill($data);
            if (!$model->save($entities)) {
                var_dump($model->errors());
            }
        }
    }
}
