<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function getAllPosts(){
        $posts = Post::all();
        //dd($posts);
        return view('home', compact('posts'));
    }
}
