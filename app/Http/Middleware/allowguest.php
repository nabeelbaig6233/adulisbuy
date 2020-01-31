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
        if (!\Session()->has('languageId')) {
            \Session()->put('languageId' , '1');
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
