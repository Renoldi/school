<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Hoomrooms extends Migration
{
    public function up()
    {
        $this->forge->addField([
            'id'          => [
                'type'           => 'INT',
                'auto_increment' => true,
                'constraint' => 11,
            ],
            'roomId'       => [
                'type'       => 'INT',
                'constraint' => 11,
            ],
            'classId'       => [
                'type'       => 'INT',
                'constraint' => 11,
            ],
            'teacherId'       => [
                'type'       => 'INT',
                'constraint' => 11,
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
        $this->forge->addForeignKey('roomId', 'rooms','id');
        $this->forge->addForeignKey('classId', 'classes','id');
        $this->forge->addForeignKey('teacherId', 'teachers','id');

        $this->forge->createTable('hoomrooms');
    }

    public function down()
    {
        $this->forge->dropTable('hoomrooms');
    }
}
