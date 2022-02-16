<?php

namespace App\Controllers;

class Kirim extends BaseController
{
    public function index()
    {
        $data = [
            'judul' => 'Kirim'
        ];

        return view('kirim/index', $data);
    }
}
