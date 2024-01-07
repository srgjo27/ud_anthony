<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Models\Product;
use App\Models\Product_Review;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function show($id)
    {
        $product = Product::find($id);
        $hasRated = false;
        if (auth()->check()) {
            $hasRated = $product->reviews()->where('user_id', auth()->id())->exists();
        }

        return view('pages.web.product.detail', compact('product', 'hasRated'));
    }

    public function rate(Request $request, $id)
    {
        $request->validate([
            'rating' => 'required|numeric|min:1|max:5',
            'review' => 'required|string',
        ]);

        Product_Review::create([
            'product_id' => $id,
            'user_id' => auth()->id(),
            'rating' => $request->rating,
            'review' => $request->review,
        ]);

        return redirect()->back()->with('success', 'Review dan ulasan berhasil dibuat');
    }
}
