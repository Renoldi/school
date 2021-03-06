<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class SubjectTeacher extends Migration
{
    public function up()
    {
        $this->forge->addField([
            'id' => [
                'type' => 'INT',
                'auto_increment' => true,
                'constraint' => 11,
            ],
            'teacherId' => [
                'type' => 'INT',
                'constraint' => 11,
            ],
            'subjectId' => [
                'type' => 'INT',
                'constraint' => 11,
            ],
            'classId' => [
                'type' => 'INT',
                'constraint' => 11,
                'null' => true,
            ],
            'duration' => [
                'type' => 'INT',
                'constraint' => 3,
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
        $this->forge->addForeignKey('teacherId', 'teachers', 'id');
        $this->forge->addForeignKey('subjectId', 'subjects', 'id');
        $this->forge->addForeignKey('classId', 'classes', 'id');
        $this->forge->createTable('SubjectTeachers');
    }

    public function down()
    {
        $this->forge->dropTable('SubjectTeachers');
    }
}
