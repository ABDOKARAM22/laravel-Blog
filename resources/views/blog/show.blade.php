@extends('layouts.app')
@section('title', 'Post')
@section('page_header')
    <!-- Page Header-->
    <header class="masthead" style="background-image: url('assets/img/about-bg.jpg')">
        <div class="container position-relative px-4 px-lg-5">
            <div class="row gx-4 gx-lg-5 justify-content-center">
                <div class="col-md-10 col-lg-8 col-xl-7">
                    <div class="site-heading">
                        <h1>Posted By: {{ $post->user->name }}</h1>
                        <span class="subheading"> On: {{ date('Y-M-d', strtotime($post['updated_at'])) }}</span>
                    </div>
                </div>
            </div>
        </div>
    </header>
@endsection
@section('content')

<article class="mb-4">
    <div class="container px-4 px-lg-5">
        <div class="row gx-4 gx-lg-5 justify-content-center">
            <div class="col-md-10 col-lg-8 col-xl-7">
                @if(session()->has('message'))
                <div class="alert alert-success" role="alert">
                <h3> {{ session()->get('message') }} </h3>
                </div>
                @endif

                <h2 class="section-heading">{{ $post->title }}</h2><hr>
                <h3>{{ $post->subtitle }}</h3><br>
                <img class="img-fluid" src="{{ url('assets/img/' . $post->image) }}" alt="..." />
                <br><br>
                <p>{{ $post->description }}</p><br>

                    @if(Auth::user() && Auth::user()->id == $post->user_id )
                <a href="/blog/{{$post->slug}}/edit" class="btn btn-primary">Edit Post</a>
                <form method="post" action="/blog/{{ $post->slug }}">
                    @csrf
                    @method('delete')
                    <button type="submit" class="btn btn-danger">Delete Post</button>
                </form>
                    @endif
            </div>
        </div>
    </div>
</article>
@endsection
