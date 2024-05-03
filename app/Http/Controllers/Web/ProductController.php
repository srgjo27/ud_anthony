<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Product;
use App\Models\Product_Review;
use App\Models\Subcategory;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function index($maincategory_name, $subcategory_name)
    {
        $category = Category::where('maincategory_name', $maincategory_name)->first();
        $subcategory = Subcategory::where('subcategory_name', $subcategory_name)->first();

        if (!$category || !$subcategory) {
            abort(404);
        }

        $products = Product::where('category_id', $category->id)
            ->where('subcategory_id', $subcategory->id)
            ->paginate(12);

        return view('pages.web.product.main', compact('products', 'subcategory_name', 'maincategory_name'));
    }

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
        ]);

        Product_Review::create([
            'product_id' => $id,
            'user_id' => auth()->id(),
            'rating' => $request->rating,
        ]);

        return redirect()->back()->with('success', 'Review berhasil dibuat');
    }
}
