<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $data = array([
            'username' => 'operator',
            'email' => 'anthony@gmail.com',
            'password' => Hash::make('password'),
            'role' => 'admin',
            'name' => 'Operator',
        ]);

        foreach ($data as $item) {
            User::create([
                'username' => $item['username'],
                'email' => $item['email'],
                'password' => $item['password'],
                'role' => $item['role'],
                'name' => $item['name'],
            ]);
        }
    }
}
