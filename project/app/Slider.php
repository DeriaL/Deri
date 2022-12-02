<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Slider extends Model
{
    protected $fillable = ['title','description','photo','position','title_size','title_color','title_anime','desc_size','desc_color','desc_anime'];
    public $timestamps = false;
}
