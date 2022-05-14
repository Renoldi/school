<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Rooms extends Migration
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
                'constraint' => 100,
            ],
            'status'      => [
                'type'           => 'tinyint',
                'constraint'     => 1,
            ],
            'departmentId'      => [
                'type'           => 'INT',
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
        $this->forge->addForeignKey('departmentId', 'departments','id');
        $this->forge->createTable('rooms');
    }

    public function down()
    {
        $this->forge->dropTable('rooms');
    }
}
