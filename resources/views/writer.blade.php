@extends('layouts.master')

@section('content')
<div class="container-fluid">
    <h1 class="mt-2">Our Writer : </h1>
<div class="d-flex justify-content-between my-5">
    @foreach ($writers as $writer)
        <div class="card pt-2 border-0" style="width: 28rem;">
            <a class="text-reset text-decoration-none" href="/writer/{{$writer->id}}">
                <div class="d-flex justify-content-center">
                    <img src="{{ $writer->photo_path }}" class="card-img-top rounded-circle" alt="writer_photo"
                        style="width: 350px; height: 350px;">
                </div>
                <div class="card-body text-reset text-decoration-none">
                    <h1 class="card-text d-flex justify-content-center">{{ $writer->name }}</h1>
                    <p class="card-text fs-4 d-flex justify-content-center">Specialis {{ $writer->category->category_name }}</p>
                </div>
            </a>
        </div>
    @endforeach
</div>
</div>
@endsection
