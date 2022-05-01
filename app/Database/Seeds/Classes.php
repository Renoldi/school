<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;

class Classes extends Seeder
{
    public function run()
    {
        $faker = \Faker\Factory::create();
        $iat = time();
        $now = Date('Y-m-d H:i:s', $iat);
        $data = [
            [
                'name'  => 'X',
                'status'  =>  1,
                'createdAt'  => $now,
                'updatedAt'  => $now,
            ],
            [
                'name'  => 'XI',
                'status'  =>  1,
                'createdAt'  => $now,
                'updatedAt'  => $now,
            ],
            [
                'name'  => 'XII',
                'status'  =>  1,
                'createdAt'  => $now,
                'updatedAt'  => $now,
            ],
        ];
        $this->db->table('classes')->insertBatch($data);
    }
}
