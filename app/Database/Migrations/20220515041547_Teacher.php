<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Teachers extends Migration
{
    public function up()
    {
        $this->forge->addField(
            [
                'id' => [
                    'type' => 'INT',
                    'constraint' => 11,
                    'auto_increment' => true,
                ],
                'email' => [
                    'type' => 'VARCHAR',
                    'unique' => true,
                    'constraint' => 255,
                ],
                'nip' => [
                    'type' => 'VARCHAR',
                    'constraint' => 60,
                    'null' => true,
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
                    'null' => true,
                ],
                'privilegeId' => [
                    'type' => 'INT',
                    'constraint' => 11,
                ],
                'rankId' => [
                    'type' => 'INT',
                    'constraint' => 11,
                    'null' => true,
                ],
                'rankTmt' => [
                    'type' => 'INT',
                    'constraint' => 11,
                    'null' => true,
                ],
                'groupId' => [
                    'type' => 'INT',
                    'constraint' => 11,
                    'null' => true,
                ],
                'educationlevelId' => [
                    'type' => 'INT',
                ],
                'schoolId' => [
                    'type' => 'INT',
                    'constraint' => 11,
                    'null' => true,
                ],
                'majorId' => [
                    'type' => 'INT',
                    'constraint' => 11,
                    'null' => true,
                ],
                'finishEducationLevel' => [
                    'type' => 'date',
                    'null' => true,
                ],
                'mutation' => [
                    'type' => 'date',
                    'null' => true,
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
                'statusId' => [
                    'type' => 'int',
                ],
                'employeeId' => [
                    'type' => 'INT',
                ],
                
                'password' => [
                    'type' => 'VARCHAR',
                    'constraint' => 60,
                ],
                'address' => [
                    'type' => 'varchar',
                    'constraint' => 256,
                    'null' => true,
                ],
                'phone' => [
                    'type' => 'varchar',
                    'constraint' => 15,
                    'null' => true,
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
            ]
        );
        $this->forge->addKey('id', true);
        $this->forge->addForeignKey('employeeId', 'employees', 'id');
        $this->forge->addForeignKey('statusId', 'statuss', 'id');
        $this->forge->addForeignKey('privilegeId', 'privileges', 'id');
        $this->forge->addForeignKey('educationlevelId', 'educationlevels', 'id');
        $this->forge->addForeignKey('rankId', 'ranks', 'id');
        $this->forge->addForeignKey('groupId', 'groups', 'id');
        $this->forge->addForeignKey('schoolId', 'schools', 'id');
        $this->forge->addForeignKey('majorId', 'majors', 'id');
        $this->forge->createTable('teachers');
    }

    public function down()
    {
        $this->forge->dropTable('teachers');
    }
}
