<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Students extends Migration
{
    public function up()
    {
        $this->forge->addField([
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
            'name' => [
                'type' => 'VARCHAR',
                'constraint' => 100,
            ],
            'classId' => [
                'type' => 'INT',
                'constraint' => 11,
                'null' => true,
            ],
            'roomId' => [
                'type' => 'INT',
                'constraint' => 11,
                'null' => true,
            ],
            'gender' => [
                'type' => 'VARCHAR',
                'constraint' => 1,
            ],
            'placeOfBirth' => [
                'type' => 'VARCHAR',
                'constraint' => 50,
                'null' => true,
            ],
            'dayOfBirth' => [
                'type' => 'date',
                'null' => true,
            ],
            'nis' => [
                'type' => 'VARCHAR',
                'constraint' => 10,
                'null' => true,
            ],
            'nisn' => [
                'type' => 'VARCHAR',
                'constraint' => 15,
                'null' => true,
            ],
            'noKk' => [
                'type' => 'VARCHAR',
                'constraint' => 20,
                'null' => true,
            ],
            'nik' => [
                'type' => 'VARCHAR',
                'constraint' => 20,
                'null' => true,
            ],
            'numberOfSiblings' => [
                'type' => 'int',
                'constraint' => 3,
                'null' => true,
            ],
            'fromOfSiblings' => [
                'type' => 'int',
                'constraint' => 3,
                'null' => true,
            ],
            'orphan' => [
                'type' => 'VARCHAR',
                'constraint' => 15,
                'null' => true,
            ],
            'schoolId' => [
                'type' => 'int',
            ],
            'address' => [
                'type' => 'VARCHAR',
                'constraint' => 50,
                'null' => true,
            ],
            'fatherNik' => [
                'type' => 'VARCHAR',
                'constraint' => 20,
                'null' => true,
            ],
            'fatherName' => [
                'type' => 'VARCHAR',
                'constraint' => 50,
                'null' => true,
            ],
            'fatherEmployeeId' => [
                'type' => 'int',
                'constraint' => 50,
                'null' => true,
            ],
            'fatherSchoolId' => [
                'type' => 'int',
                'null' => true,
            ],
            'fatherincome' => [
                'type' => 'int',
                'null' => true,
            ],
            'motherNik' => [
                'type' => 'VARCHAR',
                'constraint' => 20,
                'null' => true,
            ],
            'motherName' => [
                'type' => 'VARCHAR',
                'constraint' => 50,
                'null' => true,
            ],
            'motherEmployeeId' => [
                'type' => 'int',
                'constraint' => 50,
                'null' => true,
            ],
            'motherSchoolId' => [
                'type' => 'int',
                'null' => true,
            ],
            'motherincome' => [
                'type' => 'int',
                'null' => true,
            ],
            'image' => [
                'type' => 'VARCHAR',
                'constraint' => 50,
                'null' => true,
            ],
            'phone' => [
                'type' => 'VARCHAR',
                'constraint' => 15,
                'null' => true,
            ],
            'phoneFamily' => [
                'type' => 'VARCHAR',
                'constraint' => 15,
                'null' => true,
            ],
            'password' => [
                'type' => 'VARCHAR',
                'constraint' => 60,
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
            'statusId' => [
                'type' => 'int',
            ],
            'privilegeId' => [
                'type' => 'INT',
                'constraint' => 11,
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
        $this->forge->addForeignKey('schoolId', 'schools', 'id');
        $this->forge->addForeignKey('fatherSchoolId', 'schools', 'id');
        $this->forge->addForeignKey('motherSchoolId', 'schools', 'id');
        $this->forge->addForeignKey('motherEmployeeId', 'employees', 'id');
        $this->forge->addForeignKey('fatherEmployeeId', 'employees', 'id');
        $this->forge->addForeignKey('roomId', 'rooms', 'id');
        $this->forge->addForeignKey('classId', 'classes', 'id');
        $this->forge->addForeignKey('privilegeId', 'privileges', 'id');
        $this->forge->createTable('students');
    }

    public function down()
    {
        $this->forge->dropTable('students');
    }
}
