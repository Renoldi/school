<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Privileges extends Migration
{
    public function up()
    {
        $this->forge->addField([
            'id' => [
                'type' => 'INT',
                'constraint' => 11,
                'auto_increment' => true,
            ],
            'name' => [
                'type' => 'VARCHAR',
                'unique' => true,
                'constraint' => 50,
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
         $this->forge->addForeignKey('statusId', 'statuss', 'id');
        $this->forge->createTable('privileges');
    }

    public function down()
    {
        $this->forge->dropTable('privileges');
    }
}
