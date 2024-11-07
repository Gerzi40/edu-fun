<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class CategoryController extends Controller
{
    //
    public function getDataSciencePosts(){
        $posts = Post::with(['writer', 'category'])->where('category_id', 1)->get();
        $category = 'Data Science';
        //dd($posts);
        return view('category', compact('posts', 'category'));
    }

    public function getNetworkSecurityPosts(){
        $posts = Post::with(['writer', 'category'])->where('category_id', 2)->get();
        $category = 'Network Security';
        //dd($posts);
        return view('category', compact('posts', 'category'));
    }
}
