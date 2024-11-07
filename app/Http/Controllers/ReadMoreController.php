<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Illuminate\Http\Request;

class ReadMoreController extends Controller
{
    public function showPostDetails($id){
        $postDetails = Post::findorfail($id);
        return view('readmore', compact('postDetails'));
    }
}
