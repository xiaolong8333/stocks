<?php

namespace server;
require_once('./Database.php');
class index_list
{

    public $db;
    public $status = [
        'success'=>['code'=>200,'message'=>'连接成功'],
        'error1'=>['code'=>501,'message'=>'连接失败'],
        'error2'=>['code'=>502,'message'=>'token错误'],
        'error3'=>['code'=>503,'message'=>'参数错误'],
        ];
    public function __construct()
    {
        header("Content-Type: text/html;charset=utf-8");
        global $db;
        //创建websocket服务器对象，监听0.0.0.0:9501端口
        $ws_server = new \swoole_websocket_server('0.0.0.0', 9501);

        //设置server运行时的各项参数

        $ws_server->set(array(
        'heartbeat_check_interval' => 5,
        'heartbeat_idle_time' => 10,
        //'daemonize' => true, //是否作为守护进程
        ));
        //监听WebSocket连接打开事件
        $ws_server->on('open', function ($ws, $request) {

        //file_put_contents( __DIR__ .'/log.txt' , $request->fd);
            $ws->push($request->fd, json_encode($this->status['success'],JSON_UNESCAPED_UNICODE));
        });
        //监听WebSocket消息事件
        $ws_server->on('message', function ($ws, $frame) {
            $db = Database::getInstance();
            //var_dump($frame);
            $user = json_decode($frame->data);
            $result = $db->__call('user_token', [$user->token]);
            if (!$result) {
                $this->pushMessage($ws, $frame->fd, $this->status['error2']);
            }
            else {
                switch ($user->api_name) {
                    case  'getuserfor':
                        $data = $this->getUserForList($db, $result[0]['id'], $user->begin, $user->limit);
                        break;
                    case 'userorderlist':
                        $data = $this->getUserOrderList($db, $result[0]['id'], $user->begin, $user->limit);
                        break;
                    case 'get_one_for_list':
                        $data = $this->getOneForlist($db, $user->id);
                        $data=empty($data)?[]:$data[0];
                        break;
                    default:
                }
                $this->pushMessage($ws, $frame->fd, $data,$user->api_name);
/*             \Swoole\Timer::tick(1000, function () use ($ws, $frame, $user,$result,$db) {
                switch ($user->api_name) {
                    case  'getuserfor':
                        $data = $this->getUserForList($db, $result[0]['id'], $user->begin, $user->limit);
                        break;
                    case 'userorderlist':
                        $data = $this->getUserOrderList($db, $result[0]['id'], $user->begin, $user->limit);
                        break;
                    case 'get_one_for_list':
                        $data = $this->getOneForlist($db, $user->id);
                        $data=empty($data)?[]:$data[0];
                        break;
                    default:
                        $data = $this->status['error3'];
                }
                $this->pushMessage($ws, $frame->fd,$data,$user->api_name);
                });*/
            }
        });

        //监听WebSocket连接关闭事件
        $ws_server->on('close', function ($ws, $fd) {
            echo "client-{$fd} is closed\n";
        });

        $ws_server->start();
    }

    public function getUserForList($db,$uid,$begin,$limit)
    {
        return  $db->__call('user_for_list',[$uid,$begin,$limit]);
    }

    public function getUserOrderList($db,$uid,$begin,$limit)
    {
        return $db->__call('user_order_list',[$uid,$begin,$limit]);
    }

    public function getOneForlist($db,$id)
    {
        return $db->__call('get_one_for_list',[$id]);
    }
    //消息推送
    public function pushMessage($ws,$fd,$result,$api_name='')
    {
        $result= ['code'=>200,'message'=>'success','api_name'=>$api_name,'data'=>$result];
        $ws->push($fd,json_encode($result,JSON_UNESCAPED_UNICODE));
    }

}
$model = new index_list();



