<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Admin Only
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

Route::middleware(['admin'])->prefix('admin')->group(function(){
    Route::get('/', 'admin\DashboardController@index');
    Route::get('/users','admin\UserController@index')->name('users');
    Route::get('/user/register','admin\UserController@register')->name('user.register');
    Route::get('/user/edit/{id}','admin\UserController@edit')->name('user.edit');

//    Setting
    Route::get('/setting','admin\SettingController@index')->name('setting');
    Route::post('/setting/edit','admin\SettingController@update')->name('setting.edit');

    // Language
    Route::get('/language','admin\LanguageController@index')->name('language');
    Route::any('/language/form/{form}','admin\LanguageController@form');
    Route::any('/language/form/{form}/{id}','admin\LanguageController@form');
    Route::get('/language/view/{id}','admin\LanguageController@view');
    Route::delete('/language/destroy/{id}','admin\LanguageController@destroy');
    Route::post('/language/delete_all','admin\LanguageController@delete_all')->name('language.delete_all');

    // Category
    Route::get('/category','admin\CategoryController@index')->name('category');
    Route::any('/category/form/{form}','admin\CategoryController@form');
    Route::any('/category/form/{form}/{id}','admin\CategoryController@form');
    Route::get('/category/view/{id}','admin\CategoryController@view');
    Route::delete('/category/destroy/{id}','admin\CategoryController@destroy');
    Route::post('/category/delete_all','admin\CategoryController@delete_all')->name('category.delete_all');

    // SubCategory
    Route::get('/sub-category','admin\SubCategoryController@index')->name('sub-category');
    Route::any('/sub-category/form/{form}','admin\SubCategoryController@form');
    Route::any('/sub-category/form/{form}/{id}','admin\SubCategoryController@form');
    Route::get('/sub-category/view/{id}','admin\SubCategoryController@view');
    Route::delete('/sub-category/destroy/{id}','admin\SubCategoryController@destroy');
    Route::post('/sub-category/delete_all','admin\SubCategoryController@delete_all')->name('sub-category.delete_all');

//    Attribute
    Route::get('/attribute','admin\AttributeController@index')->name('attribute');
    Route::any('/attribute/form/{form}','admin\AttributeController@form');
    Route::any('/attribute/form/{form}/{id}','admin\AttributeController@form');
    Route::get('/attribute/view/{id}','admin\AttributeController@view');
    Route::delete('/attribute/destroy/{id}','admin\AttributeController@destroy');
    Route::post('/attribute/delete_all','admin\AttributeController@delete_all')->name('attribute.delete_all');

    //    Variant
    Route::get('/variant','admin\VariantController@index')->name('variant');
    Route::any('/variant/form/{form}','admin\VariantController@form');
    Route::any('/variant/form/{form}/{id}','admin\VariantController@form');
    Route::get('/variant/view/{id}','admin\VariantController@view');
    Route::delete('/variant/destroy/{id}','admin\VariantController@destroy');
    Route::post('/variant/delete_all','admin\VariantController@delete_all')->name('variant.delete_all');

    // product
    Route::get('/product','admin\productController@index')->name('product');
    Route::any('/product/form/{form}','admin\productController@form');
    Route::any('/product/form/{form}/{id}','admin\productController@form');
    Route::get('/product/view/{id}','admin\productController@view');
    Route::get('/product/sub-cat','admin\productController@getSubCategory')->name('subcat');
    Route::post('/product/featured','admin\productController@featured')->name('featured');
    Route::delete('/product/destroy/{id}','admin\productController@destroy');
    Route::post('/product/delete_all','admin\productController@delete_all')->name('product.delete_all');
    Route::get('/product/getattr/{id}','Admin\ProductController@getattr')->name('product.getattr');
});
Auth::routes();

Route::middleware(['allowguest'])->group(function (){
    Route::get('/', 'HomeController@index')->name('home');
    Route::get('/product','ProductController@index')->name('product.index');
});

Route::fallback(function(){
    return "404 not found";
});
