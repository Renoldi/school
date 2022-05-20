<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Scheduleexams extends Migration
{
    public function up()
    {
        $this->forge->addField([
            'id' => [
                'type' => 'bigint',
                'constraint' => 11,
                'auto_increment' => true,
            ],
            'subjectId' => [
                'type' => 'INT',
                'constraint' => 11,
            ],
            'classId' => [
                'type' => 'INT',
                'constraint' => 11,
            ],
            'semesterId' => [
                'type' => 'INT',
                'constraint' => 11,
            ],
            'start' => [
                'type' => 'bigint ',
            ],
            'end' => [
                'type' => 'bigint ',
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
        $this->forge->addForeignKey('statusId', 'status', 'id');
        $this->forge->addForeignKey('subjectId', 'subjects', 'id');
        $this->forge->addForeignKey('semesterId', 'semesters', 'id');
        $this->forge->addForeignKey('classId', 'classes', 'id');
        $this->forge->createTable('scheduleexams');
    }

    public function down()
    {
        $this->forge->dropTable('scheduleexams');
    }
}
