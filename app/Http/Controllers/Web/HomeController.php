<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Models\Product;

class HomeController extends Controller
{
    // public function __construct()
    // {
    //     $this->middleware('auth');
    // }

    public function index()
    {
        $products = Product::all();
        return view('pages.web.home.main', ['products' => $products]);
    }
}
