<?php

namespace App\Controllers;

class Kelas extends BaseController
{
    public function index()
    {
        $data = [
            'judul' => 'Kelas'
        ];

        return view('kelas/index', $data);
    }
}
