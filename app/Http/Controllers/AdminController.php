<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Admin;

class AdminController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        //$this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //$user_id = auth()->user()->id;
        //$user = User::find($user_id);
        $admin = Admin::all();
        return view('admin.dashboard_admin')->with('admin',$admin);
    }

    public function datatable()
    {
        return view('admin.datatable');
    }
}
