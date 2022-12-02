<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    protected $fillable = ['cat_name', 'cat_slug','featured','photo'];
    public $timestamps = false;


    public function subs()
    {
    	return $this->hasMany('App\Subcategory');
    }

    public function products()
    {
        return $this->hasMany('App\Product');
    }
}
