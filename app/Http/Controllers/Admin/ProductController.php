<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Product;
use App\Models\Subcategory;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     */

    public function index($maincategory_name, $subcategory_name)
    {
        $category = Category::where('maincategory_name', $maincategory_name)->first();
        $subcategory = Subcategory::where('subcategory_name', $subcategory_name)->first();

        if (!$category || !$subcategory) {
            abort(404);
        }

        $products = Product::where('category_id', $category->id)
            ->where('subcategory_id', $subcategory->id)
            ->get();

        return view('pages.admin.product.main', compact('products', 'subcategory_name', 'maincategory_name'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $categories = Category::all();
        $subcategories = Subcategory::all();

        return view('pages.admin.product.create', compact('categories', 'subcategories'));
    }

    /**
     *
     */
    public function getSubcategories($category_id)
    {
        try {
            $subcategories = Subcategory::where('category_id', $category_id)->get();

            if ($subcategories->isEmpty()) {
                return response()->json(['message' => 'No subcategories found for this category'], 404);
            }

            return response()->json($subcategories);
        } catch (\Exception $e) {
            return response()->json(['error' => $e->getMessage()], 500);
        }
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validated = $request->validate([
            'category_id' => 'required|integer',
            'subcategory_id' => 'required|integer',
            'name' => 'required',
            'brand' => 'required',
            'type' => 'required',
            'description' => 'required',
            'price' => 'required|numeric',
        ], [
            'category_id.required' => 'Kategori produk harus diisi.',
            'subcategory_id.required' => 'Subkategori produk harus diisi.',
            'name.required' => 'Nama produk harus diisi.',
            'brand.required' => 'Merek produk harus diisi.',
            'type.required' => 'Tipe produk harus diisi.',
            'description.required' => 'Deskripsi produk harus diisi.',
            'price.required' => 'Harga produk harus diisi.',
            'price.numeric' => 'Harga produk harus berupa angka.',
        ]);

        $product = Product::create([
            'category_id' => $validated['category_id'],
            'subcategory_id' => $validated['subcategory_id'],
            'name' => $validated['name'],
            'brand' => $validated['brand'],
            'type' => $validated['type'],
            'description' => $validated['description'],
            'price' => $validated['price'],
        ]);

        if ($product) {
            return redirect()->route('admin.product', [
                'category' => $product->category->maincategory_name,
                'subcategory' => $product->subcategory->subcategory_name,
            ])->with('success', 'Produk berhasil ditambahkan.');
        }

        return redirect()->back()->with('error', 'Produk gagal ditambahkan.');
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
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
