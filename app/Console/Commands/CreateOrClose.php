<?php

namespace App\Console\Commands;

use App\Http\Resources\OrdersResource;
use App\Models\ForeignExchangeList;
use App\Models\UserPoosition;
use Illuminate\Console\Command;
use App\Models\User;
use App\Models\Configs;
use App\Models\Order;
use App\Models\MoneyRecord;
use Illuminate\Support\Facades\DB;

class CreateOrClose extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'createorclose';

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
        $this->createTest();

    }
    public function createTest()
    {
        $configs = Configs::get();
        $where = [
            'status'=>0
        ];
        //$countOrder =  Order::where($where)->count();
        //echo $countOrder;
        $createOrder = Order::where($where)->with(["exchangeList"])->get();
        //echo count($buyOrder);
        //获取配置
        $config = Configs::get();
        $configs = [];
        foreach($config as $k=>$v){
            $configs[$v->name]=$v->value;
        }
        for($i=0;$i<count($createOrder);$i++){

            //超过时间
            if($createOrder[$i]->cancel_time<time() && $createOrder[$i]->cancel_time!=0 && $createOrder[$i]->status==0){
                $createOrder[$i]->status=3;
                $createOrder[$i]->save();
                continue;
            }
            $market = $createOrder[$i]->exchangeList;
            $toPriceList=[];
            if(!$this->isPerform($createOrder[$i],$configs))
                continue;
            //不是直接盘
            if($market->type!='Forex1'){
                $indirect = substr($market->FS,0,3)."USD";
                $toPriceList = ForeignExchangeList::where("FS",$indirect)->first();
                if(!$toPriceList)
                   continue;
            }
            $query = (object)array();
            $query->type = $createOrder[$i]->type;
            $query->create_price = $createOrder[$i]->create_price;
            $query->trouble = $createOrder[$i]->trouble;
            //总价
            $total_price =  getPrice($query,$market,$configs,$toPriceList);
            //手续费
            $fees = $configs['fees'];
            $user = User::where('id',$createOrder[$i]->user_id)->first();
            if($user->balance<($total_price)){
                continue;
            }
            if($order = $this->createAction($market,$fees,$total_price,$user,$createOrder[$i])) {
                echo '建仓成功';
            }
            else{
                echo '建仓失败';
            }
        }
    }


    /**
     * @desc 判断订单是否执行
     */
    public function isPerform($orders,$configs)
    {
        $P = $orders->type=="buy"?$orders->exchangeList->S1:$orders->exchangeList->B1;
        $status = false;
        switch($orders->create_type){
            case 4:
            case 1:
                if($P<($orders->create_price+$orders->deviation/$configs['hand']))
                    $status = true;
                break;
            case 2:
                if($P>($orders->create_price-$orders->deviation/$configs['hand']))
                break;
            case 3:
                if($P>($orders->create_price-$orders->deviation/$configs['hand']))
                    $status = true;
                break;
        }
        return $status;
    }
    public function createAction($market,$fees,$total_price,$user,$query)
    {
        try {
            //开启默认数据库的事务
            DB::beginTransaction();
            $order = $query;
            //$order ->new_value = $nowPrice;
            $order ->create_price = $query->type_detail==0?$query->type=='buy'?$market->S1:$market->B1:$query->create_price;
            $order ->create_total_price = sprintf("%.5f",$total_price+$fees);
            $order ->fees = sprintf("%.5f",$fees);
            $order ->status = 1;
                $moneyData = [
                    'type'=>0,
                    'user_id'=>$user->id,
                    'title'=>TRADTYPE[$query->create_type],
                    'trade_no'=>$query->trade_no,
                    'pre_last_balance'=>$user->last_balance,
                    'last_balance'=>$user->last_balance,
                    'pre_balance'=>$user->balance,
                    'pre_advance'=>$user->advance,
                    'balance'=>sprintf("%.5f",$user->balance-$total_price-$fees),
                    'advance'=>sprintf("%.5f",$user->advance+$total_price),
                    'fees' =>sprintf("%.5f",$fees),
                    'money'=>sprintf("%.5f",$total_price+$fees),
                ];
                $moneyRecord = new MoneyRecord();
                $moneyRecord->create($moneyData);
            $user->balance=sprintf("%.5f",$user->balance-$total_price-$fees);
            $user->advance = sprintf("%.5f",$user->advance+$total_price);
            $user->save();


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
}
