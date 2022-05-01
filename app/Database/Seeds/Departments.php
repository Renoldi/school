<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;

class Departments extends Seeder
{
    public function run()
    {
        $faker = \Faker\Factory::create();
        $iat = time();
        $now = Date('Y-m-d H:i:s', $iat);
        $data = [
            [
                'name'  => 'IPA',
                'status'  =>  1,
                'createdAt'  => $now,
                'updatedAt'  => $now,
            ],
            [
                'name'  => 'IPS',
                'status'  =>  1,
                'createdAt'  => $now,
                'updatedAt'  => $now,
            ],
        ];
        $this->db->table('departments')->insertBatch($data);
    }
}
