<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\StudentModel;
// use Config\Validation;

class Student extends BaseController
{
	// agar bisa di panggil di dalam turunannya
	protected $studentModel;

	public function __construct()
	{
		// jika ingin lebih prkatis taruh di BaseController
		$this->studentModel = new StudentModel();
	}

	public function index()
	{
		// mencari tahu di page berapa kita page yang sekarang misal nilai nya = 1 
		$currentPage = $this->request->getVar('page_student') ? $this->request->getVar('page_student') : 1;

		// cek pencarian
		$keyword = $this->request->getVar('keyword');
		if ($keyword) {
			// panggila method baru untuk model search
			$student = $this->studentModel->search($keyword);
		} else {
			// model default
			$student = $this->studentModel;
		}

		$jmldata = 10;

		$data = [
			'title' => 'Daftar Mahasiswa',
			// 'student' => $this->studentModel->findall()

			// cara manggil pagination 
			'student' => $student->paginate($jmldata, 'student'),
			'pager' => $this->studentModel->pager,
			'currentPage' => $currentPage,
			'jmldata' => $jmldata,
		];

		return view('student/index', $data);
	}
}
