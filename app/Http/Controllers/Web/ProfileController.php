<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Models\Profile;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ProfileController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $user = Auth::user();

        if ($user->profile) {
            $profile = $user->profile;
            return view('pages.web.profile.main', compact('profile'));
        } else {
            return redirect()->back();
        }
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $request->validate([
            // Tambahkan aturan validasi jika diperlukan
        ]);

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

        if ($profile) {
            return redirect()->route('user.profile')->with('success', 'Profil berhasil diperbarui.');
        } else {
            return redirect()->back()->with('error', 'Gagal memperbarui profil. Silakan coba lagi.');
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
