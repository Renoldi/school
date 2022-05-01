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
            'answer'       => [
                'type'       => 'CHAR',
                'constraint' => 1,
            ],
            'status'      => [
                'type'           => 'tinyint',
                'constraint'     => 1,
            ],
            'createdAt' => [
                'type' => 'TIMESTAMP DEFAULT CURRENT_TIMESTAMP',
            ],
            'updatedAt' => [
                'type' => 'TIMESTAMP DEFAULT CURRENT_TIMESTAMP',
            ],
            'deletedAt' => [
                'type' => 'TIMESTAMP',
                'null' => true,
            ],
        ]);
        $this->forge->addKey('id', true);
        $this->forge->createTable('exams');
    }

    public function down()
    {
        $this->forge->dropTable('exams');
    }
}
