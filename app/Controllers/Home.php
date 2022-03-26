<?php

namespace App\Controllers;

class Home extends BaseController
{
    protected $helpers = ['form'];
    public function index()
    {
        return view('upload_form',['errors' => []]);
        // return view('welcome_message');
    }
}
