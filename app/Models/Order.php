<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    //
    public function user()
    {
        return $this->hasOne('App\Models\User','id','user_id');
    }
    public function exchangeList()
    {
        return $this->hasOne('App\Models\ForeignExchangeList','FS','FS');
    }
    protected $fillable = ['status_type','status'];
}
