<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Models\Product;
use App\Models\Product_Review;
use Illuminate\Support\Facades\Http;

class HomeController extends Controller
{
    // public function __construct()
    // {
    //     $this->middleware('auth');
    // }

    public function index()
    {
        // Periksa apakah pengguna telah login
        if (auth()->check()) {
            // Dapatkan ID pengguna yang sedang masuk
            $userId = auth()->id();
            // Periksa apakah pengguna telah melakukan rating
            $hasRated = Product_Review::where('user_id', $userId)->exists();

            if ($hasRated) {
                echo "<script>alert('User has rated. Calling content-based API endpoint.');</script>";
                //dd($hasRated);
                // Jika pengguna telah memberikan rating, panggil API endpoint content-based
                $response = Http::get('http://localhost:5000/content-based/' . $userId);

                // Periksa status respons
                if ($response->successful()) {
                    // Ambil data rekomendasi produk dari respons
                    $recommendations = $response->json();
                    // Dapatkan daftar produk yang direkomendasikan dari database sesuai urutan dari rekomendasi
                    $recommendedProducts = Product::whereIn('id', $recommendations)->get()->keyBy('id')->sortBy(function ($product) use ($recommendations) {
                        return array_search($product->id, $recommendations);
                    });
                    // Tampilkan halaman utama dengan produk yang direkomendasikan
                    return view('pages.web.home.main', ['products' => $recommendedProducts]);
                } else {
                    return response()->json(['message' => 'Failed to get product recommendations.'], $response->status());
                }
            } else {
                echo "<script>alert('User has not rated. Calling user-based API endpoint.');</script>";
                // Kirim permintaan ke endpoint Python untuk mendapatkan rekomendasi produk untuk pengguna yang sedang masuk
                $response = Http::get('http://localhost:5000/user-based/' . $userId);

                // Periksa status respons
                if ($response->successful()) {
                    // Ambil data rekomendasi produk dari respons
                    $recommendations = $response->json();
                    // Dapatkan daftar produk yang direkomendasikan dari database sesuai urutan dari rekomendasi
                    $recommendedProducts = Product::whereIn('id', $recommendations)->get()->keyBy('id')->sortBy(function ($product) use ($recommendations) {
                        return array_search($product->id, $recommendations);
                    });
                    // Tampilkan halaman utama dengan produk yang direkomendasikan
                    return view('pages.web.home.main', ['products' => $recommendedProducts]);
                } else {
                    return response()->json(['message' => 'Failed to get product recommendations.'], $response->status());
                }
            }
        } else {
            echo "<script>alert('User is not logged in. Displaying random products.');</script>";
            // Jika pengguna belum login, tampilkan produk secara acak
            $randomProducts = Product::inRandomOrder()->take(6)->get();
            return view('pages.web.home.main', ['products' => $randomProducts]);
            //return false;
        }
    }
}
