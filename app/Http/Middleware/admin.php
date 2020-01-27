<?php

namespace App\Http\Middleware;

use Auth;
use Closure;

class admin
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
        if (!empty(Auth::user()->id)) {
            $id = Auth::user()->id;
            $role = \DB::table('roles')->select('roles.name')->whereIn('roles.id',function ($query) use ($id) {
                $query->select('users.role_id')->from('users')->where('users.id',$id);
            })->first()->name;
        }
        if (!Auth::check()) {
            return redirect('login');
        }
        elseif (Auth::check() === true && $role != "admin") {
            return redirect('/');
        }
        return $next($request);
    }
}
