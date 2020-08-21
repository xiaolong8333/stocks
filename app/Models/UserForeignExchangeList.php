<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class UserForeignExchangeList extends Model
{
    //
    public function exchangeList()
    {
        return $this->hasOne('App\Models\ForeignExchangeList','FS','FS');
    }
}
