<?php

namespace App\Database\Seeds;

use App\Entities\Subjects as EntitiesSubjects;
use App\Models\Subjects as ModelsSubjects;
use CodeIgniter\Database\Seeder;

class Subjects extends Seeder
{
    public function run()
    {
        $model = new ModelsSubjects();
        $entities = new EntitiesSubjects();
        $data = [
            ['name' => 'matematika wajib', 'status' => 1, 'departmentId' => 1],
            ['name' => 'matematika peminatan', 'status' => 1, 'departmentId' => 2],
            ['name' => 'fisika', 'status' => 1, 'departmentId' => 1],
            ['name' => 'lintas minat fisika', 'status' => 1, 'departmentId' => 2],
            ['name' => 'kimia', 'status' => 1, 'departmentId' => 1],
            ['name' => 'biologi', 'status' => 1, 'departmentId' => 1],
            ['name' => 'lintas minat biologi', 'status' => 1, 'departmentId' => 2],
            ['name' => 'lintas minat kimia', 'status' => 1, 'departmentId' => 2],
            ['name' => 'sejarah indonesia', 'status' => 1, 'departmentId' => 1],
            ['name' => 'sejarah peminatan', 'status' => 1, 'departmentId' => 1],
            ['name' => 'sejarah kebudayaan islam', 'status' => 1, 'departmentId' => 1],
            ['name' => 'alquran hadist', 'status' => 1, 'departmentId' => 1],
            ['name' => 'aqidah akhlak', 'status' => 1, 'departmentId' => 1],
            ['name' => 'fiqih', 'status' => 1, 'departmentId' => 1],
            ['name' => 'bahasa inggris', 'status' => 1, 'departmentId' => 1],
            ['name' => 'bahasa indonesia', 'status' => 1, 'departmentId' => 1],
            ['name' => 'bahasa arab', 'status' => 1, 'departmentId' => 1],
            ['name' => 'ekonomi', 'status' => 1, 'departmentId' => 2],
            ['name' => 'lintas minat ekonomi', 'status' => 1, 'departmentId' => 1],
            ['name' => 'sosiologi', 'status' => 1, 'departmentId' => 2],
            ['name' => 'lintas minat sosiologi', 'status' => 1, 'departmentId' => 1],
            ['name' => 'geografi', 'status' => 1, 'departmentId' => 2],
            ['name' => 'seni budaya', 'status' => 1, 'departmentId' => 1],
            ['name' => 'prakarya', 'status' => 1, 'departmentId' => 1],
            ['name' => 'penjas', 'status' => 1, 'departmentId' => 1],
            ['name' => 'pkn', 'status' => 1, 'departmentId' => 1],
        ];
        foreach ($data as $data) {
            $entities->fill($data);
            $model->save($entities);
        }
    }
}
