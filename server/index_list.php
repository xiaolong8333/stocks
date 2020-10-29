<?php

namespace server;
require_once('./Database.php');
class index_list
{

    public $db;
	public $timer;
    public $status = [
        'success'=>['code'=>200,'message'=>'连接成功'],
        'error1'=>['code'=>501,'message'=>'连接失败'],
        'error2'=>['code'=>401,'message'=>'token错误'],
        'error3'=>['code'=>503,'message'=>'参数错误'],
        ];
    public function __construct()
    {
        header("Content-Type: text/html;charset=utf-8");
        //创建websocket服务器对象，监听0.0.0.0:9501端口
        $ws_server = new \swoole_websocket_server('0.0.0.0', 9501);

        //设置server运行时的各项参数
		/*

        $ws_server->set(array(
        'heartbeat_check_interval' => 10,
        'heartbeat_idle_time' => 15,
        //'daemonize' => true, //是否作为守护进程
        )); */
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
			$user->field = $user->field??'id';
			$user->sortd = $user->sortd??'asc';
            $result = $db->__call('user_token', [$user->token]);
/*			$this->timer[$frame->fd.'tokenTest'] = \Swoole\Timer::tick(5000, function () use ($ws,$frame, $user,$db) {
				$result = $db->__call('user_token', [$user->token]);
				if(!$result){
						\Swoole\Timer::clear($this->timer[$frame->fd.'tokenTest']);
						if(isset($this->timer[$frame->fd.'get_one_for_list']) && $user->api_name = 'get_one_for_list'){
						\Swoole\Timer::clear($this->timer[$frame->fd.'get_one_for_list']);
						}
						if(isset($this->timer[$frame->fd.'userorderlist']) && $user->api_name = 'userorderlist'){
						\Swoole\Timer::clear($this->timer[$frame->fd.'userorderlist']);
						}
						if(isset($this->timer[$frame->fd.'getuserfor']) && $user->api_name = 'getuserfor'){
						\Swoole\Timer::clear($this->timer[$frame->fd.'getuserfor']);
						}
						if(isset($this->timer[$frame->fd.'user_info']) && $user->api_name = 'user_info'){
						\Swoole\Timer::clear($this->timer[$frame->fd.'user_info']);
						}
				$ws->push($frame->fd,json_encode($this->status['error2'],JSON_UNESCAPED_UNICODE));
				}
					});*/
            if (!$result) {
                $ws->push($frame->fd,json_encode($this->status['error2'],JSON_UNESCAPED_UNICODE));
            }
            else {
                switch ($user->api_name) {
                    case  'getuserfor':
                        $data = $this->getUserForList($db, $result[0]['id']);
                        break;
                    case 'userorderlist':
                        $data = $this->getUserOrderList($db, $result[0]['id'],$user->field,$user->sortd);
                        break;
                    case 'get_one_for_list':
                        $data = $this->getOneForlist($db, $user->id);
                        $data=empty($data)?[]:$data[0];
                        break;
					case 'user_info':
                        $data = $this->getUserInfo($db, $result[0]['id']);
                        $data=empty($data)?[]:$data[0];
                        break;
                    default:
					$ws->push($request->fd, json_encode($this->status['error3'],JSON_UNESCAPED_UNICODE));
                }
				$data = $data??[];
                $this->pushMessage($ws, $frame->fd, $data,$user->api_name);
				if(isset($this->timer[$frame->fd.'get_one_for_list']) && $user->api_name = 'get_one_for_list'){
					\Swoole\Timer::clear($this->timer[$frame->fd.'get_one_for_list']);
				}
				if($user->api_name=='get_one_for_list'){
					$this->timer[$frame->fd.'get_one_for_list'] = \Swoole\Timer::tick(1000, function () use ($ws, $frame, $user,$result,$db) {
					$data = $this->getOneForlist($db, $user->id);
					$data=empty($data)?[]:$data[0];
					$this->pushMessage($ws, $frame->fd,$data,'get_one_for_list');
					});
				}

				if(isset($this->timer[$frame->fd.'userorderlist']) && $user->api_name = 'userorderlist'){
					\Swoole\Timer::clear($this->timer[$frame->fd.'userorderlist']);
				}
				if($user->api_name=='userorderlist'){
					$this->timer[$frame->fd.'userorderlist'] = \Swoole\Timer::tick(1000, function () use ($ws, $frame, $user,$result,$db) {
					$data = $this->getUserOrderList($db, $result[0]['id'],$user->field,$user->sortd);
					$this->pushMessage($ws, $frame->fd,$data,'userorderlist');
					});
				}
				if(isset($this->timer[$frame->fd.'getuserfor']) && $user->api_name = 'getuserfor'){
					\Swoole\Timer::clear($this->timer[$frame->fd.'getuserfor']);
				}
				if($user->api_name=='getuserfor'){
					$this->timer[$frame->fd.'getuserfor'] = \Swoole\Timer::tick(1000, function () use ($ws, $frame, $user,$result,$db) {
					$data = $this->getUserForList($db, $result[0]['id']);
					$this->pushMessage($ws, $frame->fd,$data,'getuserfor');
					});
				}
				if(isset($this->timer[$frame->fd.'user_info']) && $user->api_name = 'user_info'){
					\Swoole\Timer::clear($this->timer[$frame->fd.'user_info']);
				}
				if($user->api_name=='user_info'){
					$this->timer[$frame->fd.'user_info'] = \Swoole\Timer::tick(1000, function () use ($ws, $frame, $user,$result,$db) {
					$data = $this->getUserInfo($db, $result[0]['id']);
					$data=empty($data)?[]:$data[0];
					$this->pushMessage($ws, $frame->fd,$data,'user_info');
					});
				}

            }
        });

        //监听WebSocket连接关闭事件
        $ws_server->on('close', function ($ws, $fd) {
            echo "client-{$fd} is closed\n";
        });

        $ws_server->start();
    }

    public function getUserForList($db,$uid)
    {
        return  $db->__call('user_for_list',[$uid]);
    }
	public function getUserInfo($db,$uid)
    {
        return  $db->__call('user_info',[$uid]);
    }

    public function getUserOrderList($db,$uid,$field,$sortd)
    {
        return $db->__call('user_order_list',[$uid,$field,$sortd]);
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



