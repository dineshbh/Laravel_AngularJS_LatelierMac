<?php

class UsersTableSeeder extends Seeder {

	public function run()
	{
		// Wipe the table clean before populating
		DB::table('users')->truncate();

		$now = date('Y-m-d H:i:s');


		$users = array(
			array(
				'username' => 'lateliermac',
				'password' => Hash::make('Latelier26'),
				'email'	   => 'contact@lateliermac.com'
			)
		);

		// Run the seeder
		DB::table('users')->insert($users);
	}

}
