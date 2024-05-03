<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Profile extends Model
{
    use HasFactory;

    protected $table = 'profiles';

    protected $fillable = [
        'user_id',
        'gender',
        'age',
        'skin_type_face',
        'hair_issue',
        'skin_type_body',
        'allergy_history',
        'preferred_products',
        'avoided_products',
        'specific_needs',
    ];

    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
