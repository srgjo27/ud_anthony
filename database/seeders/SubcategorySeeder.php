<?php

namespace Database\Seeders;

use App\Models\Category;
use App\Models\Subcategory;
use Illuminate\Database\Seeder;

class SubcategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $skincareSubcategories = ['Pembersih Wajah', 'Sabun Pencuci Muka', 'Day Cream', 'Night Cream', 'Pelembab Wajah', 'UV', 'Sun Screen', 'Serum', 'Masker'];
        $haircareSubcategories = ['Shampoo', 'Hair Tonic', 'Kondisioner', 'Hair Mask', 'Hair Serum', 'Hair Oil'];
        $bodycareSubcategories = ['Sabun Mandi', 'Body Lotion', 'Exfoliating Gel', 'Body Serum', 'Body Oil', 'Body Scrub'];

        $skincareCategory = Category::where('maincategory_name', 'Skincare')->first();
        $haircareCategory = Category::where('maincategory_name', 'Haircare')->first();
        $bodycareCategory = Category::where('maincategory_name', 'Bodycare')->first();

        foreach ($skincareSubcategories as $subcategory) {
            Subcategory::create([
                'category_id' => $skincareCategory->id,
                'subcategory_name' => $subcategory,
            ]);
        }

        foreach ($haircareSubcategories as $subcategory) {
            Subcategory::create([
                'category_id' => $haircareCategory->id,
                'subcategory_name' => $subcategory,
            ]);
        }

        foreach ($bodycareSubcategories as $subcategory) {
            Subcategory::create([
                'category_id' => $bodycareCategory->id,
                'subcategory_name' => $subcategory,
            ]);
        }
    }
}
