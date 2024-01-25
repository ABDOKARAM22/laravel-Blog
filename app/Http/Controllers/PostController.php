<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;

class PostController extends Controller
{
    public function index()
    {
        $post = Post::get();

        return view('blog.index',['posts'=>$post]);
        
    }
    
    public function create()
    {
        if(Auth::check()){
            return view('blog.create');
        }else{
            abort(404);
        }
    }

    public function store(Request $request)
    {
        $request->validate([
            'title' => 'required',
            'subtitle' => 'required',
            'description' => 'required',
            'image' => 'required|mimes:jpg,png,jped|max:5048'
        ]);

        $slug=str::slug($request->title,"-");
        $image_name= uniqid() ."_". $slug .".".$request->image->extension();
        $request->image->move(public_path('assets/img'),$image_name);
        Post::create(
            [
                'title' => $request->input('title'),
                'subtitle' => $request->input('subtitle'),
                'slug' => $slug,
                'description' => $request->input('description'),
                'image' => $image_name,
                'user_id' => Auth::user()->id
            ]);
            
            return redirect('/blog');
        }
        
        public function show(string $slug)
        {
            
        return view('blog.show')->with('post',Post::where('slug',$slug)->first());
        
    }
        
    public function edit(string $slug)
    {
        $data = Post::where('slug',$slug)->first();
        if(Auth::check() && Auth::user()->id == $data->user_id ){
            return view('blog.edit')->with('post',$data);
        }else{
            abort(404);
        }
    }

    public function update(Request $request, string $slug)
    {
        
        $request->validate([
            'title' => 'required',
            'subtitle' => 'required',
            'description' => 'required',
            'image' => 'mimes:jpg,png,jped|max:5048'
        ]);
        
        if(isset($request->image)){
            $image_name= uniqid() ."_". $slug .".".$request->image->extension();
            $request->image->move(public_path('assets/img'),$image_name);
            Post::where('slug',$slug)->update(
                [
                'image' => $image_name
                ]
                );
        }
        
        Post::where('slug',$slug)->update(
            [
                'title' => $request->input('title'),
                'subtitle' => $request->input('subtitle'),
                'slug' => $slug,
                'description' => $request->input('description'),
                'user_id' => Auth::user()->id
            ]);
            
            return   redirect('/blog/' . $slug )->with('message',"Edit Is Done..");
            
        }
        
        public function destroy(string $slug)
        {
            Post::where('slug',$slug)->delete();
            return   redirect('/blog')->with('message',"The Post Has Been Deleted..");
        }
}
