<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class UserController extends Controller
{
    public function createView(){
        return view('website.user-registration');
    }
}
