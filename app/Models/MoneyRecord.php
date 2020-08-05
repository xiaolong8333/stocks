<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class MoneyRecord extends Model
{
    //
    public function user()
    {
        return $this->hasOne('App\Models\User','id','user_id');
    }

    public function create($data)
    {

        foreach($data as $key=>$value){
            $this->$key = $value;
        }
        $this->save();
    }
}
