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

    public function history(Request $request)
    {
        $period=$request->get('period')??'15M';
        $pidx=$request->get('pidx')??1;
        $psize=$request->get('psize')??100;
        $symbol=$request->get('symbol')??'GBPUS';
        $host = "http://alirm-gbfsb.konpn.com";
        $path = "/query/comkm";
        $method = "GET";
        $appcode = "b03ff507efed446899e55c5bc615c682";
        $headers = array();
        array_push($headers, "Authorization:APPCODE " . $appcode);
        $querys = "period={$period}&pidx={$pidx}&psize={$psize}&symbol={$symbol}&withlast=0";
        $bodys = "";
        $url = $host . $path . "?" . $querys;

        $curl = curl_init();
        curl_setopt($curl, CURLOPT_CUSTOMREQUEST, $method);
        curl_setopt($curl, CURLOPT_URL, $url);
        curl_setopt($curl, CURLOPT_HTTPHEADER, $headers);
        curl_setopt($curl, CURLOPT_FAILONERROR, false);
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($curl, CURLOPT_HEADER, false);
        if (1 == strpos("$".$host, "https://"))
        {
            curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false);
            curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, false);
        }
        return curl_exec($curl);
    }
}
