<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Models\ForeignExchangeList;

class UpdateForeignExchange extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'updateforeignexchange';

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
        if($this->isWeekData())
            return false;
        if($count = ForeignExchangeList::count())
        for($i=0;$i<=$count;$i+=10){
            $foreignExchangeList = ForeignExchangeList::select(['FS'])->offset($i)->limit(10)->get()->toArray();
            $symbols = $this->assembly($foreignExchangeList);
            $request_result = request_get_aliyun($symbols);
            $request_result = json_decode($request_result,true);
            foreach($request_result['Obj'] as $key=>$value){
                $query = ForeignExchangeList::where('FS', $value['FS'])->first();
                $query->P = $value['P'];
                $query->N = $value['N'];
                $query->H = $value['H'];
                $query->L = $value['L'];
                $query->S = $value['S'];
                $query->FS = $value['FS'];
                $query->V = $value['V'];
                $query->NV = $value['NV'];
                $query->B1 = $value['B1'];
                $query->S1 = $value['S1'];
                $query->updated_at = date("Y-m-d H:i:s",$value['Tick']);
                $query->save();
            }
        }
        return true;
    }

    /**
     * @param $data
     * @return string
     */
    public function assembly($data){
        $returnData = "";
        foreach($data as $key=>$value){
            $returnData.=$value['FS'].",";
        }
        return  trim($returnData,',');
    }

    /**
     * @return bool
     * @desc  检测是否为周末
     */
    public function isWeekData()
    {
        $time = time();
        $checkDayStr = date('Y-m-d ',time());
        $timeBegin1 = strtotime($checkDayStr."09:00".":00");
        $timeEnd1 = strtotime($checkDayStr."16:00".":00");
        //if (date('w', strtotime($time)) == 0 || !($time >= $timeBegin1 && $time <= $timeEnd1))
        if (date('w', strtotime($time)) == 0)
            return true;
        return false;
    }
}
