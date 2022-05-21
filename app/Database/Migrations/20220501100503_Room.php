<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Rooms extends Migration
{
    public function up()
    {
        $this->forge->addField([
            'id' => [
                'type' => 'INT',
                'constraint' => 11,
                'auto_increment' => true,
            ],
            'name'  => [
                'type'  => 'VARCHAR',
                'unique' => true,
                'constraint' => 100,
            ],
            'statusId' => [
                'type' => 'int',
            ],
            'departmentId' => [
                'type' => 'INT',
                'constraint' => 1,
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
         $this->forge->addForeignKey('statusId', 'statuss', 'id');
        $this->forge->addForeignKey('departmentId', 'departments', 'id');
        $this->forge->createTable('rooms');
    }

    public function down()
    {
        $this->forge->dropTable('rooms');
    }
}
