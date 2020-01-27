<?php

namespace App\models;

use Illuminate\Database\Eloquent\Model;

class language extends Model
{
    protected $table = 'language';
    public $timestamps = true;

    public function getLanguage() {
        return \DB::table('language')->select('id','name','currency')->where('status',TRUE)->get()->toArray();
    }
}
