<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Illuminate\Http\Request;

class PopularController extends Controller
{
    //
    public function popularPaginate(){
        $posts = Post::paginate(3);
        return view('popular', compact('posts'));
    }
}
