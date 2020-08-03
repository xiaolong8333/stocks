<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Requests\Api\AuthorizationRequest;
use App\Http\Controllers\Controller;
use Illuminate\Auth\AuthenticationException;
use App\Models\User;
use Dingo\Api\Routing\Helpers;

class AuthorizationsController extends Controller
{
    use Helpers;
    public function store(AuthorizationRequest $request)
    {
/*        /*$username = $request->username;
        //过滤变量
        filter_var($username,FILTER_VALIDATE_EMAIL)?
            $credentials['email'] = $username :
            $credentials['phone'] = $username;*/
        $credentials['name'] = $request->username;
        $credentials['password'] =  $request->password;
        $credentials['status'] = 0;

        if(!$token = \Auth::guard('api')->attempt($credentials)) {
            throw new AuthenticationException('用户名或密码错误');
        }

        return $this->respondWithToken($token)->setStatusCode(201);
    }


    public function update()
    {
        $token = auth('api')->refresh();
        return $this->respondWithToken($token);
    }
    public function updatePass(AuthorizationRequest $request)
    {
        $credentials['name'] = $request->user()->name;
        $credentials['password'] = $request->oldpass;
        if(!\Auth::attempt($credentials))
            return $this->response->error('原密码错误', 206);
        if($request->password!=$request->repassword)
            return $this->response->error('两次密码输入不一致', 206);

        $result = User::where('id',$request->user()->id)
            ->update([
                'password' => password_hash($request->password, PASSWORD_DEFAULT)
            ]);
        if(!$result)
            return $this->response->error('修改密码失败', 206);

        return $this->response->error('修改密码成功', 200);

    }

    public function destroy()
    {
        auth('api')->logout();
        return response(null,204);
    }

    protected function respondWithToken($token)
    {
        return response()->json([
            'access_token' => $token,
            'token_type' => 'Bearer',
            'expires_in' => auth('api')->factory()->getTTL() * 60
        ]);
    }
}
