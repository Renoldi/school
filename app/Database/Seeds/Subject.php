<?php

namespace App\Database\Seeds;

use App\Entities\Subject as EntitiesSubject;
use App\Models\Subject as ModelsSubject;
use CodeIgniter\Database\Seeder;

class Subject extends Seeder
{
    public function run()
    {
        $model = new ModelsSubject();
        $entities = new EntitiesSubject();
        $data = [
            ['name' => 'matematika wajib', 'statusId' => 1,],
            ['name' => 'matematika peminatan', 'statusId' => 1,],
            ['name' => 'fisika', 'statusId' => 1,],
            ['name' => 'lintas minat fisika', 'statusId' => 1,],
            ['name' => 'kimia', 'statusId' => 1,],
            ['name' => 'biologi', 'statusId' => 1,],
            ['name' => 'lintas minat biologi', 'statusId' => 1,],
            ['name' => 'lintas minat kimia', 'statusId' => 1,],
            ['name' => 'sejarah indonesia', 'statusId' => 1,],
            ['name' => 'sejarah peminatan', 'statusId' => 1,],
            ['name' => 'sejarah kebudayaan islam', 'statusId' => 1,],
            ['name' => 'alquran hadist', 'statusId' => 1,],
            ['name' => 'aqidah akhlak', 'statusId' => 1,],
            ['name' => 'fiqih', 'statusId' => 1,],
            ['name' => 'bahasa inggris', 'statusId' => 1,],
            ['name' => 'bahasa indonesia', 'statusId' => 1,],
            ['name' => 'bahasa arab', 'statusId' => 1,],
            ['name' => 'ekonomi', 'statusId' => 1,],
            ['name' => 'lintas minat ekonomi', 'statusId' => 1,],
            ['name' => 'sosiologi', 'statusId' => 1,],
            ['name' => 'lintas minat sosiologi', 'statusId' => 1,],
            ['name' => 'geografi', 'statusId' => 1,],
            ['name' => 'seni budaya', 'statusId' => 1,],
            ['name' => 'prakarya & Kewirausahaan', 'statusId' => 1,],
            ['name' => 'penjas', 'statusId' => 1,],
            ['name' => 'pkn', 'statusId' => 1,],
            ['name' => 'pjok', 'statusId' => 1,],
            ['name' => 'Muatan Lokal Riset', 'statusId' => 1,],
            ['name' => 'bk', 'statusId' => 1,],
            ['name' => 'riset biologi', 'statusId' => 1,],
        ];
        foreach ($data as $data) {
            $entities->fill($data);
            if (!$model->save($entities)) {
                var_dump($model->errors());
            }
        }
    }
}
