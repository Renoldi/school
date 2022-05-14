<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Subjects extends Migration
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
                'constraint' => 100,
            ],
            'status'      => [
                'type'           => 'tinyint',
                'constraint'     => 1,
            ],
            'createdAt' => [
                'type' => 'int',
            ],
            'updatedAt' => [
                'type' => 'int',
            ],
            'deletedAt' => [
                'type' => 'int', 
            ],
        ]);
        $this->forge->addKey('id', true);
        $this->forge->createTable('subjects');
    }

    public function down()
    {
        $this->forge->dropTable('subjects');
    }
}
