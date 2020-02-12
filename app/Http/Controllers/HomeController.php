<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index()
    {
        return view('front.home');
    }

    public function language()
    {
        if (\request()->languageId) {
            $language = \App\models\language::select('id','name','currency')->where('id',\request()->languageId)->firstOrFail();
            $lang = [
                'languageId' => $language->id,
                'languageName' => $language->name,
                'languageCurrency' => $language->currency,
            ];
            \Session::put($lang);
            $data['status'] = 'success';
            return response()->json($data);
        }
    }
}
