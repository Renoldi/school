<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Positions extends Migration
{
    public function up()
    {
        $this->forge->addField([
            'id'          => [
                'type'           => 'INT',
                'auto_increment' => true,
                'constraint' => 11,
            ],
            'name'       => [
                'type'       => 'VARCHAR',
                'constraint' => '100',
                'unique'         => true,
            ],
            'status'      => [
                'type'           => 'tinyint',
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
        $this->forge->createTable('positions');
    }

    public function down()
    {
        $this->forge->dropTable('positions');
    }
}
