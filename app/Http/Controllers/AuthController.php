<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Profile;
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
                return redirect()->intended(route('auth.admin.dashboard'));
            } elseif (auth()->user()->role === 'user') {
                return redirect()->intended(route('auth.user.dashboard'));
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

        $profile = new Profile();
        $profile->user_id = $data->id;
        $profile->save();

        //dd($data);

        return redirect()->route('auth.form_personal_case', ['id' => $data->id]);
    }

    public function form_personal_case(string $id)
    {
        $user = User::find($id);
        if ($user) {
            return view('pages.auth.form_personal_case', compact('user'));
        }
        return redirect()->back()->with('error', 'User tidak ditemukan.');
    }

    public function storePersonalCase(Request $request, string $id)
    {
        $request->validate([
            'gender' => 'required',
            'age' => 'required',
        ], [
            'gender.required' => 'Jenis Kelamin harus diisi.',
            'age.required' => 'Umur harus diisi.',
        ]);

        $user = User::find($id);

        if (!$user) {
            return redirect()->back()->with('error', 'User tidak ditemukan.');
        }

        $profile = Profile::updateOrCreate(
            ['user_id' => $id],
            [
                'gender' => $request->gender,
                'age' => $request->age,
                'skin_type_face' => $request->skin_type_face,
                'hair_issue' => $request->hair_issue,
                'skin_type_body' => $request->skin_type_body,
                'allergy_history' => $request->allergy_history,
                'preferred_products' => $request->preferred_products,
                'avoided_products' => $request->avoided_products,
                'specific_needs' => $request->specific_needs,
            ]
        );

        return redirect()->route('auth.signin')->with('success', 'Data berhasil disimpan.');
    }

    public function do_logout(Request $request)
    {
        auth()->logout();
        $request->session()->invalidate();
        $request->session()->regenerateToken();

        return redirect()->route('auth.signin');
    }
}
