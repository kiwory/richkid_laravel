<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class UserController extends Controller
{
    public function createView(){
        return view('website.user-registration');
    }

    public function register(Request $request){
        try
        {

            if($request->input('password') != $request->input('con-password')){return "Passwords do not match";}else {
                $user = new User;

                $user->name = $request->input('first-name') . " " . $request->input('last-name');
                $user->email = $request->input('email');
                $user->phone = $request->input('phone');
                $user->password = $request->input('password');
                $user->role = "root";
                $user->permission = "root";

                $user->save();

                return redirect()->route('website.user-list');

            }

        }
        catch (\Exception $error) {
            //return redirect()->back()->with("Error", "Error: ".$error->getMessage());
            return $error->getMessage();
        }
    }

    public function read(){
        //DB::table('users')->get();
        $users = User::all();
        return view('website.user-list', compact('users'));
    }

    public function delete($id){
        $users = User::where('id', $id)->delete();
        return redirect()->route('website.user-list');
    }

//    public function read(){
//        //DB::table('users')->get();
//        $users = User::all();
//        return view('website.user-list', compact('users'));
//    }
}

//CRUD "CREATE | READ | UPDATE | DELETE";
