<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;

class RunSeeder extends Seeder
{
    public function run()
    {
        // master
        $this->call('Status');
        $this->call('Classes');
        $this->call('Departments');
        $this->call('Privileges');
        $this->call('Rooms');
        $this->call('Groups');
        $this->call('Ranks');
        $this->call('Tasks');
        $this->call('EducationLevels');
        $this->call('Majors');
        $this->call('Subjects');
        $this->call('Schools');
        
        // $this->call('Students');
        $this->call('Teachers');
        // $this->call('SubjectDepartements');
        // $this->call('Exams');
        // $this->call('Resultexams');
        // $this->call('Hoomrooms');
        // $this->call('Scheduleexams');
    }
}