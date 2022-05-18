<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class TeacherTasks extends Migration
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
            'taskId' => [
                'type' => 'INT',
                'constraint' => 11,
            ],
            'tmtTask' => [
                'type' => 'date',
                'null' => true,
            ],
            'duration' => [
                'type' => 'INT',
                'constraint' => 3,
            ],
            'status' => [
                'type' => 'tinyint',
                'constraint'     => 1,
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
        $this->forge->addForeignKey('taskId', 'tasks', 'id');
        $this->forge->createTable('TeacherTasks');
    }

    public function down()
    {
        $this->forge->dropTable('TeacherTasks');
    }
}
