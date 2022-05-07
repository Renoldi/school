<?php

namespace App\Database\Seeds;

use App\Entities\Resultexams as EntitiesResultexams;
use App\Models\Exams;
use App\Models\Resultexams as ModelsResultexams;
use App\Models\Students;
use CodeIgniter\Database\Seeder;
use PhpParser\Node\Expr\New_;

class Resultexams extends Seeder
{
    public function run()
    {
        helper('genarator_string');
        $model = new ModelsResultexams();
        $entities = new EntitiesResultexams();

        $exams = new Exams();

        $students = new Students();

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
                    'status' => 1,
                ];
                $entities->fill($resExam);
                if (!$model->save($entities)) {
                    var_dump($model->errors());
                }
            }
        }
    }
}
