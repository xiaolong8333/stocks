<?php

namespace App\Http\Controllers\Api\V1;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\ForeignExchangeList;
use App\Models\UserForeignExchangeList;
use App\Http\Resources\ForeignExchangeListResource;
use App\Http\Resources\UserForeignExchangeListResource;
use App\Models\User;
use Dingo\Api\Routing\Helpers;

class ForeignExchangeController extends Controller
{
    use Helpers;
    //
    public function index(Request $request)
    {

        $orders = ForeignExchangeList::where('FS','like','%'.$request->get('FS').'%')->orderBy('id','asc')->paginate(10)->map(function($item){
            $item['deviation'] = getFloor(abs(bcsub($item['B1'],$item['S1'],5)));
            return $item;
        });
        return ForeignExchangeListResource::collection($orders);
    }

    public function oneList($id)
    {

        $model = ForeignExchangeList::where('id',$id)->first();
        return new ForeignExchangeListResource($model);
    }
    /**
     * @param Request $request
     * @return UserForeignExchangeListResource
     */
    public function list(Request $request)
    {
        $orders = UserForeignExchangeList::where('user_id',$request->user()->id)
            ->with(["exchangeList"])
            ->orderBy('id','asc')->paginate(10)->toArray();
            if($orders['data'])
            foreach($orders['data'] as $k=>$v){

                $orders['data'][$k] = $v['exchange_list'];
                $orders['data'][$k]['deviation'] = getFloor(abs(bcsub($orders['data'][$k]['B1'],$orders['data'][$k]['S1'],5)));
            }
        return new UserForeignExchangeListResource($orders);
    }

    public function addList(Request $request)
    {
        if(UserForeignExchangeList::where(['user_id'=>$request->user()->id,'FS'=>$request->FS])->count())
            return  $this->response->error('添加失败,已存在该自选', 206);
        $model = new UserForeignExchangeList();
        $model->FS = $request->FS;
        $model->user_id = $request->user()->id;
        if($model->save())
            return new UserForeignExchangeListResource($model);
        return $this->response->error('添加失败', 206);
    }

    public function deleteList(Request $request)
    {
        $userForeignExchangeList = UserForeignExchangeList::where(['user_id'=>$request->user()->id,'FS'=>$request->FS])
            ->first();
        if($userForeignExchangeList && $userForeignExchangeList->delete())
            return response(null, 204);
            return $this->response->error('删除失败', 206);

    }
}
