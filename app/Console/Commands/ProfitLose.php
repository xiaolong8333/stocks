<?php

namespace App\Console\Commands;

use App\Models\ForeignExchangeList;
use Illuminate\Console\Command;
use App\Models\UserPoosition;
use App\Models\User;
use App\Models\Configs;
use App\Models\Order;
use App\Models\MoneyRecord;
use Illuminate\Support\Facades\DB;

class ProfitLose extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'profitlose';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Command description';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return mixed
     */
    public function handle()
    {
        //
        $orders = DB::table('orders')
            ->selectRaw('orders.*,IF(foreign_exchange_lists.rate<orders.stop_loss,0,1) as loseprofit,foreign_exchange_lists.code_all,foreign_exchange_lists.rate')
            ->leftJoin('foreign_exchange_lists', 'orders.code_all', '=', 'foreign_exchange_lists.code_all')
            ->whereRaw('(foreign_exchange_lists.rate<orders.stop_loss || foreign_exchange_lists.rate>orders.stop_profit) && orders.status_type=1 && orders.stop_loss!=0.00000 && orders.stop_profit!=0.00000')
            ->get();
        $this->sellAction($orders);
    }

    public function sellAction($orders)
    {

        foreach($orders as $key=>$value){
            $sellPrice =$value->rate;
            $trade_no = $this->createNumber();
            if(substr($value->code_all,3,3)!="USD")
                $sellPrice = sprintf("%.5f",1/$sellPrice);
            //卖出价格比例
            $sellrate = Configs::where("name","sellrate")->first()->value;
            $sellPrice = $sellPrice*(1-$sellrate);
            $total_price = sprintf("%.5f",$sellPrice*$value->number);
            $sellOrder = new Order();
            $sellOrder->buy_trade = $value->trade_no;
            $sellOrder->trade_no =  $trade_no;
            $sellOrder->user_id = $value->user_id;
            //$sellOrder->new_value = $sellPrice;
            $sellOrder->number = $value->number;
            $sellOrder->code_all = $value->code_all;
            $sellOrder->sell_price = sprintf("%.5f",$sellPrice);
            $sellOrder->sell_total_price = $total_price;
            $sellOrder->type = 1;
            $sellOrder->floating= $request->floating??0;
            $sellOrder->status = 1;
            $sellOrder->status_type = 0;
            if($value->loseprofit==0){
                $sellOrder->remark = '预订亏损价格卖出';

            }else{
                $sellOrder->remark = '预订盈利价格卖出';
            }
            //金流记录
            $user = User::where("id",$value->user_id)->first();
            $moneyData = [
                "type"=>1,
                "user_id"=>$value->user_id,
                "title"=>"卖出外汇-" . $value->code_all,
                "trade_number"=>$trade_no,
                "pre_user_money"=>sprintf("%.5f",$user->balance),
                "user_money"=>sprintf("%.5f",$user->balance + $total_price),
                'pre_frozen_money'=>$user->frozen_balance,
                'after_frozen_money'=>$user->frozen_balance,
                "money"=>$total_price
            ];
            try {
                //开启默认数据库的事务
                DB::beginTransaction();
                $order = Order::where("trade_no",$value->trade_no)->first();
                $order->status_type=0;
                //修改订单持仓状态
                $order->save();
                $user->balance=sprintf("%.5f", $user->balance + $total_price);
                //修改用户金额
                $user->save();
            $moneyRecord = new MoneyRecord();
            $moneyRecord->create($moneyData);
            $sellOrder->save();
            //操作持仓
            $userPoosition = UserPoosition::where(["user_id"=>$user->id,"code_all"=>$value->code_all])->first();
            $userPoosition->number = $userPoosition->number-$value->number;
            $userPoosition->save();
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
    }
    public static function createNumber()
    {
        $yCode = array('A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J');

        $orderSn = $yCode[intval(date('Y')) - 2011] . strtoupper(dechex(date('m'))) . date('d') . substr(time(), -5) . substr(microtime(), 2, 5) . sprintf('%02d', rand(0, 99));

        return $orderSn;
    }
}
