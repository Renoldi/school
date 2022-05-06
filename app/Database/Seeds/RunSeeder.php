<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;

class RunSeeder extends Seeder
{
    public function run()
    {
        // master
        $this->call('Classes');
        $this->call('Majors');
        $this->call('Privileges');
        $this->call('Rooms');
        $this->call('Subjects');
        $this->call('Students');
        $this->call('Teachers');

        // $this->call('Exams');
        // $this->call('Resultexams');
        // $this->call('Hoomrooms');
        // $this->call('Scheduleexams');
    }
}