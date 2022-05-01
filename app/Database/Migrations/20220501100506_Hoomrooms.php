<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Hoomrooms extends Migration
{
    public function up()
    {
        $this->forge->addField([
            'id'          => [
                'type'           => 'INT',
                'auto_increment' => true,
                'constraint' => 11,
            ],
            'roomId'       => [
                'type'       => 'INT',
                'constraint' => 11,
            ],
            'classId'       => [
                'type'       => 'INT',
                'constraint' => 11,
            ],
            'teacherId'       => [
                'type'       => 'INT',
                'constraint' => 11,
            ],
            'status'      => [
                'type'           => 'tinyint',
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
        $this->forge->createTable('hoomrooms');
    }

    public function down()
    {
        $this->forge->dropTable('hoomrooms');
    }
}
