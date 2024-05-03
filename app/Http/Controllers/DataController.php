<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;

class DataController extends Controller
{
    public function getProfilesRating()
    {
        $profilesRating = DB::select("
            SELECT
                u.id AS user_id, u.name AS user_name, pf.gender, pf.age, pf.skin_type_face,
                pf.hair_issue, pf.skin_type_body, pf.allergy_history, pf.preferred_products,
                pf.avoided_products, pf.specific_needs,
                pr.id AS review_id, pr.product_id, pr.rating
            FROM
                users u
            LEFT JOIN
                profiles pf ON u.id = pf.user_id
            LEFT JOIN
                product_reviews pr ON u.id = pr.user_id
        ");

        return response()->json($profilesRating);
    }

    public function getProductData()
    {
        $productData = DB::select("
        SELECT p.id, p.category_id, p.subcategory_id, p.name, pf.gender, pf.skin_type_face, pf.hair_issue, pf.skin_type_body, pr.user_id
        FROM products p
        LEFT JOIN product_reviews pr ON p.id = pr.product_id
        LEFT JOIN profiles pf ON pr.user_id = pf.user_id
    ");

        return response()->json($productData);
    }
}
