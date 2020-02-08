<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\models\product;

class ProductController extends Controller
{
    public function index() {
        if (request()->category) {
            $content['products'] = product::select('name','slug','image','hover_image','price_reg','price_dis','price_dis_start','price_dis_end')->whereIn('sub_category_id', function ($query) {
               $query->select('id')->from('sub_category')->where('slug',request()->category);
            })->get()->all();
        }
        return view('front.shop')->with($content);
    }
}
