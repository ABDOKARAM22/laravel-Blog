<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    protected $fillable = [
        'title' ,'subtitle','slug' , 'description' , 'image' , 'user_id'
    ];

    function user(){
        return $this->belongsTo(user::class);
    }

}
