<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;

class RunSeeder extends Seeder
{
    public function run()
    {
        $this->call('Classs');
        $this->call('Departments');
        $this->call('Privileges');
        $this->call('Rooms');
        $this->call('Subjects');
        $this->call('Students');
        $this->call('Teachers');

        $this->call('Exams');
        // $this->call('Hoomrooms');
        // $this->call('Scheduleexams');
        // $this->call('Resultexams');
    }
}