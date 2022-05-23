<?php

namespace App\Database\Seeds;

use App\Entities\Task as EntitiesTask;
use App\Models\Task as ModelsTask;
use CodeIgniter\Database\Seeder;

class Task extends Seeder
{
    public function run()
    {
        $model = new ModelsTask();
        $entities = new EntitiesTask();

        $data = [
            ['name' => 'Kepala Madrasah', 'statusId' => 1,],
            ['name' => 'Wakamad Kurikulum', 'statusId' => 1,],
            ['name' => 'Wakamad Kesiswaan', 'statusId' => 1,],
            ['name' => 'Wakamad Humas', 'statusId' => 1,],
            ['name' => 'Wakamad Sarpras', 'statusId' => 1,],
            ['name' => 'Kepala Perpustakaan', 'statusId' => 1,],
            ['name' => 'Kepala Laboratorium IPA', 'statusId' => 1,],
            ['name' => 'Kepala Laboratorium Komputer', 'statusId' => 1,],
            ['name' => 'Pembina UKS', 'statusId' => 1,],
            ['name' => 'Pembina Olah Raga', 'statusId' => 1,],
            ['name' => 'Pembina PIK KRR', 'statusId' => 1,],
            ['name' => 'Koord BK', 'statusId' => 1,],
            ['name' => 'Pembina Osim', 'statusId' => 1,],
            ['name' => 'Pembina Pramuka', 'statusId' => 1,],
            ['name' => 'Pembina Rohis', 'statusId' => 1,],
            ['name' => 'Bendahara Komite', 'statusId' => 1,],
            ['name' => 'Guru Madya', 'statusId' => 1,],
            ['name' => 'Piket', 'statusId' => 1,],
            ['name' => 'bandahara osim', 'statusId' => 1,],
        ];
        foreach ($data as $data) {
            $entities->fill($data);
            if (!$model->save($entities)) {
                var_dump($model->errors());
            }
        }
    }
}
