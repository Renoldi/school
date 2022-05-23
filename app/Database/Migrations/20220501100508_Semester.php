<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Semester extends Migration
{
    public function up()
    {
        $this->forge->addField([
            'id'    => [
                'type' => 'INT',
                'auto_increment' => true,
                'constraint' => 11,
            ],
            'name' => [
                'type' => 'VARCHAR',
                'constraint' => '100',
                'unique'   => true,
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
        $this->forge->createTable('semesters');
    }

    public function down()
    {
        $this->forge->dropTable('semesters');
    }
}
