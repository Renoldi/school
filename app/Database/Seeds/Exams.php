<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;

class Exams extends Seeder
{
    public function run()
    {
        $iat = time();
        $now = Date('Y-m-d H:i:s', $iat);
        for ($i = 0; $i < 100; $i++) {
            $faker = \Faker\Factory::create();
            $data[] = [
                'classId'  => rand(1, 3),
                'subjectId'  => rand(1, 26),
                'question'  => $faker->text,
                'a'  => $faker->text,
                'b'  => $faker->text,
                'c'  => $faker->text,
                'd'  => $faker->text,
                'e'  => $faker->text,
                'answer'  => $now,
                'status'  => $now,
                'createdAt'  => $now,
                'updatedAt'  => $now,
            ];
        }
        $this->db->table('departments')->insertBatch($data);
    }

    function generateRandomString($length = 25) {
        $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
        $charactersLength = strlen($characters);
        $randomString = '';
        for ($i = 0; $i < $length; $i++) {
            $randomString .= $characters[rand(0, $charactersLength - 1)];
        }
        return $randomString;
    }
}
