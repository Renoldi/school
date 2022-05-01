<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Scheduleexams extends Migration
{
    public function up()
    {
        $this->forge->addField([
            'id'          => [
                'type' => 'INT',
                'constraint'     => 11,
                'auto_increment' => true,
            ],
            'subjectId'       => [
                'type'       => 'INT',
                'constraint' => 11,
            ],
            'classId'       => [
                'type'       => 'INT',
                'constraint' => 11,
            ],
            'start'      => [
                'type' => 'TIMESTAMP ',
                'NULL' => TRUE,
            ],
            'end'      => [
                'type' => 'TIMESTAMP ',
                'NULL' => TRUE,
            ],
            'status'      => [
                'type' => 'tinyint',
                'constraint'     => 1,
            ],
            'createdAt' => [
                'type' => 'TIMESTAMP DEFAULT CURRENT_TIMESTAMP',
            ],
            'updatedAt' => [
                'type' => 'TIMESTAMP DEFAULT CURRENT_TIMESTAMP',
            ],
            'deletedAt' => [
                'type' => 'TIMESTAMP ',
                'NULL' => TRUE,
            ],
        ]);
        $this->forge->addKey('id', true);
        $this->forge->addForeignKey('subjectId', 'subjects','id');
        $this->forge->addForeignKey('classId', 'classs','id');
        $this->forge->createTable('scheduleexams');
    }

    public function down()
    {
        $this->forge->dropTable('scheduleexams');
    }
}
