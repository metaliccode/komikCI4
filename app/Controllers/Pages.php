<?php

namespace App\Controllers;

class Pages extends BaseController
{
    public function index()
    {
        // $faker = \Faker\Factory::create();

        // dd($faker->address);
        $data = [
            'title' => 'Home | App CI4',
            'nama' => ['ihsan', 'miftahul', 'huda']
        ];
        echo view('pages/home', $data);
    }

    public function about()
    {
        $data = [
            'title' => 'About Me'
        ];
        echo view('pages/about', $data);
    }

    public function contact()
    {
        $data = [
            'title' => 'Contact Us',
            'alamat' => [
                [
                    'tipe' => 'Rumah',
                    'alamat' => 'Jl. ABC 123',
                    'kota'  => 'Garut'
                ],
                [
                    'tipe' => 'Kantor',
                    'alamat' => 'Jl. Cipaganti',
                    'kota' => 'Bandung'
                ]
            ]
        ];
        echo view('pages/contact', $data);
    }
}
