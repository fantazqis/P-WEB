<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Wisata;
use DB;

class AdminwisataController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $wisatas = Wisata::all();
        return view('admin.datawisata')->with('wisatas',$wisatas);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $post = Wisata::find($id);
        
        return view('admin.updatewisata')->with('post',$post);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $this->validate($request,[
            'title' => 'required',
            'detail' => 'required',
            'hotel' => 'required'
        ]);

        //create post
        $wisata = Wisata::find($id);
        $wisata->title = $request->input('title');
        $wisata->detail = $request->input('detail');
        $wisata->hotel = $request->input('hotel');

        $wisata->save();
        
        return redirect('/adminwisatas')->with('success','Post Updated');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $post = Wisata::find($id);

        $post->delete();
        return redirect('/adminwisatas')->with('success','Post Removed');
    }
}
