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
            'status'      => [
                'type'           => 'tinyint',
                'constraint'     => 1,
            ],
            'privilegeId'      => [
                'type'           => 'INT',
                'constraint'     => 11,
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
        $this->forge->createTable('students');
    }

    public function down()
    {
        $this->forge->dropTable('students');
    }
}
