@extends('layouts.master')

@section('content')
<div class="container-fluid">
    <h1 class="mt-2 mb-2">{{$postDetails->category->category_name}}</h1>
    <div class="max-width:auto">
        <img src="{{$postDetails->photo_path}}" alt="" class="" style="width: 100%; max-height:500px; object-fit:cover; border-radius: 20px;">
    </div>
    <p class="fs-6 mt-2">{{$postDetails->created_at->format('d/m/Y')}} | by: {{$postDetails->writer->name}}</p>
    <p class="fs-5 mb-5">{!! nl2br($postDetails->body) !!}</p>
</div>
@endsection

