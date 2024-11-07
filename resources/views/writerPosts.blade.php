@extends('layouts.master')

@section('content')
{{-- <div class="d-flex flex-row">
    <div class="align-items-center w-100 p-2 mb-3">
        <img src="{{$writer->photo_path}}" alt="" class="img-fluid w-50 rounded-circle">
        <h1>{{$writer->name}}</h1>
        <h2>Specialis {{$writer->category->category_name}}</h2>
    </div>
</div> --}}
<div class="card pt-2 border-0 mb-5 ms-4 mt-2" style="width: 28rem;">
    <div class="d-flex col justify-content-center align-items-center">
        <div class="me-2">
            <img src="{{$writer->photo_path}}" class="card-img-top rounded-circle" alt="writer_photo" style="width: 160px; height: 150px;">
        </div>
        <div class="card-body">
            <h1 class="card-text fs-2">{{$writer->name}}</h1>
            <p class="card-text fs-5">Specialis {{$writer->category->category_name}}</p>
        </div>
    </div>
</div>
<div class="container-fluid">
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