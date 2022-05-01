<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Privileges extends Migration
{
    public function up()
    {
        $this->forge->addField([
            'id'          => [
                'type'           => 'INT',
                'constraint'     => 11,
                'auto_increment' => true,
            ],
            'name'       => [
                'type'       => 'VARCHAR',
                'unique'         => true,
                'constraint' => 50,
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
                'type' => 'TIMESTAMP ',
                'NULL' => TRUE,
            ],
        ]);
        $this->forge->addKey('id', true);
        $this->forge->createTable('privileges');
    }

    public function down()
    {
        $this->forge->dropTable('privileges');
    }
}