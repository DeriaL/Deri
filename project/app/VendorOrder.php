<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class VendorOrder extends Model
{
    public $timestamps = false;
    public function user()
    {
        return $this->belongsTo('App\User');
    }
    public function order()
    {
        return $this->belongsTo('App\Order');
    }
}