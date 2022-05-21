<?php

namespace App\Database\Seeds;

use App\Entities\Resultexam as EntitiesResultexam;
use App\Models\Exam;
use App\Models\Resultexam as ModelsResultexam;
use App\Models\Student;
use CodeIgniter\Database\Seeder;

class Resultexam extends Seeder
{
    public function run()
    {
        helper('genarator_string');
        $model = new ModelsResultexam();
        $entities = new EntitiesResultexam();

        $exams = new Exam();
        $students = new Student();

        $data  = $students
            ->select('students.id,ss.id subjectsid, students.classId as classId,d.id, d.name departmentName')
            ->join('rooms r', 'r.id = students.roomId')
            ->join('departments d', 'd.id = r.departmentId')
            ->join('subjectdepartements sd', 'sd.departmentId = d.id')
            ->join('subjects ss', 'ss.id = sd.subjectId')
            ->findAll();

        // print_r($model->getLastQuery()->getQuery());

        foreach ($data as $dat) {
            $examsData = $exams
                ->select('id,semesterId')
                ->where('classId', $dat->classId)
                ->where('subjectId', $dat->subjectsid)
                ->where('semesterId', 1)
                ->findAll();
            // print_r($model->getLastQuery()->getQuery());
            // exit;

            foreach ($examsData as $examsDat) {
                $entities->fill(
                    [
                        'studentId' => $dat->id,
                        'examId' => $examsDat->id,
                        'semesterId' => $examsDat->semesterId,
                        'choise' => generateRandomString(1, 'abcde'),
                        'statusId' => 1,
                    ]
                );
                if (!$model->save($entities)) {
                    var_dump($model->errors());
                }
            }
        }
    }
}
