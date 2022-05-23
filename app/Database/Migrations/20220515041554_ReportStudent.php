<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class ReportStudent extends Migration
{
    public function up()
    {
        $this->forge->addField([
            'id' => [
                'type' => 'INT',
                'constraint' => 11,
                'auto_increment' => true,
            ], 
            'studentId' => [
                'type' => 'INT', 
            ], 
            'roomId' => [
                'type' => 'INT', 
            ], 
            'classId' => [
                'type' => 'INT', 
            ], 
            'semesterId' => [
                'type' => 'INT', 
            ], 
            'subjectId' => [
                'type' => 'INT', 
            ], 
            'point' => [
                'type' => 'INT', 
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
        $this->forge->addForeignKey('roomId', 'rooms', 'id');
        $this->forge->addForeignKey('classId', 'classes', 'id'); 
        $this->forge->addForeignKey('semesterId', 'semesters', 'id'); 
        $this->forge->addForeignKey('subjectId', 'subjects', 'id'); 
        $this->forge->addForeignKey('studentId', 'students', 'id'); 
        $this->forge->createTable('reportstudents');
    }

    public function down()
    {
        $this->forge->dropTable('reportstudents');
    }
}
