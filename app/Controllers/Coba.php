<?php

namespace App\Controllers;

class Coba extends BaseController
{
    public function index()
    {
        echo "Hello World";
    }
    public function about($nama = '')
    {
        // echo "Nama Saya $this->nama";
        echo "Nama Saya $nama .";
    }
}
