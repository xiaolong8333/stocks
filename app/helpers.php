<?php

if (!function_exists('success')) {
    /**
     * @param array $data
     * @param string $msg
     * @param int $code
     *
     * @return array
     */
    function success($data = [], $msg = 'success', $code = SUCCESS)
    {
echo 'asdads';
    }
}
if (!function_exists('request_post')) {
    /**
     * 模拟post进行url请求
     * @param string $url
     * @param string $param
     */
    function request_post($url = '', $param = '') {
        if (empty($url) || empty($param)) {
            return false;
        }

        $postUrl = $url;
        $curlPost = $param;
        $ch = curl_init();//初始化curl
        curl_setopt($ch, CURLOPT_URL,$postUrl);//抓取指定网页
        curl_setopt($ch, CURLOPT_HEADER, 0);//设置header
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);//要求结果为字符串且输出到屏幕上
        curl_setopt($ch, CURLOPT_POST, 1);//post提交方式
        curl_setopt($ch, CURLOPT_POSTFIELDS, $curlPost);
        $data = curl_exec($ch);//运行curl
        curl_close($ch);

        return $data;
    }
}

if (!function_exists('request_get')) {
    function request_get($url = '')
    {
        $ch = curl_init();//初始化cURL
        curl_setopt($ch, CURLOPT_URL, $url);//抓取指定网页
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);//要求结果为字符串并输出到屏幕上
        curl_setopt($ch, CURLOPT_HEADER, 0);//设置header
        $output = curl_exec($ch);//执行并获得HTML内容
        curl_close($ch);//释放cURL句柄

        return $output;
    }
}

if (!function_exists('request_get_aliyun')) {
    function request_get_aliyun($symbols="",$host = "",$path="",$method="",$appcode="")
    {
        $host = "http://alirm-gbfsb.konpn.com";
        $path = "/query/comrms";
        $method = "GET";
        $appcode = "b03ff507efed446899e55c5bc615c682";
        $headers = array();
        array_push($headers, "Authorization:APPCODE " . $appcode);
        $querys = "symbols=".$symbols;
        $bodys = "";
        $url = $host . $path . "?" . $querys;

        $curl = curl_init();
        curl_setopt($curl, CURLOPT_CUSTOMREQUEST, $method);
        curl_setopt($curl, CURLOPT_URL, $url);
        curl_setopt($curl, CURLOPT_HTTPHEADER, $headers);
        curl_setopt($curl, CURLOPT_FAILONERROR, false);
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($curl, CURLOPT_HEADER, 0);
        if (1 == strpos("$".$host, "https://"))
        {
            curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false);
            curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, false);
        }
        return curl_exec($curl);
    }
}

if (!function_exists('yc_phone')) {
    function yc_phone($str)
    {
        $resstr = substr_replace($str, '****', 3, 4);
        return $resstr;
    }
}


