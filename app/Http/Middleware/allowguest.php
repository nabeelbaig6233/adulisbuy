<?php

namespace App\Http\Middleware;

use Closure;

class allowguest
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
//        \Session::flush();
        if (!\Session()->has('languageId')) {
            $language = \App\models\language::select('id','name','currency')->where('id',1)->firstOrFail();
            $lang = [
                'languageId' => $language->id,
                'languageName' => $language->name,
                'languageCurrency' => $language->currency,
            ];
            \Session()->put($lang);
        }
        $languageId = \Session()->get('languageId');

        $category = \DB::table('category')->select('id','name','image','slug')->where('language_id',$languageId)->get()->toArray();
        $category_id = [];
        foreach ($category as $cat) {
            $category_id []= $cat->id;
        }
        $sub_category = \DB::table('sub_category')->select('id','name','category_id','slug')->where('language_id',$languageId)->whereIn('category_id',$category_id)->get()->toArray();
        $language = \DB::table('language')->select('id','name','currency')->get()->toArray();
        view()->share([
            'category' => $category,
            'sub_category' => $sub_category,
            'language' => $language
        ]);
        return $next($request);
    }
}
