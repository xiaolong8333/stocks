<?php

namespace App\Http\Controllers\Api\V1;

use App\Models\User;
use App\Models\Configs;
use App\Models\ForeignExchangeList;
use App\Models\Order;
use App\Models\MoneyRecord;
use App\Models\UserPoosition;
use App\Http\Resources\OrdersResource;
use App\Http\Requests\Api\OrdersRequest;
use Illuminate\Auth\AuthenticationException;
use App\Http\Controllers\Api\Controller;
use Illuminate\Http\Request;
use Dingo\Api\Routing\Helpers;
use Illuminate\Support\Facades\DB;

class OrdersController extends Controller
{
    use Helpers;
    //
    public function index(Request $request)
    {
        $where["user_id"]=$request->user()->id;
        if($request->status_type)
            $where["status_type"] = $request->status_type;
        if($request->status)
            $where["status"] = $request->status;
        if($request->type)
            $where["type"] = $request->type;
        $orders = Order::where($where)->orderBy('id','asc')->paginate(10);

        return OrdersResource::collection($orders);

    }

    /**
     * @param Request $request
     * @param OrdersRequest $query
     * @return OrdersResource|void
     */
    public function buy(Request $request, OrdersRequest $query)
    {
        $nowPrice = ForeignExchangeList::where("code_all",$query->code_all)->first()->rate;
        if($query->type==2)
            $nowPrice = $query->buy_price??0;
        if(substr($query->code_all,3,3)!="USD")
            $nowPrice = sprintf("%.5f",1/$nowPrice);
        $rate = Configs::where("name","fees")->first()->value;
        $total_price =$nowPrice*$query->number;
        $rate = sprintf("%.5f",$rate*$nowPrice);
        $total_price += $rate;
        if($request->user()->balance-$request->user()->frozen_balance<$total_price){
            return $this->response->error('余额不足', 205);
        }
        if($order = $this->buyAction($nowPrice,$rate,$total_price,$request,$query)) {
            return new OrdersResource($order);
        }
        else{
            return $this->response->error('交易失败', 206);
        }
    }


    public function buyAction($nowPrice,$rate,$total_price,$request,$query)
    {
        $query->buy_price = $query->buy_price??0;
        $number = $this->createNumber();
        try {
            //开启默认数据库的事务
            DB::beginTransaction();
            $order = new Order();
            $order ->trade_no = $number;
            $order ->user_id = $request->user()->id;
            //$order ->new_value = $nowPrice;
            $order ->number = $query->number;
            $order ->code_all = $query->code_all;
            $order ->buy_price = $query->type==0?$nowPrice:$query->buy_price;
            $order ->buy_total_price = sprintf("%.5f",$total_price);
            $order ->rate = $rate;
            $order ->stop_loss = $query->stop_loss??'';
            $order ->stop_profit = $query->stop_profit??'';
            $order ->floating= $query->floating??0;
            $order ->type = $query->type;
            $order ->status = 1;
            $order ->status_type = 1;
            $order ->remark = $query->remark??'';
            if($query->type==2){
                $order ->status = 0;
                $order ->status_type = 0;
                $moneyData = [
                    'type'=>2,
                    'user_id'=>$request->user()->id,
                    'title'=>'委托交易-'.$query->code_all,
                    'trade_number'=>$number,
                    'pre_user_money'=>$request->user()->balance,
                    'user_money'=>$request->user()->balance,
                    'pre_frozen_money'=>$request->user()->frozen_balance,
                    'after_frozen_money'=>sprintf("%.5f",$request->user()->frozen_balance+$total_price),
                    'frozen_money'=>$total_price,
                    'money'=> 0
                ];
                User::where('id',$request->user()->id)->update(
                    [
                        'frozen_balance' =>  sprintf("%.5f",$request->user()->frozen_balance+$total_price)
                    ]
                );
            }
            else {

                $moneyData = [
                    "type"=>0,
                    "user_id"=>$request->user()->id,
                    "title"=>"购买外汇-" . $query->code_all,
                    "trade_number"=>$number,
                    "pre_user_money"=>sprintf("%.5f",$request->user()->balance),
                    "user_money"=>sprintf("%.5f",$request->user()->balance - $total_price),
                    'pre_frozen_money'=>$request->user()->frozen_balance,
                    'after_frozen_money'=>$request->user()->frozen_balance,
                    "money"=>$total_price,
                    "sx"=>$rate,
                ];

                User::where('id', $request->user()->id)->update(
                    [
                        'balance' => sprintf("%.5f",$request->user()->balance - $total_price)
                    ]
                );
                $userPoosition = UserPoosition::where(["user_id"=>$request->user()->id,"code_all"=>$query->code_all])->first();
                if($userPoosition){
                    $userPoosition->number += $query->number;
                    $userPoosition->save();
                }else{
                    $userPoosition = new UserPoosition();
                    $userPoosition->code_all = $query->code_all;
                    $userPoosition->user_id = $request->user()->id;
                    $userPoosition->number = $query->number;
                    $userPoosition->save();
                }
            }
            $moneyRecord = new MoneyRecord();
            $moneyRecord->create($moneyData);
            $order->save();
            if (true) {
                //一起提交
                DB::commit();
                return $order;
            } else {
                //一起回滚
                DB::rollback();
                return false;
            }
        } catch (\Exception $exception) {
            echo "catch some errors:".$exception->getMessage();
        }
    }

    /**
     * @param OrdersRequest $query
     * @param Order $order
     * @throws \Illuminate\Auth\Access\AuthorizationException
     */

    public function sell(Request $request,Order $order)
    {
        $this->authorize('update', $order);
        if($order->status_type!=1)
            return $this->response->error('未持仓', 205);

        //print_r($request->user());
        $sellPrice = ForeignExchangeList::where("code_all",$order->code_all)->first()->rate;
        if(substr($order->code_all,3,3)!="USD")
            $sellPrice = sprintf("%.5f",1/$sellPrice);
        //卖出价格比例
        $sellrate = Configs::where("name","sellrate")->first()->value;
        $sellPrice = $sellPrice*(1-$sellrate);
        if($order = $this->sellAction($request,$sellPrice,$order)) {
            return new OrdersResource($order);
        }
        else{
            return $this->response->error('交易失败', 206);
        }


    }

    public function sellAction($request,$sellPrice,$order)
    {
        //卖出总价
        $total_price = sprintf("%.5f",$sellPrice*$order->number);
        $number = $this->createNumber();
        try {
            //开启默认数据库的事务
            DB::beginTransaction();
            $order ->sell_price = sprintf("%.5f",$request->type==1?$sellPrice:$request->sell_price);
            $order ->sell_total_price = sprintf("%.5f",$total_price);
            $order ->status_type = 0;
            $sellOrder = new Order();
            $sellOrder->buy_trade = $order->trade_no;
            $sellOrder->trade_no =  $number;
            $sellOrder->user_id = $request->user()->id;
            //$sellOrder->new_value = $sellPrice;
            $sellOrder->number = $order->number;
            $sellOrder->code_all = $order->code_all;
            $sellOrder->sell_price = sprintf("%.5f",$request->type==1?$sellPrice:$request->sell_price);
            $sellOrder->sell_total_price = sprintf("%.5f",$total_price);
            $sellOrder->type = $request->type;
            $sellOrder->floating= $request->floating??0;
            $sellOrder->status = 1;
            $sellOrder->status_type = 0;
            $sellOrder->remark = $request->remark??'';
            if($request->type==3){
                $sellOrder->status = 0;
                $sellOrder->status_type = 1;
                $moneyData = [
                    'type'=>3,
                    'user_id'=>$request->user()->id,
                    'title'=>'委托交易-'.$order->code_all,
                    'trade_number'=>$number,
                    'pre_user_money'=>$request->user()->balance,
                    'user_money'=>$request->user()->balance,
                    'pre_frozen_money'=>$request->user()->frozen_balance,
                    'after_frozen_money'=>$request->user()->frozen_balance,
                    'frozen_money'=>$total_price,
                    'money'=> 0
                ];
            }
            else {
                //金流记录
                $moneyData = [
                    "type"=>$request->type,
                    "user_id"=>$request->user()->id,
                    "title"=>"卖出外汇-" . $order->code_all,
                    "trade_number"=>$order ->trade_no,
                    "pre_user_money"=>sprintf("%.5f",$request->user()->balance),
                    "user_money"=>sprintf("%.5f",$request->user()->balance + $total_price),
                    'pre_frozen_money'=>$request->user()->frozen_balance,
                    'after_frozen_money'=>$request->user()->frozen_balance,
                    "money"=>$total_price,
                ];
                User::where('id', $request->user()->id)->update(
                    [
                        'balance' => sprintf("%.5f",$request->user()->balance + $total_price)
                    ]
                );
                //操作持仓
                $userPoosition = UserPoosition::where(["user_id"=>$request->user()->id,"code_all"=>$order->code_all])->first();
                $userPoosition->number = $userPoosition->number-$order->number;
                $userPoosition->save();
            }
            $moneyRecord = new MoneyRecord();
            $moneyRecord->create($moneyData);
            $sellOrder->save();
            $order->save();
            if (true) {
                //一起提交
                DB::commit();
                return $sellOrder;
            } else {
                //一起回滚
                DB::rollback();
                return false;
            }
        } catch (\Exception $exception) {
            echo "catch some errors:".$exception->getMessage();
        }

    }

    public static function createNumber()
    {
        $yCode = array('A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J');

        $orderSn = $yCode[intval(date('Y')) - 2011] . strtoupper(dechex(date('m'))) . date('d') . substr(time(), -5) . substr(microtime(), 2, 5) . sprintf('%02d', rand(0, 99));

        return $orderSn;
    }

    /**
     * @desc 撤单
     */
    public function removeOrder(Request $request,Order $order)
    {
        $this->authorize('update', $order);
        if($order->status != 0)
            return $this->response->error('该订单已完成交易', 208);
        if($order->type == 2){ //撤销买入
            $order->status = 2;
            try {
                //开启默认数据库的事务
                DB::beginTransaction();
            $order->save();
            $frozen_balance = sprintf("%.5f",$request->user()->frozen_balance - $order->buy_total_price);
            User::where('id', $request->user()->id)->update(
                [
                    'frozen_balance' => $frozen_balance>0?$frozen_balance:0
                ]
            );
            $moneyData = [
                "type"=>2,
                "user_id"=>$request->user()->id,
                "title"=>"撤销买入-" . $order->code_all,
                "trade_number"=>$order ->trade_no,
                "pre_user_money"=>sprintf("%.5f",$request->user()->balance),
                "user_money"=>sprintf("%.5f",$request->user()->balance),
                'pre_frozen_money'=>$request->user()->frozen_balance,
                'after_frozen_money'=>$frozen_balance>0?$frozen_balance:0,
                "money"=>0,
                "frozen_money" => $order->buy_total_price
            ];
            $moneyRecord = new MoneyRecord();
            $moneyRecord->create($moneyData);
                if (true) {
                    //一起提交
                    DB::commit();
                    return $order;
                } else {
                    //一起回滚
                    DB::rollback();
                    return false;
                }
            } catch (\Exception $exception) {
                echo "catch some errors:".$exception->getMessage();
            }
        }
        else if($order->type == 3){ //测销卖出
            try {
                //开启默认数据库的事务
                DB::beginTransaction();
            $order->update([
                'status_type'=>0,
                'status'=>2,
            ]);
                $oldOrder = Order::where('trade_no',$order->buy_trade)->first();
                $oldOrder->status_type=1;
                $oldOrder->save();
                if (true) {
                    //一起提交
                    DB::commit();
                    return $order;
                } else {
                    //一起回滚
                    DB::rollback();
                    return false;
                }
            } catch (\Exception $exception) {
                echo "catch some errors:".$exception->getMessage();
            }
        }
    }
}
