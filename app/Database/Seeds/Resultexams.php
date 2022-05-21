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
            ->select('students.id,ss.id subjectsid, students.classId as classId')
            ->join('rooms r', 'r.id = students.roomId')
            ->join('departments d', 'd.id = r.departmentId')
            ->join('subjectdepartements sd', 'sd.departmentId = d.id')
            ->join('subjects ss', 'ss.id = sd.subjectId')
            ->findAll();

        foreach ($data as $dat) {
            $examsData = $exams
                ->select('id')
                ->where('classId', $dat->classId)
                ->where('subjectId', $dat->subjectsid)
                ->findAll();
                
            foreach ($examsData as $examsDat) {
                $resExam = [
                    'studentId' => $dat->id, 
                    'examId' => $examsDat->id,
                    'choise' => generateRandomString(1, 'abcde'),
                     'statusId' => 1,
                ];
                $entities->fill($resExam);
                if (!$model->save($entities)) {
                    var_dump($model->errors());
                }
            }
        }
    }
}
