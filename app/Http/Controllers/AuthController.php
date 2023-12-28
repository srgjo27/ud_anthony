<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class AuthController extends Controller
{
    // public function __construct()
    // {
    //     $this->middleware('auth');
    // }

    public function index()
    {
        return view('pages.auth.signin');
    }

    public function register()
    {
        return view('pages.auth.signup');
    }

    public function do_login(Request $request)
    {
        $request->validate([
            'username_or_email' => 'required',
            'password' => 'required|min:8',
        ], [
            'username_or_email.required' => 'Username atau email harus diisi.',
            'password.required' => 'Password harus diisi.',
            'password.min' => 'Password harus memiliki setidaknya 8 karakter.',
        ]);

        $loginField = filter_var($request->username_or_email, FILTER_VALIDATE_EMAIL) ? 'email' : 'username';

        $credentials = [
            $loginField => $request->username_or_email,
            'password' => $request->password,
        ];

        $errorMessage = 'Invalid credentials.';

        if ($loginField === 'email') {
            $errorMessage = 'Email atau password salah.';
        } elseif ($loginField === 'username') {
            $errorMessage = 'Username atau password salah.';
        }

        if (auth()->attempt($credentials)) {
            if (auth()->user()->role === 'admin') {
                return redirect()->route('auth.admin.dashboard');
            } elseif (auth()->user()->role === 'user') {
                return redirect()->route('auth.user.dashboard');
            }
        }

        return redirect()->back()->withInput($request->only('username_or_email'))->withErrors([
            'login_error' => $errorMessage,
        ]);
    }

    public function do_register(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'username' => 'required|unique:users,username',
            'email' => 'required|unique:users,email|email',
            'password' => 'required|min:8',
        ], [
            'name.required' => 'Nama harus diisi.',
            'username.required' => 'Username harus diisi.',
            'username.unique' => 'Username sudah digunakan.',
            'email.required' => 'Email harus diisi.',
            'email.unique' => 'Email sudah digunakan.',
            'email.email' => 'Format Alamat Email tidak valid.',
            'password.required' => 'Password harus diisi.',
            'password.min' => 'Password harus memiliki setidaknya 8 karakter.',
        ]);

        $data = new User();
        $data->name = $request->name;
        $data->username = $request->username;
        $data->email = $request->email;
        $data->password = Hash::make($request->password);
        $data->save();

        //dd($data);

        return redirect()->route('auth.signin')->with('success', 'Akun berhasil dibuat. Silahkan login.');
    }

    public function do_logout(Request $request)
    {
        auth()->logout();
        $request->session()->invalidate();
        $request->session()->regenerateToken();

        return redirect()->route('auth.signin');
    }
}
