<?php

namespace App\Database\Seeds;

use App\Entities\Resultexam as EntitiesResultexam;
use App\Models\Exam;
use App\Models\Resultexam as ModelsResultexam;
use App\Models\Semester;
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
        $semesters = new Semester();

        $student = $students
            ->select('students.id, ss.id subjectId, students.classId')
            ->join('rooms r', 'r.id = students.roomId')
            ->join('departments d', 'd.id = r.departmentId')
            ->join('subjectdepartements sd', 'sd.departmentId = d.id')
            ->join('subjects ss', 'ss.id = sd.subjectId')
            ->orderBy('students.id, students.classId,students.roomId')
            ->findAll();

        $no = 0;
        foreach ($student as $dat) {
            $examsData = $exams
                ->select('id,semesterId')
                ->where('classId', $dat->classId)
                ->where('subjectId', $dat->subjectId)
                ->where('semesterId', 1)
                ->findAll();
             
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
