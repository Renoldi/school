<?php

namespace App\Database\Seeds;

use App\Entities\Employee as EntitiesEmployee;
use App\Models\Employee as ModelsEmployee;
use CodeIgniter\Database\Seeder;

class Employee extends Seeder
{
    public function run()
    {
        $model = new ModelsEmployee();
        $entities = new EntitiesEmployee();
        $data = [
            ['name' => 'ALMARHUM', 'statusId' => 1],
            ['name' => 'BANGUNAAN', 'statusId' => 1],
            ['name' => 'BECAK', 'statusId' => 1],
            ['name' => 'BURUH', 'statusId' => 1],
            ['name' => 'DAGANG', 'statusId' => 1],
            ['name' => 'GURU', 'statusId' => 1],
            ['name' => 'GURU HONORER', 'statusId' => 1],
            ['name' => 'IRT', 'statusId' => 1],
            ['name' => 'KANTIN', 'statusId' => 1],
            ['name' => 'KARYAWAN HONORER', 'statusId' => 1],
            ['name' => 'NELAYAN', 'statusId' => 1],
            ['name' => 'PEDAGANG', 'statusId' => 1],
            ['name' => 'PEGAWAI DAERAH', 'statusId' => 1],
            ['name' => 'PEGAWAI SWASTA', 'statusId' => 1],
            ['name' => 'PENSIUNAN', 'statusId' => 1],
            ['name' => 'PENSIUNAN PNS', 'statusId' => 1],
            ['name' => 'PERAWAT', 'statusId' => 1],
            ['name' => 'PERIKANAN', 'statusId' => 1],
            ['name' => 'PETANI', 'statusId' => 1],
            ['name' => 'PJS', 'statusId' => 1],
            ['name' => 'PNS', 'statusId' => 1],
            ['name' => 'SOPIR', 'statusId' => 1],
            ['name' => 'SWASTA', 'statusId' => 1],
            ['name' => 'TANI', 'statusId' => 1],
            ['name' => 'TIDAK BEKERJA', 'statusId' => 1],
            ['name' => 'TUKANG BATU', 'statusId' => 1],
        ];
        foreach ($data as $data) {
            $entities->fill($data);
            if (!$model->save($entities)) {
                var_dump($model->errors());
            }
        }
    }
}
