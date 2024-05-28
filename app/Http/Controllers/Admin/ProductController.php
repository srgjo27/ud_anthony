<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Product;
use App\Models\Product_Image;
use App\Models\Subcategory;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;

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
                return response()->json(['message' => 'Tidak ada subkategori yang ditemukan untuk kategori ini'], 404);
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
            'skin_type' => 'required',
            'description' => 'required',
            'price' => 'required|numeric',
            'images.*' => 'image|mimes:jpg,jpeg,png|max:2048',
        ], [
            'category_id.required' => 'Kategori produk harus diisi.',
            'subcategory_id.required' => 'Subkategori produk harus diisi.',
            'name.required' => 'Nama produk harus diisi.',
            'brand.required' => 'Merek produk harus diisi.',
            'type.required' => 'Tipe produk harus diisi.',
            'skin_type.required' => 'Tipe kulit produk harus diisi.',
            'description.required' => 'Deskripsi produk harus diisi.',
            'price.required' => 'Harga produk harus diisi.',
            'price.numeric' => 'Harga produk harus berupa angka.',
            'images.*.image' => 'File harus berupa gambar.',
            'images.*.mimes' => 'Gambar harus berformat jpg, jpeg, atau png.',
            'images.*.max' => 'Ukuran gambar tidak boleh lebih dari 2 MB.',
        ]);

        $product = new Product;
        $product->category_id = $request->category_id;
        $product->subcategory_id = $request->subcategory_id;
        $product->name = $request->name;
        $product->brand = $request->brand;
        $product->type = $request->type;
        $product->skin_type = $request->skin_type;
        $product->description = $request->description;
        $product->price = $request->price;
        $product->save();

        if ($product) {
            if ($request->hasFile('images')) {
                foreach ($request->file('images') as $image) {
                    $filename = Str::random(25) . '.' . $image->getClientOriginalExtension();
                    $path = $image->storeAs('public/images', $filename);
                    Product_Image::create([
                        'product_id' => $product->id,
                        'image' => Storage::url($path),
                    ]);
                }
            }

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
        $product = Product::find($id);

        if ($product) {
            $categories = Category::all();
            $subcategories = Subcategory::all();

            return view('pages.admin.product.create', compact('product', 'categories', 'subcategories'));
        }

        return redirect()->back()->with('error', 'Produk tidak ditemukan.');
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $request->validate([
            'category_id' => 'integer',
            'subcategory_id' => 'integer',
            'name' => 'string',
            'brand' => 'string',
            'type' => 'string',
            'skin_type' => 'string',
            'description' => 'string',
            'price' => 'numeric',
            'images.*' => 'image|mimes:jpg,jpeg,png|max:2048',
        ]);

        $product = Product::find($id);

        if (!$product) {
            return redirect()->back()->with('error', 'Produk tidak ditemukan.');
        }

        $product->update($request->all());

        if ($request->hasFile('images')) {
            foreach ($product->images as $image) {
                Storage::delete(str_replace('/storage', 'public', $image->image));
            }

            foreach ($request->file('images') as $image) {
                $filename = Str::random(10) . '.' . $image->getClientOriginalExtension();
                $path = $image->storeAs('public/images', $filename);
                Product_Image::create([
                    'product_id' => $product->id,
                    'image' => Storage::url($path),
                ]);
            }
        }

        return redirect()->route('admin.product', [
            'category' => $product->category->maincategory_name,
            'subcategory' => $product->subcategory->subcategory_name,
        ])->with('success', 'Produk berhasil diperbarui.');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $product = Product::find($id);

        if ($product) {
            foreach ($product->images as $image) {
                Storage::delete(str_replace('/storage', 'public', $image->image));
            }

            $product->delete();

            return response()->json([
                'status' => 'success',
                'message' => 'Produk berhasil dihapus.',
            ], 200);
        }

        return response()->json([
            'status' => 'error',
            'message' => 'Produk gagal dihapus.',
        ], 500);
    }
}
