<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Teachers extends Migration
{
    public function up()
    {
        $this->forge->addField([
            'id'          => [
                'type'           => 'INT',
                'constraint'     => 11,
                
                'auto_increment' => true,
            ],
            'nip'       => [
                'type'       => 'VARCHAR',
                'constraint' => 60,
            ],
            'name'       => [
                'type'       => 'VARCHAR',
                'constraint' => 60,
            ],
            'gender'       => [
                'type'       => 'VARCHAR',
                'constraint' => 1,
            ],
            'position'       => [
                'type'       => 'VARCHAR',
                'constraint' => 15,
            ],
            'dob'       => [
                'type'       => 'datetime',
            ],
            'subjectId'      => [
                'type'           => 'INT',
                'constraint'     => 11,
            ],
            'privilegeId'      => [
                'type'           => 'INT',
                'constraint'     => 11,
            ],
            'email'      => [
                'type'           => 'VARCHAR',
                'unique'         => true,
                'constraint'     => 255,
            ],
            'ipAddress'       => [
                'type'       => 'VARCHAR',
                'constraint' => 255,
            ],
            'about'       => [
                'type'       => 'VARCHAR',
                'constraint' => 255,
            ],
            'image'      => [
                'type'           => 'VARCHAR',
                'constraint'     => 255,
                'null'        => true,
            ],
            'status'      => [
                'type'           => 'tinyint',
                'constraint'     => 1,
            ],
            'password'       => [
                'type'       => 'VARCHAR',
                'constraint' => 60,
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
        $this->forge->addForeignKey('subjectId', 'subjects','id');
        $this->forge->addForeignKey('privilegeId', 'privileges','id');
        $this->forge->createTable('teachers');
    }

    public function down()
    {
        $this->forge->dropTable('teachers');
    }
}
