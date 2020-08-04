<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Announcement extends Model
{
    //
    public function user()
    {
        return $this->hasOne('App\Models\User','id','user_id');
    }
    public function userAnnouncement()
    {
        return $this->hasOne('App\Models\UserAnnouncement','user_id','user_id');
    }
}
