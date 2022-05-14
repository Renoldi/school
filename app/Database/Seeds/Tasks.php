<?php

namespace App\Database\Seeds;

use App\Entities\Tasks as EntitiesTasks;
use App\Models\Tasks as ModelsTasks;
use CodeIgniter\Database\Seeder;

class Tasks extends Seeder
{
    public function run()
    {
        $model = new ModelsTasks();
        $entities = new EntitiesTasks();

        $data = [
            [
                'name'  => 'Kepala Madrasah',
                'status'  =>  1,
            ],
            [
                'name'  => 'Wakamad Kurikulum',
                'status'  =>  1,
            ],
            [
                'name'  => 'Wakamad Kesiswaan',
                'status'  =>  1,
            ],
            [
                'name'  => 'Wakamad Humas',
                'status'  =>  1,
            ],
            [
                'name'  => 'Wakamad Sarpras',
                'status'  =>  1,
            ],
            [
                'name'  => 'Kepala Perpustakaan',
                'status'  =>  1,
            ],
            [
                'name'  => 'Kepala Laboratorium IPA',
                'status'  =>  1,
            ],
            [
                'name'  => 'Kepala Laboratorium Komputer',
                'status'  =>  1,
            ],
            [
                'name'  => 'Pembina UKS',
                'status'  =>  1,
            ],
            [
                'name'  => 'Piket',
                'status'  =>  1,
            ],
            [
                'name'  => 'Pembina Olah Raga',
                'status'  =>  1,
            ],
            [
                'name'  => 'Pembina PIK-KRR',
                'status'  =>  1,
            ],
            [
                'name'  => 'Koord BK',
                'status'  =>  1,
            ],
            [
                'name'  => 'Pembina Osim (PA) /Opr Bag. Kesiswaan',
                'status'  =>  1,
            ],
            [
                'name'  => 'Pembina Pramuka',
                'status'  =>  1,
            ],
            [
                'name'  => 'Pembina Rohis',
                'status'  =>  1,
            ],
            [
                'name'  => 'Bendahara Komite',
                'status'  =>  1,
            ],
            [
                'name'  => 'Pembina Osim',
                'status'  =>  1,
            ], 
            [
                'name'  => 'Guru Madya',
                'status'  =>  1,
            ], 
            [
                'name'  => 'Piket',
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
