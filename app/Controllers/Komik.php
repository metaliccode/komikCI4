<?php

namespace App\Controllers;

use App\Models\KomikModel;
use Config\Validation;

class Komik extends BaseController
{
    // agar bisa di panggil di dalam turunannya
    protected $komikModel;

    public function __construct()
    {
        // jika ingin lebih prkatis taruh di BaseController
        $this->komikModel = new KomikModel();
    }

    public function index()
    {
        // $komik = $this->komikModel->findAll();

        $data = [
            'title' => 'Judul Buku',
            'komik' => $this->komikModel->getKomik()
        ];

        // Cara konek db tanpa model
        // $db = \Config\Database::connect();
        // $komik = $db->query("SELECT * FROM komik");
        // foreach ($komik->getResultArray() as $row) {
        //     d($row);
        // }

        // $komikModel = new \App\Models\KomikModel();
        // $komikModel = new KomikModel();
        // $komik = $this->komikModel->findAll();
        // dd($komik);
        return view('komik/index', $data);
    }

    public function detail($slug)
    {
        // echo $slug;
        // lebih baik membuat method query di model 
        // methos fisrt untuk satu row data pertama 
        // $komik = $this->komikModel->where([
        //     'slug' => $slug
        // ])->first();
        // dd($komik);

        $komik = $this->komikModel->getKomik($slug);
        $data = [
            'title' => 'Detail Komik',
            'komik' => $this->komikModel->getKomik($slug)
        ];
        // Jika Komik tidak ada 
        if (empty($data['komik'])) {
            // exception di code igniter
            throw new \CodeIgniter\Exceptions\PageNotFoundException('Judul komik ' . $slug . ' tidak ditemukan.');
        }

        return view('komik/detail', $data);
    }

    // Fungsi Menampilkan form Create
    public function create()
    {
        // karena ngambil validation nya dari sesion kita harus initialisasi dulu sesionnya 
        // session(); agar tidak lupa setting session di base controller  agar tidak lupa
        $data = [
            'title' => 'Form Tambah Data',
            // dari save funtion
            'validation' => \Config\Services::validation()
        ];

        return view('komik/create', $data);
    }

    // fungsi untuk insert data ke databases
    public function save()
    {
        // mengambil seluruh data dengan getVar() mau itu method get atau post (getPotst|getGet())
        // dd($this->request->getVar());

        // validasi input sebelum save
        if (!$this->validate([
            // 'judul' => 'required|is_unique[komik.judul]',
            //  jika ingin menggunakan bahasa indonesia
            'judul' => [
                'rules' => 'required|is_unique[komik.judul]',
                'errors' => [
                    'required' => '{field} komik harus diisi. ',
                    'is_unique' => '{field} komik sudah terdaftar. '
                ]
            ],
            // uploded sampul fungsi wajib diisi
            // 'sampul' => 'is_image[sampul]|mime_in[sampul, image/jpg, image/jpeg, image/png]',
            'sampul' => [
                // jangan pake spasi 
                'rules' => 'max_size[sampul,1024]|is_image[sampul]|mime_in[sampul,image/jpg,image/jpeg,image/png]',
                'errors' => [
                    // 'uploaded' => 'Pilih gambar terlebih dahulu',
                    'max_size' => 'Ukuran gambar terlalu besar',
                    'is_image' => 'Yang anda pilih bukan gambar',
                    'mime_in' => 'Yang anda pilih bukan gambar'
                ]
            ]
        ])) {
            // cara mengambil pesan kesalahan 
            // $validation = \Config\Services::validation();
            // dd($validation);

            // return redirect()->to('/komik/create')->withInput()->with('validation', $validation);
            return redirect()->to('/komik/create')->withInput();

            // bisa pake yang bawah 
            // $data['validation'] = $validation;
            // return view('/komik/create', $data);
        };

        // ambil Gambar 
        $fileSampul = $this->request->getFile('sampul');
        // dd($fileSampul);
        // apakah tidak ada gambar yang diupload angka 4 berarti file tidak ada
        // fitur gambar default
        if ($fileSampul->getError() == 4) {
            $namaSampul = 'default.jpg';
        } else {
            // jika ingin menggunakan nama file yang digenerate
            $namaSampul = $fileSampul->getRandomName();
            // pindahkan file ke folder img fungsi move untuk langsung ke folder publik
            $fileSampul->move('img', $namaSampul);
        }

        // jika menggunakan nama file asli 
        // $fileSampul->move('img');
        // di CI4 nama file yang sama akan automatis di duplikat jadi nama baru
        // $namaSampul = $fileSampul->getName();

        // bikin slug
        $slug = url_title($this->request->getVar('judul'), '-', true);
        // insert data
        $this->komikModel->save([
            'judul' => $this->request->getVar('judul'),
            'slug' => $slug,
            'penulis' => $this->request->getVar('penulis'),
            'penerbit' => $this->request->getVar('penerbit'),
            'sampul' => $namaSampul
        ]);


        session()->setFlashdata('pesan', 'Data Berhasil Ditambahkan');
        return redirect()->to('/komik');
    }

    public function delete($id)
    {
        // cari gambar berdasarkan id
        $komik = $this->komikModel->find($id);

        // cek jika file gambarnya default 
        if ($komik['sampul'] != 'default.jpg') {
            // Jika ingin mengahapus file gambar dari server
            unlink('img/' . $komik['sampul']);
        }

        $this->komikModel->delete($id);
        session()->setFlashdata('pesan', 'Data Berhasil Dihapus');

        return redirect()->to('/komik');
    }


    public function edit($slug)
    {

        $data = [
            'title' => 'Form Tambah Data',
            'validation' => \Config\Services::validation(),
            'komik' => $this->komikModel->getKomik($slug)
        ];

        return view('komik/edit', $data);
    }

    public function update($id)
    {
        // dd($this->request->getVar());

        // cek Judul Komik 
        $komikLama = $this->komikModel->getKomik($this->request->getVar('slug'));
        if ($komikLama['judul'] == $this->request->getVar('judul')) {
            $rule_judul = 'required';
        } else {
            $rule_judul = 'required|is_unique[komik.judul]';
        }

        // validasi input sebelum save
        if (!$this->validate([
            'judul' => [
                'rules' => $rule_judul,
                'errors' => [
                    'required' => '{field} komik harus diisi. ',
                    'is_unique' => '{field} komik sudah terdaftar. '
                ]
            ],
            'sampul' => [
                // jangan pake spasi 
                'rules' => 'max_size[sampul,1024]|is_image[sampul]|mime_in[sampul,image/jpg,image/jpeg,image/png,image/webp]',
                'errors' => [
                    // 'uploaded' => 'Pilih gambar terlebih dahulu',
                    'max_size' => 'Ukuran gambar terlalu besar',
                    'is_image' => 'Yang anda pilih bukan gambar',
                    'mime_in' => 'Yang anda pilih bukan gambar'
                ]
            ]
        ])) {
            return redirect()->to('/komik/edit/' . $this->request->getVar('slug'))->withInput();
        };

        $fileSampul = $this->request->getFile('sampul');

        // cek gambar apakah gambar lama 
        if ($fileSampul->getError() == 4) {
            $namaSampul = $this->request->getVar('sampulLama');
        } else {
            // generate file random
            $namaSampul = $fileSampul->getRandomName();
            // pindahkan gambar 
            $fileSampul->move('img', $namaSampul);

            // cek jika file gambarnya default 
            if ($this->request->getVar('sampulLama') != 'default.jpg') {
                // Jika ingin mengahapus file gambar dari server
                unlink('img/' . $this->request->getVar('sampulLama'));
            }

            // hapus file yang lama
            // unlink('img/' . $this->request->getVar('sampulLama'));
        }

        // bikin slug
        $slug = url_title($this->request->getVar('judul'), '-', true);
        // insert data
        $this->komikModel->save([
            'id' => $id,
            'judul' => $this->request->getVar('judul'),
            'slug' => $slug,
            'penulis' => $this->request->getVar('penulis'),
            'penerbit' => $this->request->getVar('penerbit'),
            'sampul' => $namaSampul
        ]);


        session()->setFlashdata('pesan', 'Data Berhasil Diupdate');
        return redirect()->to('/komik');
    }
}
