<?php

namespace App\Console\Commands;

use App\Models\UserPoosition;
use Illuminate\Console\Command;
use App\Models\User;
use App\Models\Configs;
use App\Models\Order;
use App\Models\MoneyRecord;
use Illuminate\Support\Facades\DB;

class SellAndBuy extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'sellandbuy';

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
        $this->buyTest();
        $this->sellTest();
    }

    public function sellTest()
    {
        $rate = Configs::where("name","sellrate")->first()->value;
        $where = [
            'type'=>3,
            'status_type'=>1,
            'status'=>0
        ];
        //$countOrder =  Order::where($where)->count();
        //echo $countOrder;
        $sellOrder = Order::where($where)->with(["user","exchangeList"])->get()->toArray();
        //echo count($buyOrder);
        for($i=0;$i<count($sellOrder);$i++){
            $sellPrice = $sellOrder[$i]['exchange_list']['rate']*(1-$rate);
            if(substr($sellOrder[$i]['code_all'],3,3)!="USD")
                $sellPrice = sprintf("%.5f",1/$sellPrice);

            if(($sellOrder[$i]['sell_price']-$sellOrder[$i]['floating'])>$sellPrice){
                echo "价格不{$sellOrder[$i]['id']}合适";
                continue;
            }
            /*            //涨幅太大继续卖
            if(($sellOrder[$i]['sell_price']+$sellOrder[$i]['floating'])<$sellPrice){
                echo "价格不{$sellOrder[$i]['id']}合适";
                continue;
            }
            */
            $total_price = $sellPrice*$sellOrder[$i]['number'];
            $moneyData = [
                'type'=>3,
                'user_id'=>$sellOrder[$i]['user_id'],
                'title'=>'委托卖出-'.$sellOrder[$i]['code_all'],
                'trade_number'=>$sellOrder[$i]['trade_no'],
                'pre_user_money'=>$sellOrder[$i]['user']['balance'],
                'user_money'=> sprintf("%.5f",$sellOrder[$i]['user']['balance']+$total_price),
                'pre_frozen_money'=>$sellOrder[$i]['user']['frozen_balance'],
                'after_frozen_money'=>$sellOrder[$i]['user']['frozen_balance'],
                'frozen_money'=>$sellOrder[$i]['user']['frozen_balance'],
                'money'=> sprintf("%.5f",$total_price)
            ];
            $userUpdate = [
                'balance' => sprintf("%.5f",$sellOrder[$i]['user']['balance']+$total_price),
            ];

            try {
                //开启默认数据库的事务
                DB::beginTransaction();
                //操作持仓
                $userPoosition = UserPoosition::where(["user_id"=>$sellOrder[$i]['user_id'],"code_all"=>$sellOrder[$i]['code_all']])->first();
                $userPoosition->number = $userPoosition->number-$sellOrder[$i]['number'];
                $userPoosition->save();
                Order::where('id', $sellOrder[$i]['id'])->update([
                    'status_type'=>1,
                    'status'=>1,
                ]);
                User::where('id',$sellOrder[$i]['user_id'])->update($userUpdate);
                $moneyRecord = new MoneyRecord();
                $moneyRecord->create($moneyData);
                if (true) {
                    //一起提交
                    DB::commit();
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
    public function buyTest()
    {
        $rate = Configs::where("name","fees")->first()->value;
        $where = [
            'type'=>2,
            'status_type'=>0,
            'status'=>0
        ];
        //$countOrder =  Order::where($where)->count();
        //echo $countOrder;
        $buyOrder = Order::where($where)->with(["user","exchangeList"])->get()->toArray();
        //echo count($buyOrder);


        for($i=0;$i<count($buyOrder);$i++){

            $sellPrice = $buyOrder[$i]['exchange_list']['rate'];
        if(substr($buyOrder[$i]['code_all'],3,3)!="USD")
            $sellPrice = sprintf("%.5f",1/$sellPrice);

            if(($buyOrder[$i]['buy_price']-$buyOrder[$i]['floating'])>$sellPrice){
                echo "价格不{$buyOrder[$i]['id']}合适";
                continue;
            }

            if(($buyOrder[$i]['buy_price']+$buyOrder[$i]['floating'])<$sellPrice){
                echo "价格不{$buyOrder[$i]['id']}合适";
                continue;
            }

            $total_price = $buyOrder[$i]['exchange_list']['rate']*$buyOrder[$i]['number'];
            $rate = sprintf("%.5f",$rate*$buyOrder[$i]['exchange_list']['rate']);
            $total_price += $rate;
            if($total_price>($buyOrder[$i]['user']['balance']+$buyOrder[$i]['user']['frozen_balance'])){
                echo "资金不足";
                continue;
            }
            if($total_price>$buyOrder[$i]['user']['frozen_balance']){
                //$afterUserMoney = sprintf("%.5f",$buyOrder[$i]['user']['balance']-($total_price-$buyOrder[$i]['user']['frozen_balance']));
                $afterUserMoney = sprintf("%.5f",$buyOrder[$i]['user']['balance']-$total_price);
                $moneyData = [
                    'type'=>2,
                    'user_id'=>$buyOrder[$i]['user_id'],
                    'title'=>'买入外汇-'.$buyOrder[$i]['code_all'],
                    'trade_number'=>$buyOrder[$i]['trade_no'],
                    'pre_user_money'=>$buyOrder[$i]['user']['balance'],
                    'user_money'=>$afterUserMoney,
                    'pre_frozen_money'=>$buyOrder[$i]['user']['frozen_balance'],
                    'after_frozen_money'=>0,
                    'frozen_money'=>$buyOrder[$i]['user']['frozen_balance'],
                    'money'=> sprintf("%.5f",($total_price-$buyOrder[$i]['user']['frozen_balance']))
                ];
                $userUpdate = [
                    'frozen_balance'=>0,
                    'balance' => $afterUserMoney,
                ];
            }
            else{
                $afterUserMoney = sprintf("%.5f",$buyOrder[$i]['user']['balance']+($buyOrder[$i]['user']['frozen_balance']-$total_price));
                $moneyData = [
                    'type'=>2,
                    'user_id'=>$buyOrder[$i]['user_id'],
                    'title'=>'买入外汇-'.$buyOrder[$i]['code_all'],
                    'trade_number'=>$buyOrder[$i]['trade_no'],
                    'pre_user_money'=>$buyOrder[$i]['user']['balance'],
                    'user_money'=>$afterUserMoney,
                    'pre_frozen_money'=>$buyOrder[$i]['user']['frozen_balance'],
                    'after_frozen_money'=>sprintf("%.5f",$buyOrder[$i]['user']['frozen_balance']-$total_price),
                    'frozen_money'=>$buyOrder[$i]['user']['frozen_balance'],
                    'money'=> sprintf("%.5f",($buyOrder[$i]['user']['frozen_balance']-$total_price))
                ];
                $userUpdate = [
                    'frozen_balance'=>sprintf("%.5f",$buyOrder[$i]['user']['frozen_balance']-$total_price),
                    'balance' => $afterUserMoney,
                ];
            }
            try {
                //开启默认数据库的事务
                DB::beginTransaction();
                $userPoosition = UserPoosition::where(["user_id"=>$buyOrder[$i]['user']['id'],"code_all"=>$buyOrder[$i]['code_all']])->first();
                if($userPoosition){
                    $userPoosition->number += $buyOrder[$i]['number'];
                    $userPoosition->save();
                }else{
                    $userPoosition = new UserPoosition();
                    $userPoosition->code_all = $buyOrder[$i]['code_all'];
                    $userPoosition->user_id = $buyOrder[$i]['user']['id'];
                    $userPoosition->number = $buyOrder[$i]['number'];
                    $userPoosition->save();
                }
                Order::where('id', $buyOrder[$i]['id'])->update([
                    'status_type'=>1,
                    'status'=>1,
                ]);
                User::where('id',$buyOrder[$i]['user_id'])->update($userUpdate);
                $moneyRecord = new MoneyRecord();
                $moneyRecord->create($moneyData);
                if (true) {
                    //一起提交
                    DB::commit();
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
