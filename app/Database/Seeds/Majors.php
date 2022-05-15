<?php

namespace App\Database\Seeds;

use App\Entities\Majors as EntitiesMajors;
use App\Models\Majors as ModelsMajors;
use CodeIgniter\Database\Seeder;

class Majors extends Seeder
{
    public function run()
    {
        $model = new ModelsMajors();
        $entities = new EntitiesMajors();
        $data = [
            [
                'name' => 'Biologi',
                'status' => 1
            ],
            [
                'name' => 'PKn',
                'status' => 1
            ],
            [
                'name' => 'Sosiologi',
                'status' => 1
            ],
            [
                'name' => 'Ekonomi',
                'status' => 1
            ],
            [
                'name' => 'B. Indonesia',
                'status' => 1
            ],
            [
                'name' => 'Kimia',
                'status' => 1
            ],
            [
                'name' => 'TIA',
                'status' => 1
            ],
            [
                'name' => 'Fiqih',
                'status' => 1
            ],
            [
                'name' => 'Penjaskes',
                'status' => 1
            ],

            [
                'name' => 'B. Inggris',
                'status' => 1
            ],
            [
                'name' => 'B. Arab',
                'status' => 1
            ],
            [
                'name' => 'BK',
                'status' => 1
            ],
            [
                'name' => 'Fisika',
                'status' => 1
            ],
            [
                'name' => 'PAI',
                'status' => 1
            ],
            [
                'name' => 'Sejarah',
                'status' => 1
            ],
            [
                'name' => 'Matematika',
                'status' => 1
            ],
            [
                'name' => 'IPA',
                'status' => 1
            ],
            [
                'name' => 'Perdagangan',
                'status' => 1
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
