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
    public function exchangList()
    {
        return $this->hasOne('App\Models\ForeignExchangList','code_all','code_all');
    }
}
