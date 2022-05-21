<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;

class RunSeeder extends Seeder
{
    public function run()
    {
        // master
        // $this->call('Status');
        // $this->call('Classs');
        // $this->call('Department');
        // $this->call('Group');
        // $this->call('Privilege');
        // $this->call('Room');
        // $this->call('Semester');
        // $this->call('Rank');
        // $this->call('Task');
        // $this->call('EducationLevel');
        // $this->call('Major');
        // $this->call('Subject');
        // // $this->call('Schools');
        // $this->call('Employee');
        // $this->call('SubjectDepartement');
        
        // // $this->call('Students');
        // $this->call('Teacher');
        // $this->call('Exam');
        $this->call('Resultexams');
        // $this->call('Hoomrooms');
        // $this->call('Scheduleexams');
    }
}