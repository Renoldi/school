<?php

namespace App\Libraries;

class StdobjeToArray
{
    protected $arrayKey = [];
    protected $array = [];
    protected $keys = '';

    public function __construct($params)
    {
        
        // $count = count((array)$params);
        // $no = 0;
        // $koma = ',';
        // foreach ($params as $key => $val) {
        //     $no += 1;
            // if ($no == $count)
            //     $koma = '';
            // else
            //     $koma = ',';

            // $isArray = count((array)$val);
            var_dump($params);
            // exit;
            // if ($isArray > 1) {
            //     $subkey = [];
            //     foreach ($val as $key1 => $val1) {
            //         $subkey[$key1] = $val1;
            //     }
            //     $this->arrayKey[$key] = $subkey;
            // } else {
            //     $this->keys .= $key . $koma;
            //     $this->arrayKey[$key] = $val;
            //     $this->array[] = $val;
            // }
        // }
       
    }

    public function get(): array
    {
        return $this->arrayKey;
    }

    public function getNotKey(): array
    {
        return $this->array;
    }

    public function key(): string
    {
        return $this->keys;
    }

    public function param($index)
    {
        return $this->arrayKey[$index];
    }
}
