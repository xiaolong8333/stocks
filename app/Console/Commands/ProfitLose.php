<?php

namespace App\Console\Commands;

use App\Models\ForeignExchangeList;
use Illuminate\Console\Command;
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
            ->selectRaw('orders.*,foreign_exchange_lists.B1,foreign_exchange_lists.S1,foreign_exchange_lists.type as mtype')
            ->leftJoin('foreign_exchange_lists', 'orders.FS', '=', 'foreign_exchange_lists.FS')
            ->whereRaw("IF(orders.type='buy',foreign_exchange_lists.B1>stop_profit,foreign_exchange_lists.S1<stop_profit)
                || IF(orders.type='buy',foreign_exchange_lists.B1<stop_loss,foreign_exchange_lists.S1>stop_loss)")
            ->get();

        $config = Configs::get();
        $configs = [];
        foreach($config as $k=>$v){
            $configs[$v->name]=$v->value;
        }
        $orders = Order::with('exchangeList')
            ->where(['status'=>1])
            ->get()
            ->map(function($item)use ($configs) {
                $toPriceList = [];
                //不是直接盘
                if ($item->exchangeList->type != 'Forex1') {
                    $indirect = substr($item->exchangeList->FS, 0, 3) . "USD";
                    $toPriceList = ForeignExchangeList::where("FS", $indirect)->first();
                    if (!$toPriceList)
                        return false;
                }
                //盈亏
                $item->newProfit = getProfit($item, $item->exchangeList, $configs, $toPriceList);
                $item->save();
                return $item;
            });
        $this->closeAction($orders);
    }

    public function closeAction($orders)
    {
        //获取配置
        $config = DB::table('configs')->get();
        $configs = [];
        foreach($config as $k=>$v){
            $configs[$v->name]=$v->value;
        }
        foreach($orders as $key=>$value){
            if($value->status!=1)
                continue;
            $toPriceList=[];
            //不是直接盘
            if($value->mtype!='Forex1'){
                $indirect = substr($value->FS,0,3)."USD";
                $toPriceList = ForeignExchangeList::where("FS",$indirect)->first();
                if(!$toPriceList)
                    continue;
            }
            $market=(object)array();
            $market->type = $value->mtype;
            $market->FS = $value->FS;
            $market->B1 = $value->B1;
            $market->S1 = $value->S1;
            //盈亏
            $profit =  getProfit($value,$market,$configs,$toPriceList);
            if(!$order = $this->closeAction1($profit,$value,$market,$toPriceList))
                continue;
        }
    }
    public function closeAction1($profit,$order,$market,$toPriceList)
    {
        $user = User::where('id',$order->user_id)->first();
        try {
            //开启默认数据库的事务
            DB::beginTransaction();
            $updateOrder = Order::where('id',$order->id)->first();
            $updateOrder ->close_price = $order->type=='buy'?$market->B1:$market->S1;
            $updateOrder ->close_total_price = sprintf("%.5f",$order->create_total_price+$profit+$order->fees);
            $updateOrder ->status = 2;
            $updateOrder->profit = $profit;
            if(!empty($toPriceList))
                $updateOrder->toprice = $toPriceList->S1;
            $moneyData = [
                'type'=>0,
                'user_id'=>$user->id,
                'title'=>TRADTYPE[$order->create_type].'平仓',
                'trade_no'=>$order->trade_no,
                'pre_last_balance'=>$user->last_balance,
                'last_balance'=>sprintf("%.5f",$user->last_balance+$profit),
                'pre_balance'=>$user->balance,
                'pre_advance'=>$user->advance,
                'balance'=>sprintf("%.5f",$user->balance+$order->create_total_price+$profit),
                'advance'=>sprintf("%.5f",$user->advance-$order->create_total_price),
                'fees' =>sprintf("%.5f",$order->fees),
                'money'=>sprintf("%.5f",$order->create_total_price+$profit),
            ];
            User::where('id', $user->id)->update(
                [
                    'last_balance'=>sprintf("%.5f",$user->last_balance+$profit),
                    'advance'=> sprintf("%.5f",$user->advance-$order->create_total_price),
                    'balance' => sprintf("%.5f",$user->balance+$order->create_total_price+$profit),
                ]
            );
            $moneyRecord = new MoneyRecord();
            $moneyRecord->create($moneyData);
            $updateOrder->save();
            if (true) {
                //一起提交
                DB::commit();
                return true;
            } else {
                //一起回滚
                DB::rollback();
                return false;
            }
        } catch (\Exception $exception) {
            return false;
        }
    }
}
