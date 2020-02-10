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
            $attribute = \App\models\attribute::select('id','name')->where('language_id',\session()->get('languageId'))->with('sub_category')->whereHas('sub_category',function ($query){
                $query->where('slug',request()->category);
            })->get()->all();
//            dd($attribute);
        }
        return view('front.shop')->with($content);
    }

    public function show()
    {
        if (request()->product) {
            $content['product'] = product::select('name','slug','image','hover_image','price_reg','price_dis','price_dis_start','price_dis_end')->where('slug',request()->product)->firstOrFail();
            return view('front.product')->with($content);
        }
    }
}
