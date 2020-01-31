<?php

namespace App\models;

use Illuminate\Database\Eloquent\Model;

class sub_category extends Model
{
    protected $table = 'sub_category';
    public $timestamps = true;

    public function getSubCategory() {
        return \DB::table('sub_category')->select('id','name')->where(['status'=>TRUE,'language_id' => \Auth::user()->language_id])->get()->all();
    }
}
