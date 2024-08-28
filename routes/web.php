<?php

use App\Http\Controllers\ProductController;
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Route;

//Route::get('/', function () {
//    return view('welcome');
//});

//users
Route::get('/', [UserController::class, 'createView'])->name('website.user-registration');

Route::POST('/create-user', [UserController::class, 'register'])->name('create-user');
Route::get('/remove-user/{id}', [UserController::class, 'delete'])->name('remove-user');
Route::get('/user-list', [UserController::class, 'read'])->name('website.user-list');

Route::get('/products', [ProductController::class, 'getProduct']);

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
