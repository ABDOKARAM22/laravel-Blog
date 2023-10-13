@extends('layouts.app')
@section('title','All')
@section('page_header')
                <!-- Page Header-->
                <header class="masthead" style="background-image: url('assets/img/about-bg.jpg')">
                <div class="container position-relative px-4 px-lg-5">
                    <div class="row gx-4 gx-lg-5 justify-content-center">
                        <div class="col-md-10 col-lg-8 col-xl-7">
                            <div class="site-heading">
                                <h1>All Posts</h1>
                                <span class="subheading">Here You Will Find The Best Articles..</span>
                            </div>
                        </div>
                    </div>
                </div>
            </header>
            @endsection
            @section('content')
            
            
            
            @if(session()->has('message'))
            <div class="container px-4 px-lg-5">
                <div class="alert alert-success" role="alert">
                <h3> {{ session()->get('message') }} </h3>
                </div>
            </div>
            @endif

            @foreach ($posts as $post) 
            <article class="mb-4">
                <div class="container px-4 px-lg-5">
                    <div class="row gx-4 gx-lg-5 justify-content-center">
                        <div class="col-md-10 col-lg-8 col-xl-7">
                            <!-- Post preview-->
                <div class="post-preview">
                    <div class="row">
                        <div class="col-md-3"> 
                                <img src="{{ url('assets/img/' . $post->image) }}" alt="Error" class="img-fluid">
                        </div>
                        <div class="col-md-9"> 
                            <a href="blog/{{$post['slug']}}">
                                <h2 class="post-title">{{$post['title']}}</h2>
                            </a>
                            <h3 class="post-subtitle">{{$post['subtitle']}}</h3>
                            <p class="post-meta">
                                Posted by :
                                {{$post->user->name}}
                                on {{ date('Y-M-d',strtotime($post['updated_at'])) }}
                            </p>
                        </div>
                    </div>
                </div>
                <!-- Divider-->
                <hr class="my-4" />    
            </article>
            @endforeach

@endsection