<?php

namespace App\Database\Seeds;

use App\Entities\SubjectDepartements as EntitiesSubjectDepartements;
use App\Models\SubjectDepartements as ModelsSubjectDepartements;
use CodeIgniter\Database\Seeder;

class SubjectDepartements extends Seeder
{
    public function run()
    {
        $model = new ModelsSubjectDepartements();
        $entities = new EntitiesSubjectDepartements();
        $data = [
            ['subjectId' => 1, 'name' => 'matematika', 'departmentId' => 1,],
            ['subjectId' => 1, 'name' => 'matematika', 'departmentId' => 2,],
            ['subjectId' => 2, 'name' => 'matematika peminatan', 'departmentId' => 1,],
            ['subjectId' => 3, 'name' => 'fisika', 'departmentId' => 1,],
            ['subjectId' => 4, 'name' => 'lintas minat fisika', 'departmentId' => 2,],
            ['subjectId' => 5, 'name' => 'kimia', 'departmentId' => 1,],
            ['subjectId' => 8, 'name' => 'lintas minat kimia', 'departmentId' => 2,],
            ['subjectId' => 6, 'name' => 'biologi', 'departmentId' => 1,],
            ['subjectId' => 7, 'name' => 'lintas minat biologi', 'departmentId' => 2,],
            ['subjectId' => 9, 'name' => 'sejarah indonesia', 'departmentId' => 1,],
            ['subjectId' => 9, 'name' => 'sejarah indonesia', 'departmentId' => 2,],
            ['subjectId' => 10, 'name' => 'sejarah peminatan', 'departmentId' => 2,],
            ['subjectId' => 11, 'name' => 'sejarah kebudayaan islam', 'departmentId' => 1,],
            ['subjectId' => 11, 'name' => 'sejarah kebudayaan islam', 'departmentId' => 2,],
            ['subjectId' => 12, 'name' => 'alquran hadist', 'departmentId' => 1,],
            ['subjectId' => 12, 'name' => 'alquran hadist', 'departmentId' => 2,],
            ['subjectId' => 13, 'name' => 'aqidah akhlak', 'departmentId' => 1,],
            ['subjectId' => 13, 'name' => 'aqidah akhlak', 'departmentId' => 2,],
            ['subjectId' => 14, 'name' => 'fiqih', 'departmentId' => 1,],
            ['subjectId' => 14, 'name' => 'fiqih', 'departmentId' => 2,],
            ['subjectId' => 15, 'name' => 'bahasa inggris', 'departmentId' => 1,],
            ['subjectId' => 15, 'name' => 'bahasa inggris', 'departmentId' => 2,],
            ['subjectId' => 16, 'name' => 'bahasa indonesia', 'departmentId' => 1,],
            ['subjectId' => 16, 'name' => 'bahasa indonesia', 'departmentId' => 2,],
            ['subjectId' => 17, 'name' => 'bahasa arab', 'departmentId' => 1,],
            ['subjectId' => 17, 'name' => 'bahasa arab', 'departmentId' => 2,],
            ['subjectId' => 18, 'name' => 'ekonomi', 'departmentId' => 2,],
            ['subjectId' => 19, 'name' => 'lintas minat ekonomi', 'departmentId' => 1,],
            ['subjectId' => 20, 'name' => 'sosiologi', 'departmentId' => 2,],
            ['subjectId' => 21, 'name' => 'lintas minat sosiologi', 'departmentId' => 1,],
            ['subjectId' => 22, 'name' => 'geografi', 'departmentId' => 1,],
            ['subjectId' => 23, 'name' => 'seni budaya', 'departmentId' => 1,],
            ['subjectId' => 24, 'name' => 'prakarya', 'departmentId' => 1,],
            ['subjectId' => 25, 'name' => 'penjas', 'departmentId' => 1,],
            ['subjectId' => 26, 'name' => 'pkn', 'departmentId' => 1,],
            ['subjectId' => 23, 'name' => 'seni budaya', 'departmentId' => 2,],
            ['subjectId' => 24, 'name' => 'prakarya', 'departmentId' => 2,],
            ['subjectId' => 25, 'name' => 'penjas', 'departmentId' => 2,],
            ['subjectId' => 26, 'name' => 'pkn', 'departmentId' => 2,],
        ];
        foreach ($data as $data) {
            $entities->fill($data);
            if (!$model->save($entities)) {
                var_dump($model->errors());
            }
        }
    }
}
