<?php

namespace App\Database\Seeds;

use CodeIgniter\I18n\Time;
use CodeIgniter\Database\Seeder;

class StudentSeeder extends Seeder
{
	public function run()
	{
		// $data = [
		// 	[
		// 		'nama' 		=> 'Ihsan Miftahul Huda',
		// 		'alamat'    => 'Jl. Karangtineng No 67',
		// 		'created_at' => Time::now(),
		// 		'updated_at' => Time::now()
		// 	],
		// 	[
		// 		'nama' 		=> 'Kasyfi',
		// 		'alamat'    => 'Jl. Paster',
		// 		'created_at' => Time::now(),
		// 		'updated_at' => Time::now()
		// 	],
		// 	[
		// 		'nama' 		=> 'Fatimah Ulwiyatul Badriyah',
		// 		'alamat'    => 'Ciwidey',
		// 		'created_at' => Time::now(),
		// 		'updated_at' => Time::now()
		// 	],

		// ];

		$faker = \Faker\Factory::create('id_ID');
		for ($i = 0; $i < 100; $i++) {
			$data = [
				'nama' => $faker->name,
				'alamat' => $faker->address,
				'created_at' => Time::createFromTimestamp($faker->unixTime()),
				'updated_at' => Time::now()
			];
			$this->db->table('student')->insert($data);
		}

		// Simple Queries
		// $this->db->query("INSERT INTO student (nama, alamat, created_at, updated_at) VALUES(:nama:, :alamat:, :created_at:, :updated_at:)", $data);

		// Using Query Builder
		// $this->db->table('student')->insertBatch($data);
	}
}
