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
        $this->type = $data['type'];
        $this->user_id = $data['user_id'];
        $this->title = $data['title'];
        $this->trade_number =$data['trade_number'];
        $this->pre_user_money = $data['pre_user_money'];
        $this->user_money = $data['user_money'];
        $this->pre_frozen_money = $data['pre_frozen_money'];
        $this->after_frozen_money = $data['after_frozen_money'];
        $this->frozen_money = $data['frozen_money']??0;
        $this->money = $data['money']??0;
        $this->sx = $data['sx']??'0';
        $this->save();
    }
}
