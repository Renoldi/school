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
                'type' => 'TIMESTAMP DEFAULT NULL',
            ],
            'end'      => [
                'type' => 'TIMESTAMP DEFAULT NULL',
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
                'type' => 'TIMESTAMP DEFAULT NULL',
            ],
        ]);
        $this->forge->addKey('id', true);
        $this->forge->createTable('scheduleexams');
    }

    public function down()
    {
        $this->forge->dropTable('scheduleexams');
    }
}
