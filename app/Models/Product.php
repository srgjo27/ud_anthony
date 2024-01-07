<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;

    protected $fillable = ['category_id', 'subcategory_id', 'name', 'brand', 'type', 'description', 'price'];

    public function category()
    {
        return $this->belongsTo(Category::class);
    }

    public function subcategory()
    {
        return $this->belongsTo(Subcategory::class);
    }

    public function images()
    {
        return $this->hasMany(Product_Image::class);
    }

    public function reviews()
    {
        return $this->hasMany(Product_Review::class);
    }

    public function getAverageRating()
    {
        return $this->reviews()->avg('rating');
    }

    public function getRatingPercentage($star)
    {
        $totalReviews = $this->reviews()->count();
        $starReviews = $this->reviews()->where('rating', $star)->count();

        return ($totalReviews > 0) ? ($starReviews / $totalReviews) * 100 : 0;
    }
}
