@extends('layouts.master')

@section('content')
    <div class="container-fluid mt-3 mb-5">
      <h1 class="my-3">{{$category}}</h1>
      <div class="container-fluid mb-5">
        @foreach ($posts as $post)
            <div class="card mb-3 border-1" style="max-width: auto;">
                <div class="row g-0">
                  <div class="col-md-4">
                    <div>
                        <img src="{{$post->photo_path}}" class="img-fluid rounded-start rounded-3" style="width: 500px; height: 300px; object-fit:cover;" alt="ini_photo">
                    </div>
                  </div>
                  <div class="col-md-8 d-flex row align-items-between">
                    <div class="card-body">
                        <div class="">
                            <h5 class="card-title fs-1">{{$post->title}}</h5>
                            <p class="card-text fs-5"><small class="text-muted">{{$post->created_at->format('d/m/Y')}} | by : {{$post->writer->name}}</small></p>
                            <p class="card-text fs-3">{{Str::limit($post->body, 100)}}</p>
                        </div>
                    </div>
                    <div class="my-2 d-flex justify-content-end pe-2">
                        <a href="/readmore/{{$post->id}}">
                            <button type="button" class="btn btn-custom btn-lg">Read More...</button>
                        </a>
                    </div>
                  </div>
                </div>
            </div>
        @endforeach
        </div>
        
      </div>
@endsection