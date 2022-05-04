<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Students extends Migration
{
    public function up()
    {
        $this->forge->addField([
            'id'          => [
                'type'           => 'INT',
                'constraint'     => 11,
                'auto_increment' => true,
            ],
            'nisn'       => [
                'type'       => 'VARCHAR',
                'constraint' => 100,
            ],
            'name'       => [
                'type'       => 'VARCHAR',
                'constraint' => 100,
            ],
            'email'      => [
                'type'           => 'VARCHAR',
                'unique'         => true,
                'constraint'     => 255,
            ],
            'image'       => [
                'type'       => 'VARCHAR',
                'constraint' => 50,
                'null'        => true,
            ],
            'password'       => [
                'type'       => 'VARCHAR',
                'constraint' => 60,
            ],
            'classId'       => [
                'type'       => 'INT',
                'constraint' => 11,
            ],
            'roomId'       => [
                'type'       => 'INT',
                'constraint' => 11,
            ],
            'gender'       => [
                'type'       => 'VARCHAR',
                'constraint' => 1,
            ],
            'gender'       => [
                'type'       => 'VARCHAR',
                'constraint' => 1,
            ],
            'ipAddress'       => [
                'type'       => 'VARCHAR',
                'constraint' => 255,
            ],
            'about'       => [
                'type'       => 'VARCHAR',
                'constraint' => 255,
            ],
            'dob'       => [
                'type'       => 'datetime',
            ],
            'status'      => [
                'type'           => 'tinyint',
                'constraint'     => 1,
            ],
            'privilegeId'      => [
                'type'           => 'INT',
                'constraint'     => 11,
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
        $this->forge->addForeignKey('roomId', 'rooms', 'id');
        $this->forge->addForeignKey('classId', 'classs', 'id');
        $this->forge->addForeignKey('privilegeId', 'privileges', 'id');
        $this->forge->createTable('students');
    }

    public function down()
    {
        $this->forge->dropTable('students');
    }
}
