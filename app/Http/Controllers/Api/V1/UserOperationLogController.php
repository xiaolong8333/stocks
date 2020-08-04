<?php

namespace App\Http\Controllers\Api\V1;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Resources\UserOperationLogResource;
use App\Models\UserOperationLog;

class UserOperationLogController extends Controller
{
    //
    public function index(Request $request)
    {
        $where = [];
        $where['user_id'] = $request->user()->id;
        if(isset($request->log_type))
            $where['log_type'] = $request->log_type;
        $userlog = UserOperationLog::where($where)->orderBy('id','asc')->paginate(10);

        return UserOperationLogResource::collection($userlog);
    }
}
