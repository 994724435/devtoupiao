<?php
namespace Home\Controller;
use Think\Controller;
header('content-type:text/html;charset=utf-8');
class IndexController extends CommonController {

   //主页
	public function index(){
		$article =M('product');
		$intro= $article->where(array('id'=>$_GET['id']))->select();
		$this->assign('intro',$intro[0]);
        $this->assign('id',$_GET['id']);
		$this->display();
	}


	public function isadd($type,$times){
	    if($type == 1){
	        if($times > 9){
	            return 0;
            }else{
	            return 1;
            }
        }elseif ($type == 2){
            if($times > 5){
                return 0;
            }else{
                return 1;
            }
        }elseif ($type == 3){
            if($times > 5){
                return 0;
            }else{
                return 1;
            }
        }
    }

	// 1 实物类 2壁报类 3多媒体类
    public function result()
    {
        $product = M('product');
        $order = M("orderlog");
        $state = $_GET['state'];
        $intro = $product->where(array('id' => $_GET['id']))->select();
        $orderlog = $order->where(array('userid' => session('uid'), 'productid' => $_GET['id']))->select();
        $type = $intro[0]['price'];
        $title = "投票结果";
        if ($orderlog[0]) {
            $title = "该展览品您已过投票";
        } else {

            $alllei = $order->where(array('userid' => session('uid'), 'state' => $state))->select();
            $out = count($alllei);

            // 是否添加
            if ($this->isadd($type, $out)) {
                $num = $intro[0]['salenum'] + 1;
                $product->where(array('id' => $_GET['id']))->save(array('salenum' => $num));
                $logdata['userid'] = session('uid');
                $logdata['productid'] = $_GET['id'];
                $logdata['bianhao'] = $intro[0]['cont'];
                $logdata['productname'] = $intro[0]['name'];
                $logdata['producttype'] = $intro[0]['price'];
                $logdata['addtime'] = time();
                $logdata['addymd'] = date("Y-m-d H:i:s", time());
                $logdata['state'] = $state;
                $order->add($logdata);
            }
        }

        $ordercurl = $order->where(array('userid' => session('uid'), 'state' => $state))->select();
        $curltime = count($ordercurl);
        $times = $this->changeJiang($state) . "您已经投出" . $curltime . "个作品";

        if ($type == 1) {
            $msg = "最少投5票";
            if ($curltime > 5) {
                $msg = "最多投10票";
            }
        } elseif ($type == 2) {
            $msg = "最少投3票";
            if ($curltime > 3) {
                $msg = "最多投6票";
            }
        } else {
            $msg = "最少投3票";
            if ($curltime > 3) {
                $msg = "最多投6票";
            }
        }

        $this->assign('times', $times);

        $this->assign('msg', $msg);

        $this->assign('intro', $intro[0]);
        $this->assign('title', $title);
        $this->assign('id', $_GET['id']);
        $this->display();
    }

    private function changeJiang($state){
        if($state ==1){
            return "创新奖";
        }elseif ($state==2){
            return "实用奖";
        }
    }

	private function getlists($url)
	{
		$ch = curl_init();
		curl_setopt($ch, CURLOPT_POST, 1);
		curl_setopt($ch, CURLOPT_HEADER, 0);
		curl_setopt($ch, CURLOPT_URL, $url);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
		$result = curl_exec($ch);
		curl_close($ch);
		return json_decode($result, true);
	}

	private function curlget($url){
		$ch = curl_init();
		curl_setopt($ch, CURLOPT_URL,$url);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
		curl_setopt($ch, CURLOPT_HEADER, 0);
//		执行并获取HTML文档内容
		$output = curl_exec($ch);
		//释放curl句柄
		curl_close($ch);
		return json_decode($output, true);
	}
}