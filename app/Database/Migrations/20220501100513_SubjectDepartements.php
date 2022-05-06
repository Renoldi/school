<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class SubjectDepartements extends Migration
{
    public function up()
    {
        $this->forge->addField([
            'id'          => [
                'type'           => 'INT',
                'auto_increment' => true,
                'constraint' => 11,
            ],
            'departmentId'       => [
                'type'       => 'INT',
                'constraint' => 11,
            ],
            'subjectId'       => [
                'type'       => 'INT',
                'constraint' => 11,
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
        $this->forge->addForeignKey('departmentId', 'departments', 'id');
        $this->forge->addForeignKey('subjectId', 'subjects', 'id');
        $this->forge->createTable('subjectDepartements');
    }

    public function down()
    {
        $this->forge->dropTable('subjectDepartements');
    }
}
