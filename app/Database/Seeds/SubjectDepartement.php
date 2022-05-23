<?php

namespace App\Database\Seeds;

use App\Entities\SubjectDepartement as EntitiesSubjectDepartement;
use App\Models\SubjectDepartement as ModelsSubjectDepartement;
use CodeIgniter\Database\Seeder;

class SubjectDepartement extends Seeder
{
    public function run()
    {
        $model = new ModelsSubjectDepartement();
        $entities = new EntitiesSubjectDepartement();
        $data = [
            ['subjectId' => 1, 'departmentId' => 1,],
            ['subjectId' => 1, 'departmentId' => 2,],
            ['subjectId' => 2, 'departmentId' => 1,],
            ['subjectId' => 3, 'departmentId' => 1,],
            ['subjectId' => 4, 'departmentId' => 2,],
            ['subjectId' => 5, 'departmentId' => 1,],
            ['subjectId' => 8, 'departmentId' => 2,],
            ['subjectId' => 6, 'departmentId' => 1,],
            ['subjectId' => 7, 'departmentId' => 2,],
            ['subjectId' => 9, 'departmentId' => 1,],
            ['subjectId' => 9, 'departmentId' => 2,],
            ['subjectId' => 10, 'departmentId' => 2,],
            ['subjectId' => 11, 'departmentId' => 1,],
            ['subjectId' => 11, 'departmentId' => 2,],
            ['subjectId' => 12, 'departmentId' => 1,],
            ['subjectId' => 12, 'departmentId' => 2,],
            ['subjectId' => 13, 'departmentId' => 1,],
            ['subjectId' => 13, 'departmentId' => 2,],
            ['subjectId' => 14, 'departmentId' => 1,],
            ['subjectId' => 14, 'departmentId' => 2,],
            ['subjectId' => 15, 'departmentId' => 1,],
            ['subjectId' => 15, 'departmentId' => 2,],
            ['subjectId' => 16, 'departmentId' => 1,],
            ['subjectId' => 16, 'departmentId' => 2,],
            ['subjectId' => 17, 'departmentId' => 1,],
            ['subjectId' => 17, 'departmentId' => 2,],
            ['subjectId' => 18, 'departmentId' => 2,],
            ['subjectId' => 19, 'departmentId' => 1,],
            ['subjectId' => 20, 'departmentId' => 2,],
            ['subjectId' => 21, 'departmentId' => 1,],
            ['subjectId' => 22, 'departmentId' => 1,],
            ['subjectId' => 23, 'departmentId' => 1,],
            ['subjectId' => 24, 'departmentId' => 1,],
            ['subjectId' => 25, 'departmentId' => 1,],
            ['subjectId' => 26, 'departmentId' => 1,],
            ['subjectId' => 23, 'departmentId' => 2,],
            ['subjectId' => 24, 'departmentId' => 2,],
            ['subjectId' => 25, 'departmentId' => 2,],
            ['subjectId' => 26, 'departmentId' => 2,],
        ];
        foreach ($data as $data) {
            $entities->fill($data);
            if (!$model->save($entities)) {
                var_dump($model->errors());
            }
        }
    }
}
