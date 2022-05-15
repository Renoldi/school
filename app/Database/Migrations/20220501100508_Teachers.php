<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Teachers extends Migration
{
    public function up()
    {
        $this->forge->addField([
            'id' => [
                'type' => 'INT',
                'constraint' => 11,
                'auto_increment' => true,
            ],
            'nip' => [
                'type' => 'VARCHAR',
                'constraint' => 60,
            ],
            'name' => [
                'type' => 'VARCHAR',
                'constraint' => 60,
            ],
            'gender' => [
                'type' => 'VARCHAR',
                'constraint' => 1,
            ],
            'dob' => [
                'type' => 'date',
                
            ],
            'privilegeId' => [
                'type' => 'INT',
                'constraint' => 11,
            ],
            'rankId' => [
                'type' => 'INT',
                'constraint' => 11,
            ],
            'rankTmt' => [
                'type' => 'INT',
                'constraint' => 11,
            ],
            'groupId' => [
                'type' => 'INT',
                'constraint' => 11,
            ],
            'email' => [
                'type' => 'VARCHAR',
                'unique' => true,
                'constraint' => 255,
            ],
            'ipAddress' => [
                'type' => 'VARCHAR',
                'constraint' => 255,
                'null' => true,
            ],
            'about' => [
                'type' => 'VARCHAR',
                'constraint' => 255,
                'null' => true,
            ],
            'image' => [
                'type' => 'VARCHAR',
                'constraint' => 255,
                'null' => true,
            ],
            'status' => [
                'type' => 'tinyint',
                'constraint' => 1,
            ],
            'isPn' => [
                'type' => 'tinyint',
                'constraint' => 1,
            ],
            'password' => [
                'type' => 'VARCHAR',
                'constraint' => 60,
            ],
            'address' => [
                'type' => 'varchar',
                'constraint' => 256,
            ],
            'phone' => [
                'type' => 'varchar',
                'constraint' => 15,
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
        $this->forge->addForeignKey('privilegeId', 'privileges', 'id');
        $this->forge->addForeignKey('rankId', 'ranks', 'id');
        $this->forge->addForeignKey('groupId', 'groupS', 'id');
        $this->forge->createTable('teachers');
    }

    public function down()
    {
        $this->forge->dropTable('teachers');
    }
}
