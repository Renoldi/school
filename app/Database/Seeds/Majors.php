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
                'Biologi',
                'status' => 1
            ], 
            [
                'PKn',
                'status' => 1
            ], 
            [
                'Sosiologi',
                'status' => 1
            ],
            [
                'Ekonomi',
                'status' => 1
            ],
            [
                'B. Indonesia',
                'status' => 1
            ], 
            [
                'Kimia',
                'status' => 1
            ],
            [
                'TIA',
                'status' => 1
            ],
            [
                'Fiqih',
                'status' => 1
            ], 
            [
                'Penjaskes',
                'status' => 1
            ],

            [
                'B. Inggris',
                'status' => 1
            ], 
            [
                'B. Arab',
                'status' => 1
            ],
            
            [
                'BK',
                'status' => 1
            ], 
            [
                'Fisika',
                'status' => 1
            ], 
            [
                'PAI',
                'status' => 1
            ], 
            [
                'Sejarah',
                'status' => 1
            ],
            [
                'Matematika',
                'status' => 1
            ],
            [
                'IPA',
                'status' => 1
            ],
            [
                'Perdagangan',
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
