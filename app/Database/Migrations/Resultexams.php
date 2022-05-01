<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Resultexams extends Migration
{
    public function up()
    {
        $this->forge->addField([
            'id'          => [
                'type'           => 'INT',
                
                'auto_increment' => true,
                'constraint' => 11,

            ],
            'studentId'       => [
                'type'       => 'INT',
                'constraint' => 11,
            ],
            'examId'       => [
                'type'       => 'INT',
                'constraint' => 11,
            ],
            'choise'       => [
                'type'       => 'VARCHAR',
                'constraint' => 1,
            ],
             
            'status'      => [
                'type'           => 'tinyint',
                'constraint'     => 1,
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
        $this->forge->createTable('resultexams');
    }

    public function down()
    {
        $this->forge->dropTable('resultexams');
    }
}
