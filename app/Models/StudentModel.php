<?php

namespace App\Models;

use CodeIgniter\Model;

class StudentModel extends Model
{
	protected $DBGroup              = 'default';
	// yg diubah
	protected $table                = 'student';
	protected $primaryKey           = 'id';
	protected $useAutoIncrement     = true;
	protected $insertID             = 0;
	protected $returnType           = 'array';
	protected $useSoftDelete        = false;
	protected $protectFields        = true;
	// yg dibah
	protected $allowedFields        = ['nama', 'alamat'];

	// Dates
	// yg diubah
	protected $useTimestamps        = true;
	protected $dateFormat           = 'datetime';
	protected $createdField         = 'created_at';
	protected $updatedField         = 'updated_at';
	protected $deletedField         = 'deleted_at';

	// Validation
	protected $validationRules      = [];
	protected $validationMessages   = [];
	protected $skipValidation       = false;
	protected $cleanValidationRules = true;

	// Callbacks
	protected $allowCallbacks       = true;
	protected $beforeInsert         = [];
	protected $afterInsert          = [];
	protected $beforeUpdate         = [];
	protected $afterUpdate          = [];
	protected $beforeFind           = [];
	protected $afterFind            = [];
	protected $beforeDelete         = [];
	protected $afterDelete          = [];

	// query cari data
	public function search($keyword)
	{
		// inisialisai terlebih dahulu nama tabelnya 
		// $builder = $this->table('student');
		// $builder->like('nama', $keyword);
		// return $builder;

		// query yang simple
		return $this->table('student')->like('nama', $keyword)->orLike('alamat', $keyword);
	}
}
