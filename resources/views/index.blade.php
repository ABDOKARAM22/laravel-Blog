@extends('layouts.app')
@section('title','Home')
@section('page_header')
                <header class="masthead" style="background-image: url('assets/img/home-bg.jpg')">
                <div class="container position-relative px-4 px-lg-5">
                    <div class="row gx-4 gx-lg-5 justify-content-center">
                        <div class="col-md-10 col-lg-8 col-xl-7">
                            <div class="site-heading">
                                <h1>Laravel Blog</h1>
                                <span class="subheading">A Simple Blog Using Laravel</span>
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
            <h2 class="section-heading">Welcome to Laravel Blog</h2>
                <p>the place where technology and creativity come together. We offer a diverse range of articles and posts that cover various topics in the world of web development using the Laravel framework.</p>
                <p>Whether you're a beginner web developer looking for a guide to start working with Laravel or a seasoned developer seeking new tips and techniques, you're in the right place. We provide educational articles and creative ideas to help you improve your skills and expand your understanding of modern development techniques.</p>
                <p>We're dedicated to delivering high-quality and valuable content to assist you in achieving your goals in the development world. We welcome your contributions and suggestions, so don't hesitate to join our community and share your thoughts.</p>
                <p>Enjoy browsing the articles, and feel free to contact us if you have any questions or suggestions. Thank you for visiting, and we hope you have a useful and enjoyable experience here at Laravel Blog!</p>
            </div>
        </div>
    </div>
</article>

@endsection
