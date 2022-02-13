<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $emps = User::orderBy('id', 'desc')->get();
        return response()->json($emps);
    }
    public function getUser($id) {
        $em = User::findOrFail($id);
        return response()->json($em);
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
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     *
     *
     *
     *
     * name: this.currentUser.name,
     * phone: this.currentUser.phone,
     * title: this.currentUser.title,
     * dec: this.currentUser.dec,
     * files: [],
     * img: null
     */
    public function update(Request $request, $id)
    {
        $category = User::find($id);

        $category->name = $request->name;
        $category->phone = $request->phone;
        $category->title = $request->title;
        $category->dec = $request->dec;

        if($request->img && $request->img !== $category->img){
            $img = $request->img;
            $img_new_name = time().$img->getClientOriginalName();
            $img->move('img/', $img_new_name);
            $category->img = $img_new_name;
        }
        $category->save();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        // $category = Category::find($id);
        // $category->delete();

        // return response()->json([
        //     'status' => 'success',
        //     'message' => 'Category Deleted Successfully'
        // ]);
    }
}
