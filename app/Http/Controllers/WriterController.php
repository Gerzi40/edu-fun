<?php

namespace App\Http\Controllers;

use App\Models\Post;
use App\Models\Writer;
use Illuminate\Http\Request;

class WriterController extends Controller
{
    //
    public function getAllWriters(){
        $writers = Writer::all();
        return view('writer', compact('writers'));
    }

    public function getSpecificPost($id){
        $posts = Post::with('writer')->where('writer_id', $id)->get();
        $writer = Writer::findorfail($id);
        return view('writerPosts', compact('posts', 'writer'));
    }
}
