<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Foundation\Auth\User;
class UserController extends Controller
{
    public function __construct()
    {
        $this->title = ucwords(str_replace('-',' ',request()->segment(2)));
    }

    public function index()
    {
        $content['title'] = $this->title;
        if (request()->ajax()) {
            return datatables()->of(User::latest()->get())
                ->addColumn('image',function($data){
                    return '<img width="65" src="'.asset(!empty($data->profile_picture)?$data->profile_picture:'assets/admin/images/placeholder.png').'">';
                })->addColumn('checkbox',function($data){
                    return '<input type="checkbox" class="delete_checkbox" value="'.$data->id.'">';
                })->addColumn('action',function($data){
                    return '<a title="Edit" href="user/edit/'.$data->id.'" class="btn btn-primary btn-sm"><i class="fa fa-pencil"></i></a>&nbsp;<a title="Duplicate" href="'.request()->segment(2).'/form/duplicate/'.$data->id.'" class="btn btn-success btn-sm"><i class="fa fa-square-o"></i></a>&nbsp;<button title="View" type="button" name="view" id="'.$data->id.'" class="view btn btn-info btn-sm"><i class="fa fa-eye"></i></button>&nbsp;<button title="Delete" type="button" name="delete" id="'.$data->id.'" class="delete btn btn-danger btn-sm"><i class="fa fa-trash"></i></button>';
                })->rawColumns(['checkbox','action','image'])->make(true);
        }
        return view('admin.'.request()->segment(2).'.list')->with($content);
    }

    public function register() {
        $content['title'] = $this->title;
        $language = new \App\models\language;
        $role = new \App\models\role;
        $content['language'] = $language->getLanguage();
        $content['role'] = $role->getRole();
        return view('admin.users.form')->with($content);
    }

    public function edit($id) {
        $content['title'] = $this->title;
        $content['record'] = User::findOrFail($id);
        $language = new \App\models\language;
        $role = new \App\models\role;
        $content['language'] = $language->getLanguage();
        $content['role'] = $role->getRole();
        return view('admin.users.edit')->with($content);
    }
}
