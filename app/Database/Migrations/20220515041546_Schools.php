<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Schools extends Migration
{
    public function up()
    {
        $this->forge->addField([
            'id' => [
                'type' => 'INT',
                'auto_increment' => true,
                'constraint' => 11,
            ],
            'npsn' => [
                'type' => 'VARCHAR',
                'constraint' => '255',
                'null' => true,
            ],
            'name' => [
                'type' => 'VARCHAR',
                'constraint' => '255',
                'unique' => true,
            ],
            'address' => [
                'type' => 'VARCHAR',
                'constraint' => '255',
                'null' => true,
            ],
            'educationLevelId' => [
                'type' => 'int',
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
        $this->forge->addForeignKey('educationLevelId', 'educationLevels', 'id');
        $this->forge->addForeignKey('statusId', 'status', 'id');
        $this->forge->createTable('schools');
    }

    public function down()
    {
        $this->forge->dropTable('schools');
    }
}
