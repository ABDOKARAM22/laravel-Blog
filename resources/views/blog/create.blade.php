@extends('layouts.app')
@section('title','Add Post')
@section('page_header')
                <!-- Page Header-->
                <header class="masthead" style="background-image: url('')">
                <div class="container position-relative px-4 px-lg-5">
                    <div class="row gx-4 gx-lg-5 justify-content-center">
                        <div class="col-md-10 col-lg-8 col-xl-7">
                            <div class="site-heading">
                                <h1>Add New Post</h1>
                                <span class="subheading">It Will Be Published After Admin Approval</span>
                            </div>
                        </div>
                    </div>
                </div>
            </header>
@endsection
@section('content')

<div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Add Post</div>

                    <div class="card-body">
                        <form method="POST" action="{{route('blog.store')}}" id="add" enctype="multipart/form-data" >
                            @csrf

                            <div class="form-group mb-3">
                                <label for="title" class="form-label">Title</label>
                                <input id="title" type="text" class="form-control @error('Title') is-invalid @enderror" name="title" value="{{ old('title') }}"  autocomplete="title" autofocus>

                                @error('title')
                                    <span class="form-control @error('title') is-invalid @enderror" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                            
                            <div class="form-group mb-3">
                                <label for="subtitle" class="form-label">Sub Title</label>
                                <input id="subtitle" type="text" class="form-control @error('subtitle') is-invalid @enderror" name="subtitle" value="{{ old('subtitle') }}"  autocomplete="subtitle" autofocus>

                                @error('subtitle')
                                    <span class="form-control @error('subtitle') is-invalid @enderror" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>

                            <div class="form-group mb-3">
                            <label for="description" class="form-label">Description</label>
                            <textarea id="description" class="form-control @error('description') is-invalid @enderror" name="description" form="add" rows="4">{{ old('description') }}</textarea>

                            @error('description')
                                <span class="form-control @error('image') is-invalid @enderror" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                            </div>

                            <div class="form-group mb-3">
                                <label for="image" class="form-label">Image</label>
                                <input id="image" type="file" class="form-control @error('image') is-invalid @enderror" name="image"  >

                                @error('image')
                                    <span class="form-control @error('image') is-invalid @enderror" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>

                            <div class="form-group mb-0">
                                <div class="text-center">
                                    <button type="submit" class="btn btn-primary">
                                        {{ __('Add') }}
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection