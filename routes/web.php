<?php

use App\Http\Controllers\ProductController;
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});

//users
Route::get('/user-registration', [UserController::class, 'createView'])->name('website.user-registration');
//Route::get('/user-list', [UserController::class, ''])->name('website.user-registration');


Route::get('/products', [ProductController::class, 'getProduct']);

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
