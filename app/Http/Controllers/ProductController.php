<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\models\product;

class ProductController extends Controller
{
    public function index() {
        if (request()->category) {
            $content['products'] = product::select('id','name','slug','image','short_description','hover_image','price_reg','price_dis','price_dis_start','price_dis_end','status')->where('sub_category_id', function ($query) {
               $query->select('id')->from('sub_category')->where('slug',request()->category);
            })->get()->all();
            $attribute = \App\models\attribute::select('id','name')->where('language_id',\session()->get('languageId'))->with('sub_category')->whereHas('sub_category',function ($query){
                $query->where('slug',request()->category);
            })->get()->all();
            $content['new'] = product::select('name','image','price_reg','price_dis','price_dis_start','price_dis_end','slug','status')->where('sub_category_id', function ($query) {
                $query->select('id')->from('sub_category')->where('slug',request()->category);
            })->orderBy('id','desc')->limit(6)->get()->all();
        }
        return view('front.shop')->with($content);
    }

    public function show()
    {
        if (request()->product) {
            $content['product'] = product::select('name','short_description','description','slug','image','multi_image','hover_image','price_reg','price_dis','price_dis_start','price_dis_end','status')->where('slug',request()->product)->firstOrFail();
            $content['new'] = product::select('name','image','price_reg','price_dis','price_dis_start','price_dis_end','slug','status')
                ->where('slug','<>',request()->product)->where('sub_category_id',function ($query){
                    $query->select('sub_category_id')->from('product')->where('slug',request()->product);
                })->orderBy('id','desc')->limit(6)->get()->all();
            $content['related'] = product::select('id','sub_category_id','name','short_description','image','hover_image','price_reg','price_dis','price_dis_start','price_dis_end','slug','status')
                ->where('slug','<>',request()->product)->where('sub_category_id',function ($query){
                    $query->select('sub_category_id')->from('product')->where('slug',request()->product);
                })->mightAlsoLike()->get()->all();
            return view('front.product')->with($content);
        }
    }
}
