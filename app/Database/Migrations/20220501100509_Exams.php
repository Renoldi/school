<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Exams extends Migration
{
    public function up()
    {
        $this->forge->addField([
            'id'          => [
                'type'           => 'INT',
                'auto_increment' => true,
                'constraint' => 11,
            ],
            'classId'          => [
                'type'           => 'INT',
                'constraint'     => 11,
            ],
            'subjectId'       => [
                'type'           => 'INT',
                'constraint'     => 11,
            ],
            'question'      => [
                'type'           => 'TEXT',
                'null'        => true,
            ],
            'questionImage' => [
                'type'           => 'VARCHAR',
                'constraint'     => 50,
                'null'        => true,
            ],
            'show' => [
                'type'           => 'ENUM("both","text","image")',
            ],
            'a'       => [
                'type'           => 'TEXT',
            ],
            'b'       => [
                'type'           => 'TEXT',
            ],
            'c'       => [
                'type'           => 'TEXT',
            ],
            'd'       => [
                'type'           => 'TEXT',
            ],
            'e'       => [
                'type'           => 'TEXT',
            ],
            'point'       => [
                'type'           => 'INT',
                'constraint'     => 3,
            ],

            'answer'       => [
                'type'       => 'CHAR',
                'constraint' => 1,
            ],
            'status'      => [
                'type'           => 'tinyint',
                'constraint'     => 1,
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
        $this->forge->addForeignKey('subjectId', 'subjects','id');
        $this->forge->addForeignKey('classId', 'classes','id');
        $this->forge->createTable('exams');
    }

    public function down()
    {
        $this->forge->dropTable('exams');
    }
}
