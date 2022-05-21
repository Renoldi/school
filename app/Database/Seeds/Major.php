<?php

namespace App\Database\Seeds;

use App\Entities\Major as EntitiesMajor;
use App\Models\Major as ModelsMajor;
use CodeIgniter\Database\Seeder;

class Major extends Seeder
{
    public function run()
    {
        $model = new ModelsMajor();
        $entities = new EntitiesMajor();
        $data = [
            ['name' => 'Biologi', 'statusId' => 1],
            ['name' => 'PKn', 'statusId' => 1],
            ['name' => 'Sosiologi', 'statusId' => 1],
            ['name' => 'Ekonomi', 'statusId' => 1],
            ['name' => 'B. Indonesia', 'statusId' => 1],
            ['name' => 'Kimia', 'statusId' => 1],
            ['name' => 'TIA', 'statusId' => 1],
            ['name' => 'Fiqih', 'statusId' => 1],
            ['name' => 'Penjaskes', 'statusId' => 1],
            ['name' => 'B. Inggris', 'statusId' => 1],
            ['name' => 'B. Arab', 'statusId' => 1],
            ['name' => 'BK', 'statusId' => 1],
            ['name' => 'Fisika', 'statusId' => 1],
            ['name' => 'PAI', 'statusId' => 1],
            ['name' => 'Sejarah', 'statusId' => 1],
            ['name' => 'Matematika', 'statusId' => 1],
            ['name' => 'IPA', 'statusId' => 1],
            ['name' => 'Perdagangan', 'statusId' => 1],
        ];
        foreach ($data as $data) {
            $entities->fill($data);
            if (!$model->save($entities)) {
                var_dump($model->errors());
            }
        }
    }
}
