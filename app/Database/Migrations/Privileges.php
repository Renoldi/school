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
                'unsigned'       => true,
                'auto_increment' => true,
            ],
            'name'       => [
                'type'       => 'VARCHAR',
                'constraint' => 50,
            ],
            'status'      => [
                'type'           => 'tinyint',
                'constraint'     => 1,
            ],
            'createdAt'      => [
                'type'           => 'timestamp',
            ],
            'updatedAt'      => [
                'type'           => 'timestamp',
            ],
            'deletedAt'      => [
                'type'           => 'timestamp',
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
