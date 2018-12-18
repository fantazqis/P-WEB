<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\Wisata;

class DashboardController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if (auth()->user()->bool !== 0) {
            return redirect('\about')->with('error','Unauthorized Page');
        }
<<<<<<< HEAD
        //$user_id = auth()->user()->id;
        //$id = auth()->user();
        //$user = Wisata::find($id);
        return view('dashboard');//->with('wisatas',$user->wisata);
=======
        $user_id = auth()->user()->id;
        $user = User::find($user_id);
        return view('dashboard')->with('posts',$user->posts);
>>>>>>> 95803e515ab4cb553beb93bb8e4f5af0432262e1
    }
}
