<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Resultexams extends Migration
{
    public function up()
    {
        $this->forge->addField([
            'id' => [
                'type' => 'INT',
                'auto_increment' => true,
                'constraint' => 11,
            ],
            'studentId' => [
                'type' => 'INT',
                'constraint' => 11,
            ],
            'examId' => [
                'type' => 'INT',
                'constraint' => 11,
            ],
            'choise' => [
                'type' => 'VARCHAR',
                'constraint' => 1,
            ],            
            'semesterId' => [
                'type' => 'int',
            ],
            'classId' => [
                'type' => 'int',
            ],
            'statusId' => [
                'type' => 'int',
            ],
            'createdAt' => [
                'type' => 'bigint',
            ],
            'updatedAt' => [
                'type' => 'bigint',
            ],
            'deletedAt' => [
                'type' => 'bigint',
            ],
        ]);
        $this->forge->addKey('id', true);
         $this->forge->addForeignKey('statusId', 'classes', 'id');
         $this->forge->addForeignKey('classId', 'statuss', 'id');
        $this->forge->addForeignKey('semesterId', 'semesters', 'id');
        $this->forge->addForeignKey('studentId', 'students', 'id');
        $this->forge->addForeignKey('examId', 'exams', 'id');
        $this->forge->createTable('resultexams');
    }

    public function down()
    {
        $this->forge->dropTable('resultexams');
    }
}
